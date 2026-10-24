#!/usr/bin/env python3
"""Draw the Standard Model chart of particle webs from compendium/figures/particles.json.

Writes an SVG chart (for the README and the record page) and, with --pdf, a PDF of the same chart for
the compendium. The layouts come from the data file and carry no record content. That a web is the named
particle is a conjecture in every case, and the chart's title says so. The grades are given in the chapter's
captions, not in the chart.

Usage: particle_chart.py PARTICLES.json OUT.svg [--pdf OUT.pdf] [--png OUT.png]
"""
import json, sys, html

data = json.load(open(sys.argv[1]))
out_svg = sys.argv[2]
C = data['colors']
P = {p['label']: p for p in data['particles']}
esc = html.escape


def larger_first(genre):
    """'(2,3)' -> '(3,2)': the data spells a genre smaller end first, as Part I does; the figures and the
    chapter write it larger end first, as the abstract does."""
    a, b = genre.strip('()').split(',')
    return f'({max(int(a), int(b))},{min(int(a), int(b))})'

CELL_W, CELL_H, LEFT, TOP = 250, 232, 150, 130
rows = ['up-type quarks', 'down-type quarks', 'charged leptons', 'neutrinos']
grid = {  # (row, column) -> particle label; columns 0-2 are the generations, 3 the gauge bosons, 4 the scalar
    (0, 0): 'up quark', (0, 1): 'charm quark', (0, 2): 'top quark',
    (1, 0): 'down quark', (1, 1): 'strange quark', (1, 2): 'bottom quark',
    (2, 0): 'electron', (2, 1): 'muon', (2, 2): 'tau',
    (3, 0): 'neutrino, depth web N0 (the cross-core body)', (3, 1): 'neutrino, depth web N1 (the cross-core body)',
    (3, 2): 'neutrino, depth web N2 (the cross-core body)',
    (0, 3): 'gluon', (1, 3): 'photon', (2, 3): 'Z boson', (3, 3): 'W boson', (0, 4): 'Higgs'}
NAMES = {'neutrino, depth web N0 (the cross-core body)': 'neutrino, depth one',
         'neutrino, depth web N1 (the cross-core body)': 'neutrino, depth two',
         'neutrino, depth web N2 (the cross-core body)': 'neutrino, depth three'}
cols = ['I', 'II', 'III', 'gauge bosons', 'scalar']
W = LEFT + 5 * CELL_W + 30
H = TOP + 4 * CELL_H + 124

o = [f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" width="{W}" height="{H}" font-family="Helvetica, Arial, sans-serif">',
     f'<rect width="{W}" height="{H}" fill="#ffffff"/>',
     f'<text x="{LEFT}" y="44" font-size="26" font-weight="bold" fill="#111">Conjectured webs for the Standard Model particles</text>',
     f'<text x="{LEFT}" y="72" font-size="14" fill="#444">Each web is a network the Chain Theory compendium (release 0.1) constructs: each site a qudit, each line a maximally entangled pair.</text>',
     f'<text x="{LEFT}" y="92" font-size="14" fill="#444">That a web is the named particle is a conjecture.</text>']
for j, c in enumerate(cols):
    o.append(f'<text x="{LEFT + j * CELL_W + CELL_W / 2}" y="{TOP - 8}" font-size="15" font-weight="bold" fill="#333" text-anchor="middle">{c}</text>')
for i, r in enumerate(rows):
    y = TOP + i * CELL_H + CELL_H / 2
    o.append(f'<text x="{LEFT - 14}" y="{y}" font-size="14" font-weight="bold" fill="#333" text-anchor="end">{r}</text>')


