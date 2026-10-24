#!/usr/bin/env python3
"""Enumerate the measurement records of the qutrit-qubit link read twice at its
qutrit end, sort them by the two signed exchanges, apply the weight law, and
print the closed form of the two-point function with its inverse.

Slots: read 1 qutrit (8), read 1 qubit (3), read 2 qutrit (8), read 2 qubit (3),
the real traceless bases of the two ends. A product record is a product of
elements at two distinct slots; the exchange of the two reads maps slot 1<->3
and 2<->4. The records are the exchange eigenbasis: sums and differences of each
product with its image, and the exchange-fixed products.

The sign clause: two reads of one qudit that commute only up to a sign are a
further record, with their order as the sign. At the qubit the Weyl phase is -1
and the commutator of two letters is a single letter. The commutator at the
qubit of each read is formed, the exchange carries one to the other, and the
records of the clause are the combinations on which the exchange reads the order
sign -1: the three differences. The script builds them as matrices and checks
this.

The two exchanges. X, the exchange of reads, acts on a record that carries two
letters of one type by exchanging those two reads. Y, the exchange of the two
read links, acts on qudits: it leaves the shared qutrit in place and swaps the two read
qubits, and it acts on a record it moves (changing the qudits the record
occupies). A record survives an exchange that returns it times its own sign
(+1 for a product, the order sign -1 for a record of the sign clause).

Weight law: a record that survives an exchange acting at an end of dimension d
carries the factor d in k, and the factors multiply. X acts where the reads are
taken (the qutrit); Y acts at the qudits it moves (the read qubits). The weight
is sqrt(k).

Standard library only.  python3 enumerate_records.py [--csv records.csv]
"""
import itertools
import sys
from collections import Counter
from decimal import Decimal, getcontext

DIMS = {1: 3, 2: 2, 3: 3, 4: 2}            # end dimension at each slot
END = {1: "qutrit", 2: "qubit", 3: "qutrit", 4: "qubit"}
SWAP = {1: 3, 3: 1, 2: 4, 4: 2}


def traceless_basis(d):
    """Real traceless basis: symmetric and antisymmetric off-diagonal, diag(1..1,-k)."""
    zero = lambda: [[0] * d for _ in range(d)]
    out = []
    pairs = [(i, j) for i in range(d) for j in range(i + 1, d)]
    for i, j in pairs:
        m = zero(); m[i][j] = m[j][i] = 1; out.append(m)
    for i, j in pairs:
        m = zero(); m[i][j] = 1; m[j][i] = -1; out.append(m)
    for k in range(1, d):
        m = zero()
        for a in range(k):
            m[a][a] = 1
        m[k][k] = -k
        out.append(m)
    return out


def mul(a, b):
    n = len(a)
    return [[sum(a[i][k] * b[k][j] for k in range(n)) for j in range(n)] for i in range(n)]


def pair(a, b):
    return sum(a[i][j] * b[i][j] for i in range(len(a)) for j in range(len(a)))


BASIS = {s: traceless_basis(DIMS[s]) for s in DIMS}


def exch(rec):
    """The exchange of the reads on a formal record {((slot, letter), ...): coeff}."""
    return {tuple(sorted((SWAP[s], i) for s, i in key)): c for key, c in rec.items()}


def parity(rec):
    image = exch(rec)
    if image == rec:
        return +1
    if image == {k: -c for k, c in rec.items()}:
        return -1
    return 0


def products():
    return [{((a, i), (b, j)): 1}
            for a, b in itertools.combinations(DIMS, 2)
            for i in range(len(BASIS[a])) for j in range(len(BASIS[b]))]


def commutator_at(slot, mu, nu):
    """[s_mu, s_nu] at a qubit slot, expanded in the basis there (a single letter)."""
    b = BASIS[slot]
    c = [[x - y for x, y in zip(r1, r2)] for r1, r2 in zip(mul(b[mu], b[nu]), mul(b[nu], b[mu]))]
    terms = {}
    for k, e in enumerate(b):
        num, den = pair(e, c), pair(e, e)
        if num:
            assert num % den == 0
            terms[((slot, k),)] = num // den
    assert len(terms) == 1, "the commutator of two qubit letters is a single letter"
    return terms


