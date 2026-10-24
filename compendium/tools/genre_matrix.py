#!/usr/bin/env python3
"""Draw the matrix of the six link genres from compendium/figures/genres.json.

Usage: genre_matrix.py GENRES.json OUT.svg [--pdf OUT.pdf] [--png OUT.png]

Each cell has two layers, kept apart on the page as in the data: the upper part is derived (from the axiom,
the definitions and the alpha Letter's read cap), and the amber band below it is conjectured (the sector each
genre is taken to correspond to, and the particles named in its webs). Amber is used for nothing else.

The SVG and the PNG carry the title and the footer. The PDF, for the compendium chapter, is cropped below the
title line and above the footer, and keeps the key, since the key says which layer is which.
"""
import json, sys, html, textwrap

data = json.load(open(sys.argv[1]))
out_svg = sys.argv[2]
esc = html.escape
DIMC = {2: '#3b7dd8', 3: '#2e9e5b', 4: '#e0882b'}
DNAME = {2: 'qubit', 3: 'qutrit', 4: 'ququart'}
CAP = '#4a5568'                       # the read cap, from a reading of the axiom: slate, not amber
AMBER = {'light': dict(bg='#fdf3d6', rule='#c99700', label='#8a6a00', sector='#3f3000', text='#5b4a20'),
         'dark': dict(bg='#3a3829', rule='#d9b44a', label='#f1c75b', sector='#fff1c9', text='#ddd3b8')}


def DD(fs):
    """d1 d2 with true subscripts, for a text of font size fs (absolute sizes, so every renderer agrees)."""
    sub, sh = round(0.7 * fs, 1), round(0.28 * fs, 1)
    return (f'd<tspan font-size="{sub}" dy="{sh}">1</tspan><tspan dy="-{sh}">d</tspan>'
            f'<tspan font-size="{sub}" dy="{sh}">2</tspan><tspan dy="-{sh}"> </tspan>')


CW, CH, GAP = 340, 356, 12
BAND = 216                            # where the conjectured band starts inside a cell
X_STRIP, STRIP_W = 150, 54
X0 = X_STRIP + STRIP_W + 18
Y0 = 252
W = X0 + 3 * CW + 2 * GAP + 40
H = Y0 + 3 * CH + 2 * GAP + 70
cell = {(g['genre'][0], g['genre'][1]): g for g in data['genres']}
cx = lambda c: X0 + (c - 2) * (CW + GAP)      # column: the smaller end dimension
cy = lambda r: Y0 + (r - 2) * (CH + GAP)      # row: the larger end dimension
wrap = textwrap.wrap

o = [f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" width="{W}" height="{H}" font-family="Helvetica, Arial, sans-serif">',
     f'<rect width="{W}" height="{H}" fill="#ffffff"/>',
     f'<text x="40" y="54" font-size="30" font-weight="bold" fill="#111">The six genres of the link, and their conjectured sectors</text>',
     f'<text x="40" y="86" font-size="16" fill="#333">A link is a maximally entangled pair of qudits, and its genre is the pair of its end dimensions, each two, three or four.</text>']

# the key: which layer is which
o.append(f'<rect x="40" y="106" width="22" height="16" rx="3" fill="#ffffff" stroke="#9aa3ad"/>')
o.append(f'<text x="72" y="119" font-size="15" fill="#222"><tspan font-weight="bold">Derived:</tspan> what follows from the axiom, the compendium\'s definitions and the read cap {DD(15)}≤ 6, which the alpha Letter obtains from one reading of the axiom\'s last clause.</text>')
o.append(f'<rect x="40" y="132" width="22" height="16" rx="3" fill="{AMBER["light"]["bg"]}" stroke="{AMBER["light"]["rule"]}" stroke-dasharray="4 2"/>')
o.append(f'<text x="72" y="145" font-size="15" fill="#222"><tspan font-weight="bold">Conjectured:</tspan> the sector of physics each genre is taken to correspond to, and the particles named in its webs.</text>')

# column and row headers
for d in (2, 3, 4):
    x = cx(d) + CW / 2
    o.append(f'<circle cx="{x - 52}" cy="{Y0 - 52}" r="9" fill="{DIMC[d]}"/>')
    o.append(f'<text x="{x - 36}" y="{Y0 - 47}" font-size="16" font-weight="bold" fill="#222">{DNAME[d]}, d = {d}</text>')
    y = cy(d) + CH / 2
    o.append(f'<circle cx="{40 + 9}" cy="{y - 18}" r="9" fill="{DIMC[d]}"/>')
    o.append(f'<text x="40" y="{y + 10}" font-size="16" font-weight="bold" fill="#222">{DNAME[d]}</text>')
    o.append(f'<text x="40" y="{y + 30}" font-size="15" fill="#444">d = {d}</text>')