def web(p, x0, y0, w, h, node_r=7.0):
    xs = [s['x'] for s in p['sites']]; ys = [s['y'] for s in p['sites']]
    minx, maxx, miny, maxy = min(xs), max(xs), min(ys), max(ys)
    sw, sh = max(maxx - minx, 1), max(maxy - miny, 1)
    k = min((w - 2 * node_r - 8) / sw, (h - 2 * node_r - 8) / sh, 0.42)
    cx, cy = x0 + w / 2, y0 + h / 2
    pos = {s['id']: (cx + (s['x'] - (minx + maxx) / 2) * k, cy + (s['y'] - (miny + maxy) / 2) * k) for s in p['sites']}
    g = []
    for l in p['links']:
        (ax, ay), (bx, by) = pos[l['a']], pos[l['b']]
        if l['read']:
            g.append(f'<line x1="{ax:.1f}" y1="{ay:.1f}" x2="{bx:.1f}" y2="{by:.1f}" stroke="#c0392b" stroke-width="4.5" stroke-linecap="round"/>')
        else:
            g.append(f'<line x1="{ax:.1f}" y1="{ay:.1f}" x2="{bx:.1f}" y2="{by:.1f}" stroke="#8a8a8a" stroke-width="1.6"/>')
    for s in p['sites']:
        x, y = pos[s['id']]
        ring = {'core': 'stroke="#111" stroke-width="2.6"', 'read': 'stroke="#333" stroke-width="1.2" stroke-dasharray="3 2"',
                'adapter': 'stroke="#333" stroke-width="1.0"'}[s['role']]
        rr = node_r * (1.15 if s['d'] == 4 else 1.0 if s['d'] == 3 else 0.85)
        g.append(f'<circle cx="{x:.1f}" cy="{y:.1f}" r="{rr:.1f}" fill="{C[str(s["d"])]}" {ring}/>')
    return g


for (i, j), label in grid.items():
    p = P[label]
    x0, y0 = LEFT + j * CELL_W, TOP + i * CELL_H
    o.append(f'<rect x="{x0 + 6}" y="{y0 + 6}" width="{CELL_W - 12}" height="{CELL_H - 12}" rx="10" fill="#fafafa" stroke="#d6d6d6"/>')
    sym = p['symbol']
    if sym[-1] in '₁₂₃':
        sym_svg = esc(sym[:-1]) + f'<tspan font-size="14" dy="5">{"₁₂₃".index(sym[-1]) + 1}</tspan>'
    else:
        sym_svg = esc(sym)
    o.append(f'<text x="{x0 + 20}" y="{y0 + 37}" font-size="24" font-weight="bold" fill="#111">{sym_svg}</text>')
    o.append(f'<text x="{x0 + 58}" y="{y0 + 34}" font-size="13" fill="#444">{esc(NAMES.get(label, p["name"]))}</text>')
    n_s, n_l = len(p['sites']), len(p['links'])
    o.append(f'<text x="{x0 + CELL_W - 20}" y="{y0 + CELL_H - 18}" font-size="11" fill="#666" text-anchor="end">{n_s} sites, {n_l} {"link" if n_l == 1 else "links"}</text>')
    o += web(p, x0 + 16, y0 + 46, CELL_W - 32, CELL_H - 74)

# legend
ly = TOP + 4 * CELL_H + 34
items = [('circle', '2', 'qubit (d = 2)'), ('circle', '3', 'qutrit (d = 3)'), ('circle', '4', 'ququart (d = 4)')]
x = LEFT
for _, d, t in items:
    o.append(f'<circle cx="{x + 8}" cy="{ly}" r="8" fill="{C[d]}" stroke="#333" stroke-width="1"/>')
    o.append(f'<text x="{x + 24}" y="{ly + 5}" font-size="13" fill="#333">{t}</text>'); x += 150
o.append(f'<circle cx="{x + 8}" cy="{ly}" r="8" fill="#ffffff" stroke="#111" stroke-width="2.6"/><text x="{x + 24}" y="{ly + 5}" font-size="13" fill="#333">core site</text>'); x += 120
o.append(f'<circle cx="{x + 8}" cy="{ly}" r="8" fill="#ffffff" stroke="#333" stroke-width="1.2" stroke-dasharray="3 2"/><text x="{x + 24}" y="{ly + 5}" font-size="13" fill="#333">read site</text>'); x += 120
o.append(f'<line x1="{x}" y1="{ly}" x2="{x + 26}" y2="{ly}" stroke="#c0392b" stroke-width="4.5" stroke-linecap="round"/><text x="{x + 34}" y="{ly + 5}" font-size="13" fill="#333">read line: the W is read along one line, the Z along two</text>')
notes = ['The W and the Z are one web; what distinguishes them is the read. The layouts are for legibility and carry no content.',
         'Each web\'s standing line, naming the boxes it rests on, is in the compendium\'s chapter of genres and webs.']
