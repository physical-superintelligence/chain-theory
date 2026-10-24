#!/usr/bin/env bash
# Build the whole compendium, then cut one PDF per Part from it (page ranges read from the labels
# atlaspart:<file> at the start of each Part). Requires TeX Live (tikz, framed) and qpdf.
set -euo pipefail
cd "$(dirname "$0")"
for i in 1 2 3; do pdflatex -interaction=nonstopmode -halt-on-error compendium.tex > build.log 2>&1 || { grep -n '^!' -A3 build.log | head -20; exit 1; }; done
mkdir -p ../pdf
cp compendium.pdf ../pdf/compendium.pdf
python3 - <<'PY'
import re, subprocess
aux = open('compendium.aux').read()
pages = [(m.group(1), int(m.group(2))) for m in re.finditer(r'\\newlabel\{atlaspart:([^}]*)\}\{\{[^}]*\}\{(\d+)\}', aux)]
total = int(subprocess.run(['qpdf', '--show-npages', 'compendium.pdf'], capture_output=True, text=True).stdout)
# physical page of the logical page 1 (front matter has its own page numbers)
for k, (name, first) in enumerate(pages[:-1]):
    if name in ('end', 'instrumentsend', 'particle-websend'): continue
    last = pages[k + 1][1] - 1
    subprocess.run(['qpdf', 'compendium.pdf', '--pages', 'compendium.pdf', f'{first}-{last}', '--', f'../pdf/{name}.pdf'], check=True)
print('cut', sum(1 for n, _ in pages[:-1] if n not in ('end', 'instrumentsend', 'particle-websend')), 'PDFs from', total, 'pages')
PY