o.append(f'<text x="{X0}" y="{Y0 - 76}" font-size="13" fill="#666">the smaller end →</text>')
o.append(f'<text x="40" y="{Y0 - 47}" font-size="13" fill="#666">the larger end ↓</text>')

# the excluded one-dimensional end
sy, sh = cy(2), 3 * CH + 2 * GAP
o.append(f'<rect x="{X_STRIP}" y="{sy}" width="{STRIP_W}" height="{sh}" rx="10" fill="#eeeeee" stroke="#cccccc"/>')
o.append(f'<text x="{X_STRIP + STRIP_W / 2}" y="{sy - 47}" font-size="16" font-weight="bold" fill="#888" text-anchor="middle">d = 1</text>')
o.append(f'<text transform="translate({X_STRIP + STRIP_W / 2 + 6},{sy + sh / 2}) rotate(-90)" font-size="15" fill="#777" text-anchor="middle">excluded at the axiom: a one-dimensional end is not entangled (theorem 2.9)</text>')


def pair_icon(x, y, d1, d2, dark):
    s = '#ffffff' if dark else '#333333'
    return [f'<line x1="{x}" y1="{y}" x2="{x + 54}" y2="{y}" stroke="{s}" stroke-width="2.5"/>',
            f'<circle cx="{x}" cy="{y}" r="{8 + 2 * (d1 - 2)}" fill="{DIMC[d1]}" stroke="{s}" stroke-width="1.5"/>',
            f'<circle cx="{x + 54}" cy="{y}" r="{8 + 2 * (d2 - 2)}" fill="{DIMC[d2]}" stroke="{s}" stroke-width="1.5"/>']


for (r, c), g in cell.items():
    x, y = cx(c), cy(r)
    dark = not g['readable']
    bg, fg, sub = ('#1f2733', '#ffffff', '#c9d1dc') if dark else ('#f2faf4', '#111111', '#3c4a40')
    edge, ew = ('#1f2733', 1) if dark else ('#2e9e5b', 2)
    A = AMBER['dark' if dark else 'light']
    o.append(f'<rect x="{x}" y="{y}" width="{CW}" height="{CH}" rx="14" fill="{bg}"/>')
    # the derived layer
    o.append(f'<text x="{x + 20}" y="{y + 40}" font-size="28" font-weight="bold" fill="{fg}">({r},{c})</text>')
    o += pair_icon(x + CW - 92, y + 30, r, c, dark)
    o.append(f'<text x="{x + 20}" y="{y + 62}" font-size="13" fill="{sub}">{DNAME[r]} – {DNAME[c]}</text>')
    status = 'readable: one read fixes it' if g['readable'] else 'dark: no single read fixes it'
    o.append(f'<text x="{x + 20}" y="{y + 92}" font-size="15" font-weight="bold" fill="{fg}">{DD(15)}= {r * c}  ·  {status}</text>')
    o.append(f'<text x="{x + 20}" y="{y + 114}" font-size="14" fill="{sub}">{"the central charge acts" if g["central_charge_acts"] else "no acting central charge"}</text>')
    rec = g['records']
    rec = f'{rec[0]} or {rec[1]}' if isinstance(rec, list) else rec
    o.append(f'<text x="{x + 20}" y="{y + 134}" font-size="14" fill="{sub}">{rec} records at two reads</text>')
    o.append(f'<text x="{x + 20}" y="{y + 154}" font-size="13" fill="{sub}">Part {g["part"]} of the compendium</text>')
    for k, line in enumerate(g['derived_extra']):
        o.append(f'<text x="{x + 20}" y="{y + 178 + 18 * k}" font-size="13.5" font-weight="bold" fill="{fg}">{esc(line)}</text>')
    # the conjectured layer: an amber band at the foot of the cell
    by = y + BAND
    o.append(f'<path d="M{x},{by} H{x + CW} V{y + CH - 14} Q{x + CW},{y + CH} {x + CW - 14},{y + CH} H{x + 14} Q{x},{y + CH} {x},{y + CH - 14} Z" fill="{A["bg"]}"/>')
    o.append(f'<line x1="{x}" y1="{by}" x2="{x + CW}" y2="{by}" stroke="{A["rule"]}" stroke-width="1.5" stroke-dasharray="6 4"/>')
    o.append(f'<text x="{x + 20}" y="{by + 22}" font-size="11.5" font-weight="bold" letter-spacing="1.6" fill="{A["label"]}">CONJECTURED</text>')
    o.append(f'<text x="{x + 20}" y="{by + 48}" font-size="22" font-weight="bold" font-style="italic" fill="{A["sector"]}">{esc(g["sector"][0].upper() + g["sector"][1:])}</text>')
    if g['conjectured_extra']:
        o.append(f'<text x="{x + 20}" y="{by + 68}" font-size="13.5" font-weight="bold" fill="{A["label"]}">{esc(g["conjectured_extra"])}</text>')
    for k, line in enumerate(wrap('In the webs: ' + g['appears'] + '.', 46)[:3]):
        o.append(f'<text x="{x + 20}" y="{by + 90 + 18 * k}" font-size="13" fill="{A["text"]}">{esc(line)}</text>')
    o.append(f'<rect x="{x}" y="{y}" width="{CW}" height="{CH}" rx="14" fill="none" stroke="{edge}" stroke-width="{ew}"/>')

