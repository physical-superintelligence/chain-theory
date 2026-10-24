#!/usr/bin/env python3
"""Draw the 172 measurement records of the qutrit-qubit link read twice as strand
diagrams, one cell each, for the Letter's Fig. 2.

The records, their letters and their weights are taken from enumerate_records.py
in this folder, so the figure is built from the same construction as the record
table. Each cell is the square of slots of the Letter's Fig. 1(b): the qutrit
copies Q1, Q2 above (three dots, the basis directions), the read qubits q1, q2
below (two dots). A record's two letters, elements of the real traceless basis,
are drawn in their slots:

  symmetric off-diagonal letter   a straight line joining two dots
  antisymmetric off-diagonal      a curved line joining two dots
  diagonal letter                 filled dots (+) and hollow dots (-)

A + or - between the rows marks a record that is the drawing plus or minus its
image under the exchange of the reads; a drawing with no sign is its own image.
The records of the sign clause carry an arc under the qubits; each qubit shows the
commutator of two qubit letters, a single letter, and the record is the commutator
at q1 minus the same at q2. Each cell's ground
gives the weight sqrt(k_r): white at 1, light and then mid gray at sqrt 2 and sqrt 3,
and dark gray at sqrt 6, so the figure reads in black and white. The slots stay white on every ground. Cells are sorted
by weight.

The drawings depend on the choice of basis; the counts and weights do not.

Standard library only.  python3 draw_records.py records_atlas.svg
"""
import math
import os
import sys
from collections import Counter

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import enumerate_records as er  # noqa: E402

POS = {1: "Q1", 2: "q1", 3: "Q2", 4: "q2"}           # slot -> place on the square
CENTER = {"Q1": (28, 18), "Q2": (72, 18), "q1": (28, 46), "q2": (72, 46)}
RADIUS = {"Q1": 13, "Q2": 13, "q1": 11, "q2": 11}
DOTS = {3: [(0, -6.5), (-6, 4), (6, 4)], 2: [(-4.5, 0), (4.5, 0)]}
PAIRS = {3: [(0, 1), (0, 2), (1, 2)], 2: [(0, 1)]}   # the order of er.traceless_basis
INK, FAINT, RIM = "#000000", "#8C8C8C", "#9A9A9A"
BORDER = {1: 1.0, 2: 1.0, 3: 1.0, 6: 1.0}           # one border width for every cell
GROUND = {1: "#FFFFFF", 2: "#E3E3E3", 3: "#BDBDBD", 6: "#8A8A8A"}  # cell ground by k_r, darkening with the weight
COLS, ROWS, CW, CH = 18, 10, 108, 72                # a 100 x 64 drawing per cell, offset by PAD
PAD = 4


def fmt(v):
    return ("%.1f" % v).rstrip("0").rstrip(".")


def letter_kind(d, idx):
    """The kind of basis element idx of er.traceless_basis(d)."""
    n = len(PAIRS[d])
    if idx < n:
        return "S", PAIRS[d][idx]
    if idx < 2 * n:
        return "A", PAIRS[d][idx - n]
    return "D%d" % (idx - 2 * n + 1), None


def draw_slot(out, ox, oy, slot, letter):
    cx, cy = CENTER[slot][0] + ox, CENTER[slot][1] + oy
    d = 3 if slot.startswith("Q") else 2
    out.append('<circle cx="%s" cy="%s" r="%s" fill="#FFFFFF" stroke="%s" stroke-width="1.2"/>'
               % (fmt(cx), fmt(cy), RADIUS[slot], RIM))
    dots = [(cx + dx, cy + dy) for dx, dy in DOTS[d]]
    big, hollow, kind = set(), set(), None
    if letter is not None:
        kind, pair = letter_kind(d, letter)
        if kind in ("S", "A"):
            (x1, y1), (x2, y2) = dots[pair[0]], dots[pair[1]]
            if kind == "S":
                out.append('<line x1="%s" y1="%s" x2="%s" y2="%s" stroke="%s" stroke-width="3" stroke-linecap="round"/>'
                           % (fmt(x1), fmt(y1), fmt(x2), fmt(y2), INK))
            else:
                mx, my = (x1 + x2) / 2, (y1 + y2) / 2
                if d == 2:
                    qx, qy = mx, my - 8
                else:
                    vx, vy = mx - cx, my - cy
                    n = math.hypot(vx, vy) or 1
                    qx, qy = mx + 7 * vx / n, my + 7 * vy / n
                out.append('<path d="M %s %s Q %s %s %s %s" fill="none" stroke="%s" stroke-width="3" stroke-linecap="round"/>'
                           % (fmt(x1), fmt(y1), fmt(qx), fmt(qy), fmt(x2), fmt(y2), INK))
            big = set(pair)
        elif kind == "D1":
            big, hollow = {0}, {1}
        elif kind == "D2":
            big, hollow = {0, 1}, {2}
    for i, (x, y) in enumerate(dots):
        if i in hollow:
            r = 4.0 if kind == "D2" else 3.4
            out.append('<circle cx="%s" cy="%s" r="%s" fill="#FFFFFF" stroke="%s" stroke-width="2"/>'
                       % (fmt(x), fmt(y), r, INK))
        elif i in big:
            out.append('<circle cx="%s" cy="%s" r="3.3" fill="%s"/>' % (fmt(x), fmt(y), INK))
        else:
            out.append('<circle cx="%s" cy="%s" r="1.9" fill="%s"/>' % (fmt(x), fmt(y), FAINT))


