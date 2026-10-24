#!/bin/sh
# Build the Letter's Fig. 2, the 172 records as strand diagrams: an SVG drawn from the
# record construction of ../anc/enumerate_records.py, then a PDF for the Letter.
# Needs python3 and cairosvg (pip install cairosvg).
set -e
cd "$(dirname "$0")"
python3 ../anc/draw_records.py records_atlas.svg
cairosvg records_atlas.svg -o records_atlas.pdf
echo "wrote records_atlas.svg and records_atlas.pdf"
