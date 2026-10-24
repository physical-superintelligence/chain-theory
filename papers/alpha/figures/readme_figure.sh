#!/usr/bin/env bash
# Build the README copy of the Letter's Figure 3 from fig_comparison.tex: a PDF, then an SVG with a white
# background so that it reads on a dark page. Requires TeX Live (tikz) and poppler (pdftocairo).
set -euo pipefail
cd "$(dirname "$0")"
pdflatex -interaction=nonstopmode -halt-on-error readme_comparison.tex > /dev/null
pdftocairo -svg readme_comparison.pdf comparison.svg
python3 - <<'PY'
import re
s = open('comparison.svg').read()
m = re.search(r'<svg[^>]*>', s)
tag = m.group(0)
w, h = (float(v) for v in re.search(r'width="([\d.]+)(?:pt)?" height="([\d.]+)(?:pt)?"', tag).groups())
vb = re.search(r'viewBox="([^"]*)"', tag).group(1).split()
# display at two and a half times the TeX size (the drawing is vector; only the default size changes), on white
tag2 = re.sub(r'width="[^"]*" height="[^"]*"', f'width="{2.5 * w:.0f}" height="{2.5 * h:.0f}"', tag, count=1)
bg = f'<rect x="{vb[0]}" y="{vb[1]}" width="{vb[2]}" height="{vb[3]}" fill="#ffffff"/>'
s = s[:m.start()] + tag2 + '\n' + bg + s[m.end():]
open('comparison.svg', 'w').write(s)
PY
rm -f readme_comparison.aux readme_comparison.log readme_comparison.pdf
echo "comparison.svg"