def draw_sign(out, ox, oy, s):
    x, y = 50 + ox, 32 + oy
    out.append('<line x1="%s" y1="%s" x2="%s" y2="%s" stroke="%s" stroke-width="2.6" stroke-linecap="round"/>'
               % (fmt(x - 5), fmt(y), fmt(x + 5), fmt(y), INK))
    if s > 0:
        out.append('<line x1="%s" y1="%s" x2="%s" y2="%s" stroke="%s" stroke-width="2.6" stroke-linecap="round"/>'
                   % (fmt(x), fmt(y - 5), fmt(x), fmt(y + 5), INK))


def cells():
    for r, reordered in er.clause_records():
        er.REORDERED[tuple(sorted(r.items()))] = reordered
    _, recs = er.records()
    out = []
    for construction, kinds, rec in recs:
        X, Y = er.signs(construction, kinds, rec)
        k = (3 if X == -1 else 1) * (2 if Y == -1 else 1)
        terms = list(rec.items())
        if construction == "commutator":
            ((s1, l1),), c1 = terms[0]
            ((s2, l2),), c2 = terms[1]
            out.append(dict(k=k, letters={POS[s1]: l1, POS[s2]: l2}, sign=-1 if c1 * c2 < 0 else 1,
                            clause=True, edge=None))
        else:
            ((sa, la), (sb, lb)), c0 = terms[0]
            sign = 0 if len(terms) == 1 else (1 if terms[1][1] * c0 > 0 else -1)
            out.append(dict(k=k, letters={POS[sa]: la, POS[sb]: lb}, sign=sign, clause=False,
                            edge=(POS[sa], POS[sb])))
    edge_rank = {("Q1", "Q2"): 0, ("q1", "q2"): 1, ("Q1", "q1"): 2, ("Q1", "q2"): 3, ("q1", "Q2"): 3}
    weight_rank = {1: 0, 2: 1, 3: 2, 6: 3}
    out.sort(key=lambda c: (weight_rank[c["k"]], edge_rank.get(c["edge"], 9)))
    return out


def main():
    cs = cells()
    signatures = {(tuple(sorted(c["letters"].items())), c["sign"], c["clause"]) for c in cs}
    assert len(cs) == 172 and len(signatures) == 172, "172 distinct records"
    assert Counter(c["k"] for c in cs) == {1: 79, 2: 48, 3: 42, 6: 3}, "the sectors of Table I"
    out = ['<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d">'
           % (COLS * CW, ROWS * CH, COLS * CW, ROWS * CH)]
    for n, c in enumerate(cs):
        bx, by = (n % COLS) * CW, (n // COLS) * CH
        w = BORDER[c["k"]]
        out.append('<rect x="%s" y="%s" width="%s" height="%s" rx="6" fill="%s" stroke="%s" stroke-width="%s"/>'
                   % (fmt(bx + 2 + w / 2), fmt(by + 2 + w / 2), fmt(CW - 4 - w), fmt(CH - 4 - w), GROUND[c["k"]], INK, fmt(w)))
        ox, oy = bx + PAD, by + PAD
        if c["clause"]:
            out.append('<path d="M %s %s Q %s %s %s %s" fill="none" stroke="%s" stroke-width="2.4"/>'
                       % (fmt(ox + 34), fmt(oy + 56), fmt(ox + 50), fmt(oy + 63), fmt(ox + 66), fmt(oy + 56), INK))
        for slot in ("Q1", "Q2", "q1", "q2"):
            draw_slot(out, ox, oy, slot, c["letters"].get(slot))
        if c["sign"]:
            draw_sign(out, ox, oy, c["sign"])
    out.append("</svg>")
    path = sys.argv[1] if len(sys.argv) > 1 else "records_atlas.svg"
    with open(path, "w") as f:
        f.write("\n".join(out) + "\n")
    print("172 records drawn:", dict(sorted(Counter(c["k"] for c in cs).items())), "->", path)


if __name__ == "__main__":
    main()
