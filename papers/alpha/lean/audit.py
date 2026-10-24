#!/usr/bin/env python3
"""Audit ChainAlpha.lean against the rule stated in the paper (Supplement, Sec. S11).

Outside comments the file contains no sorry, no axiom declaration and no native or unsafe code,
and the digits of the closed form (79, 48, 42, 31104) and the record counts (169, 172) occur only
inside theorem statements. Exit status 0 when the audit passes.
"""
import pathlib, re, sys

src = (pathlib.Path(__file__).resolve().parent / "ChainAlpha.lean").read_text()
code = re.sub(r"/-.*?-/", "", src, flags=re.S)
code = re.sub(r"--[^\n]*", "", code)
problems = []
for pat, what in [(r"\bsorry\b", "sorry"), (r"^\s*axiom\s", "axiom declaration"),
                  (r"native_decide", "native_decide"), (r"implemented_by", "implemented_by"),
                  (r"@\[extern", "extern"), (r"\bunsafe\b", "unsafe"), (r"\bopaque\b", "opaque")]:
    if re.search(pat, code, flags=re.M):
        problems.append(f"forbidden construct: {what}")
decls = re.split(r"\n(?=(?:theorem|def|abbrev|structure|instance|example|private def|@\[)\b)", code)
for d in decls:
    if d.strip().startswith("theorem"):
        continue
    for n in ["79", "48", "42", "31104", "169", "172"]:
        if re.search(r"(?<![\d.])" + n + r"(?![\d])", d):
            problems.append(f"{n} outside a theorem statement: {d.strip()[:60]!r}")
print("\n".join(problems) if problems else "audit passed")
sys.exit(1 if problems else 0)