for k, t in enumerate(notes):
    o.append(f'<text x="{LEFT}" y="{ly + 38 + 20 * k}" font-size="13" fill="#555">{esc(t)}</text>')
o.append('</svg>')
open(out_svg, 'w').write('\n'.join(o) + '\n')
bare = [x for x in o if not (x.startswith(f'<text x="{LEFT}" y="44"') or x.startswith(f'<text x="{LEFT}" y="72"') or x.startswith(f'<text x="{LEFT}" y="92"')
        or (x.startswith(f'<text x="{LEFT}" y="') and any(n[:30] in x for n in notes)))]
BH = H - TOP - 80
bare[0] = f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 {TOP - 30} {W} {BH}" width="{W}" height="{BH}" font-family="Helvetica, Arial, sans-serif">'
if '--pdf' in sys.argv or '--png' in sys.argv:
    import cairosvg
    if '--pdf' in sys.argv:
        cairosvg.svg2pdf(bytestring=('\n'.join(bare) + '\n').encode(), write_to=sys.argv[sys.argv.index('--pdf') + 1])
    if '--png' in sys.argv:
        cairosvg.svg2png(url=out_svg, write_to=sys.argv[sys.argv.index('--png') + 1], output_width=W)
print('chart', out_svg, W, 'x', H)


def card_svg(p, path):
    """One particle's web at full size, with site names and link genres, for the compendium's chapter."""
    xs = [s['x'] for s in p['sites']]; ys = [s['y'] for s in p['sites']]
    m = 48
    vb = [min(xs) - m, min(ys) - m, max(max(xs) - min(xs), 120) + 2 * m, max(max(ys) - min(ys), 60) + 2 * m + 14]
    o = [f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="{vb[0]:.1f} {vb[1]:.1f} {vb[2]:.1f} {vb[3]:.1f}" width="{vb[2]:.0f}" height="{vb[3]:.0f}" font-family="Helvetica, Arial, sans-serif">',
         f'<rect x="{vb[0]:.1f}" y="{vb[1]:.1f}" width="{vb[2]:.1f}" height="{vb[3]:.1f}" fill="#ffffff"/>']
    pos = {s['id']: (s['x'], s['y']) for s in p['sites']}
    for l in p['links']:
        (ax, ay), (bx, by) = pos[l['a']], pos[l['b']]
        if l['read']:
            o.append(f'<line x1="{ax}" y1="{ay}" x2="{bx}" y2="{by}" stroke="#c0392b" stroke-width="5" stroke-linecap="round"/>')
        else:
            o.append(f'<line x1="{ax}" y1="{ay}" x2="{bx}" y2="{by}" stroke="#8a8a8a" stroke-width="1.6"/>')
        o.append(f'<text x="{(ax + bx) / 2:.1f}" y="{(ay + by) / 2 - 5:.1f}" font-size="13" fill="#555" text-anchor="middle">{larger_first(l["genre"])}</text>')
    for s in p['sites']:
        x, y = s['x'], s['y']
        ring = {'core': 'stroke="#111" stroke-width="3.5"', 'read': 'stroke="#222" stroke-width="1.5" stroke-dasharray="4 3"',
                'adapter': 'stroke="#222" stroke-width="1.5"'}[s['role']]
        o.append(f'<circle cx="{x}" cy="{y}" r="18" fill="{C[str(s["d"])]}" {ring}/>')
        o.append(f'<text x="{x}" y="{y + 5}" font-size="14" font-weight="bold" fill="#fff" text-anchor="middle">{esc(s["id"])}</text>')
        o.append(f'<text x="{x}" y="{y + 33}" font-size="12" fill="#333" text-anchor="middle">d={s["d"]} {s["role"]}</text>')
    o.append('</svg>')
    open(path, 'w').write('\n'.join(o) + '\n')