# the read cap drawn around the readable genres: from a reading of the axiom, in slate
rx0, ry0 = cx(2) - 7, cy(2) - 7
o.append(f'<rect x="{rx0}" y="{ry0}" width="{CW + 14}" height="{2 * CH + GAP + 14}" rx="18" fill="none" stroke="{CAP}" stroke-width="3" stroke-dasharray="10 6"/>')
o.append(f'<text x="{cx(2) + 18}" y="{cy(2) - 15}" font-size="14" font-weight="bold" fill="{CAP}">the read cap, {DD(14)}≤ 6, from a reading of the axiom</text>')

# how to read it, in the empty upper triangle
tx, ty = cx(3) + 10, cy(2) + 26
notes = [('h', 'How to read this chart'),
         ('t', 'Each cell is one genre, written with the larger end first; the upper triangle would repeat the lower one.'),
         ('t', 'The upper part of each cell is derived. Light cells are readable: under the read cap, one read fixes the link. Dark cells are not: no single read fixes them.'),
         ('t', 'The amber band is conjectured. It names the sector of physics each genre is taken to correspond to, as in the compendium\'s abstract, and where the genre appears in the particle webs, whose identifications with particles are conjectures too.'),
         ('t', 'Of the two readable genres only (3,2) has an acting central charge. Its readout is the alpha Letter\'s exact number, checked in Lean; that the number is α(0) is the Letter\'s conjecture, and the measured digits of α(0) test it.')]
for kind, t in notes:
    if kind == 'h':
        o.append(f'<text x="{tx}" y="{ty}" font-size="17" font-weight="bold" fill="#222">{esc(t)}</text>'); ty += 28
    else:
        for line in wrap(t, 88):
            o.append(f'<text x="{tx}" y="{ty}" font-size="14" fill="#444">{esc(line)}</text>'); ty += 20
        ty += 8
o.append(f'<text x="40" y="{H - 28}" font-size="13" fill="#777">Chain Theory compendium, release 0.1. Records are those of a link read twice; where the compendium gives two spellings of the closure sector (Part X), both counts are shown.</text>')
o.append('</svg>')
open(out_svg, 'w').write('\n'.join(o) + '\n')

TOP, BOTTOM = 96, 52        # the title lines and the footer, cropped from the PDF; the key stays
if '--pdf' in sys.argv or '--png' in sys.argv:
    import cairosvg
    if '--pdf' in sys.argv:
        bare = '\n'.join(o).replace(f'viewBox="0 0 {W} {H}" width="{W}" height="{H}"',
                                    f'viewBox="0 {TOP} {W} {H - TOP - BOTTOM}" width="{W}" height="{H - TOP - BOTTOM}"', 1)
        cairosvg.svg2pdf(bytestring=bare.encode(), write_to=sys.argv[sys.argv.index('--pdf') + 1])
    if '--png' in sys.argv:
        cairosvg.svg2png(url=out_svg, write_to=sys.argv[sys.argv.index('--png') + 1], output_width=W)
print('matrix', out_svg, W, 'x', H)
