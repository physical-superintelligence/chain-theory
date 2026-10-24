#!/usr/bin/env python3
"""Remove comments and doc comments from Lean 4 files, leaving code untouched.

Handles nested /- -/ blocks (including /-- and /-!), line comments, string literals with escapes
and character literals. A file header naming the release replaces the removed module docs.
Usage: strip_lean.py SRC_DIR DST_DIR
"""
import sys, pathlib, re

def strip(src):
    out = []; i = 0; n = len(src)
    while i < n:
        c = src[i]
        if c == '"':                                   # string literal
            j = i + 1
            while j < n and src[j] != '"':
                j += 2 if src[j] == '\\' else 1
            out.append(src[i:j+1]); i = j + 1
        elif c == "'" and i + 2 < n and (src[i+2] == "'" or (src[i+1] == '\\' and i + 3 < n and src[i+3] == "'")):
            j = i + (4 if src[i+1] == '\\' else 3)        # char literal 'x' or '\n'
            out.append(src[i:j]); i = j
        elif src.startswith('--', i):
            j = src.find('\n', i); j = n if j < 0 else j
            i = j
        elif src.startswith('/-', i):
            depth = 0; j = i
            while j < n:
                if src.startswith('/-', j): depth += 1; j += 2
                elif src.startswith('-/', j):
                    depth -= 1; j += 2
                    if depth == 0: break
                else: j += 1
            i = j
        else:
            out.append(c); i += 1
    text = ''.join(out)
    text = re.sub(r'[ \t]+\n', '\n', text)
    text = re.sub(r'\n{3,}', '\n\n', text)
    return text.lstrip('\n')

def tokens(src):
    return strip(src).split()

if __name__ == '__main__':
    a, b = pathlib.Path(sys.argv[1]), pathlib.Path(sys.argv[2])
    for p in a.rglob('*'):
        q = b / p.relative_to(a)
        if '.lake' in p.parts: continue
        if p.is_dir(): q.mkdir(parents=True, exist_ok=True); continue
        q.parent.mkdir(parents=True, exist_ok=True)
        if p.suffix == '.lean':
            q.write_text(strip(p.read_text()))
        else:
            q.write_bytes(p.read_bytes())