if '--cards' in sys.argv:
    import os, re, cairosvg
    d = sys.argv[sys.argv.index('--cards') + 1]
    os.makedirs(d, exist_ok=True)
    for p in data['particles']:
        slug = re.sub(r'[^a-z0-9]+', '-', p['label'].lower()).strip('-')
        card_svg(p, f'{d}/{slug}.svg')
        cairosvg.svg2pdf(url=f'{d}/{slug}.svg', write_to=f'{d}/{slug}.pdf')
    print('cards', len(data['particles']), 'in', d)


if '--tex' in sys.argv:
    import re, collections
    out_tex = sys.argv[sys.argv.index('--tex') + 1]
    order = ['electron', 'muon', 'tau', 'neutrino, depth web N0 (the cross-core body)', 'neutrino, depth web N1 (the cross-core body)',
             'neutrino, depth web N2 (the cross-core body)', 'up quark', 'charm quark', 'top quark', 'down quark', 'strange quark',
             'bottom quark', 'photon', 'gluon', 'W boson', 'Z boson', 'Higgs', 'proton, the star core of record', 'hydrogen, the joined seed EP2S1']
    TEXNAME = {'neutrino, depth web N0 (the cross-core body)': 'The neutrino at depth one',
               'neutrino, depth web N1 (the cross-core body)': 'The neutrino at depth two',
               'neutrino, depth web N2 (the cross-core body)': 'The neutrino at depth three',
               'proton, the star core of record': 'The proton', 'hydrogen, the joined seed EP2S1': 'Hydrogen'}
    TEXSYM = {'μ': r'$\mu$', 'τ': r'$\tau$', 'γ': r'$\gamma$', 'ν₁': r'$\nu_1$', 'ν₂': r'$\nu_2$', 'ν₃': r'$\nu_3$', 'H atom': r'H'}
    tx = lambda s: s.replace('&', r'\&').replace('_', r'\_').replace('#', r'\#').replace('%', r'\%')
    import os
    G = json.load(open(os.path.join(os.path.dirname(sys.argv[1]), 'genres.json')))['genres']
    gname = lambda g: f'({g["genre"][0]},{g["genre"][1]})'
    sectors = [f'{gname(g)} {"the " if g["sector"].endswith("interaction") else "the " if g["sector"] in ("Yukawa sector", "Higgs") else ""}{g["sector"]}' for g in G]
    readable = [gname(g) for g in G if g['readable']]
    TITLE = 'The six genres and the conjectured webs of the Standard Model particles'
    GRADE = {'theorem': 'theorem', 'conditional': 'conditional theorem', 'open': 'open result'}
    L = [r'\clearpage', r'\begingroup\renewcommand{\topfraction}{0.95}\renewcommand{\bottomfraction}{0.95}\renewcommand{\textfraction}{0.02}\renewcommand{\floatpagefraction}{0.75}\setcounter{topnumber}{3}\setcounter{bottomnumber}{3}\setcounter{totalnumber}{4}', r'\label{atlaspart:particle-webs}', rf'\section*{{{TITLE}}}\label{{app:particle-webs}}',
         rf'\addcontentsline{{toc}}{{section}}{{{TITLE}}}',
         rf'Every link of a web has a genre, the pair of its end dimensions, written here with the larger end first. Figure~\ref{{fig:genre-matrix}} draws the six genres in two layers, kept apart on the page. The upper part of each cell is derived, from the axiom, the definitions and the read cap of the alpha Letter, which it obtains from one reading of the axiom’s last clause: one read fixes a link exactly when $d_1 d_2 \le 6$, so {readable[0]} and {readable[1]} are readable and the other four genres are dark, and a one-dimensional end is excluded at the axiom (theorem~\ref{{box:I-1-axiom-and-the-six-definitions:9}}). The band at the foot of each cell is conjectured: it names the sector of physics each genre is taken to correspond to, as in the abstract, {", ".join(sectors[:-1])} and {sectors[-1]}, and where the genre appears in the particle webs. These names are conjectures and not results of the compendium. Of the two readable genres only (3,2) has an acting central charge. The readout of its link is the exact number of the alpha Letter, checked in Lean; that the number is $\alpha(0)$ is the Letter’s conjecture.',
         '',
         r'\begin{figure}[p]\centering', r'\includegraphics[width=\linewidth]{../figures/genre-matrix.pdf}',
         r'\caption{The six genres of the link, with the larger end first. The upper part of each cell is derived; the genres inside the dashed outline are readable, since one read fixes the link when $d_1 d_2 \le 6$, and the others are dark. The band at the foot of each cell is conjectured. The records are those of a link read twice; at (3,3), (4,3) and (4,4) the compendium gives two spellings of the closure sector, and both counts are shown.}\label{fig:genre-matrix}',
         r'\end{figure}',
         '',
         r'The rest of this chapter draws the web the compendium records for each Standard Model particle. That a web is the particle it is named for is a conjecture in every case. What the compendium derives is about the web, and each caption gives the standing of those results and the weakest grade among them. Every site is a qudit and every line a maximally entangled pair; the colour of a site gives its dimension (two blue, three green, four orange), a heavy ring marks a core site and a dashed ring a read site. Laid out as the Standard Model chart in Figure~\ref{fig:particle-chart}, the webs add one hub assembly at each generation. The electron is the core triangle of three qutrits with one hub assembly at a corner, and the muon and the tau carry two and three. The up quark is a qutrit with its docks, and the charm and the top add one and two hubs; the down, the strange and the bottom carry one, two and three; and the three neutrino depth webs carry one, two and three.',
         '',
         r'The W and the Z are one web, and what distinguishes them is the read: the W is read along one line and the Z along two, drawn heavy. The neutron is not drawn: its recorded body has a hub at degree five and a qutrit at degree four, beyond the valence law (at most $d$ pairs at a qudit of dimension $d$). Each identification of a web with a particle is graded where its result stands, and each figure names that standing. The layouts are for legibility and carry no content.',
         r'\begin{figure}[p]\centering', r'\includegraphics[width=\linewidth]{../figures/standard-model-webs.pdf}',
         r'\caption{Conjectured webs for the Standard Model particles, laid out by generation. Each generation adds one hub assembly; the W and the Z are one web, read along one line and along two.}\label{fig:particle-chart}',
         r'\end{figure}', r'\clearpage']
    for label in order:
        p = P[label]
        slug = re.sub(r'[^a-z0-9]+', '-', label.lower()).strip('-')
        g = collections.Counter(larger_first(l['genre']) for l in p['links'])
        genres = ', '.join(f'{k} {v}' for k, v in sorted(g.items()))
        name = TEXNAME.get(label, p['name'][0].upper() + p['name'][1:])
        sym = TEXSYM.get(p['symbol'], p['symbol'])
        n_s, n_l = len(p['sites']), len(p['links'])
        L += [r'\begin{figure}[htbp]\centering', rf'\includegraphics[width=\linewidth,height=0.36\textheight,keepaspectratio]{{../figures/webs/{slug}.pdf}}',
              rf'\caption{{\textbf{{{tx(name)}}} ({sym}). The web \texttt{{{tx(p["web"])}}}: {n_s} sites and {n_l} {"link" if n_l == 1 else "links"}, at the genres {genres}. {tx(p["standing"])} Weakest grade: {GRADE[p["grade"]]}.}}',
              rf'\label{{fig:particle-{slug}}}', r'\end{figure}']
    L += [r'\clearpage', r'\endgroup', r'\label{atlaspart:particle-websend}']
    open(out_tex, 'w').write('% Generated by compendium/tools/particle_chart.py from compendium/figures/particles.json; do not edit by hand.\n' + '\n'.join(L) + '\n')
    print('chapter', out_tex)