def clause_records():
    """The records of the sign clause: of the sum and difference of the commutators at the two
    read qubits, the combination on which the exchange reads the order sign -1. Each is returned
    with the same combination built from its two letters in the other order (its reads exchanged)."""
    out = []
    for mu, nu in itertools.combinations(range(3), 2):
        c1, c2 = commutator_at(2, mu, nu), commutator_at(4, mu, nu)
        assert exch(c1) == c2
        candidates = [{**c1, **c2}, {**c1, **{k: -v for k, v in c2.items()}}]
        kept = [r for r in candidates if parity(r) == -1]
        assert len(kept) == 1 and parity(candidates[0]) == +1
        r1, r2 = commutator_at(2, nu, mu), commutator_at(4, nu, mu)
        out.append((kept[0], {**r1, **{k: -v for k, v in r2.items()}}))
    return out


def records():
    ops = products()
    key = lambda r: next(iter(r))
    seen, out = set(), []
    for o in ops:
        k = key(o)
        if k in seen:
            continue
        img = exch(o)
        seen.add(k); seen.add(key(img))
        same = len({END[s] for s, _ in k}) == 1
        if img == o:
            out.append(("exchange-fixed", "same" if same else "mixed", o))
        else:
            out.append(("odd", "same" if same else "mixed", {**o, **{q: -c for q, c in img.items()}}))
            out.append(("even", "same" if same else "mixed", {**o, **img}))
    out += [("commutator", "bracket", r) for r, _ in clause_records()]
    return len(ops), out


QUDIT = {1: "Q", 3: "Q", 2: "q1", 4: "q2"}   # the shared qutrit is one qudit
LINK_SWAP = {"Q": "Q", "q1": "q2", "q2": "q1"}  # the exchange of the read links on qudits
REORDERED = {}


def occupies(term):
    return {QUDIT[s] for s, _ in term}


def signs(construction, kinds, rec):
    """X and Y at a record, from the two exchanges and survival up to the record's own sign."""
    own = -1 if construction == "commutator" else +1
    target = {k: own * v for k, v in rec.items()}
    if construction == "commutator":
        x_image = REORDERED[tuple(sorted(rec.items()))]
    elif kinds == "same":
        x_image = exch(rec)                # its two reads exchanged
    else:
        x_image = None                     # its two letters are not of one type
    first = next(iter(rec))
    moved = {LINK_SWAP[q] for q in occupies(first)} != occupies(first)
    y_image = exch(rec) if moved else None
    X = -1 if x_image == target else +1
    Y = -1 if y_image == target else +1
    if construction != "commutator":       # agreement with the pairing description, Eq. (S3)
        p = parity(rec)
        assert (X, Y) == ((-p, +1) if kinds == "same" else (+1, -p))
    return X, Y


def main():
    for r, reordered in clause_records():
        REORDERED[tuple(sorted(r.items()))] = reordered
    n_ops, recs = records()
    assert all(parity(r) != 0 for _, _, r in recs), "every record is an exchange eigenvector"
    rows, coeff, sectors = [], Counter(), Counter()
    for construction, kinds, rec in recs:
        X, Y = signs(construction, kinds, rec)
        k = (3 if X == -1 else 1) * (2 if Y == -1 else 1)
        ends = {(1, 1): "none", (-1, 1): "qutrit", (1, -1): "qubit", (-1, -1): "both"}[(X, Y)]
        sectors[(X, Y)] += 1
        coeff[k] += 1
        rows.append((construction, kinds, X, Y, ends, k))
    N = 24 * 36 * 36
    print(f"products {n_ops}, records {len(recs)}")
    print("sectors (X,Y): count", dict(sectors))
    print(f"closed form: ({coeff[1]} + {coeff[2]} sqrt2 + {coeff[3]} sqrt3 + {coeff[6]} sqrt6) / {N}")
    getcontext().prec = 60
    r2, r3, r6 = Decimal(2).sqrt(), Decimal(3).sqrt(), Decimal(6).sqrt()
    value = (coeff[1] + coeff[2] * r2 + coeff[3] * r3 + coeff[6] * r6) / N
    print("value  ", value)
    print("inverse", 1 / value)
    if "--csv" in sys.argv:
        path = sys.argv[sys.argv.index("--csv") + 1]
        order = {"odd": 0, "even": 1, "exchange-fixed": 2, "commutator": 3}
        rows.sort(key=lambda r: (order[r[0]], r[1]))
        with open(path, "w") as f:
            f.write("record,construction,slot_kinds,X,Y,ends_passed,k,weight\n")
            for n, (c, kd, X, Y, e, k) in enumerate(rows, 1):
                w = "1" if k == 1 else f"sqrt({k})"
                f.write(f"R{n:03d},{c},{kd},{X:+d},{Y:+d},{e},{k},{w}\n")


if __name__ == "__main__":
    main()
