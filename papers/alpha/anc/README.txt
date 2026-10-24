Ancillary files for "A Parameter-Free Candidate for the Fine-Structure Constant from Entangled Qudits"

records.csv
  The 172 measurement records of the qutrit-qubit link read twice at its qutrit end
  (Supplemental Material, Sec. S7). Columns:
    record          identifier R001-R172
    construction    odd / even combination under the exchange of the two reads,
                    exchange-fixed, or commutator (a commutator record: the
                    commutator of two qubit letters at the first read's qubit minus
                    the same commutator at the second read's, odd under the exchange)
    slot_kinds      mixed (one slot at each end), same (both slots at one end),
                    bracket (a commutator)
    X, Y            eigenvalues under the two signed exchanges
    ends_passed     the ends at which the survived exchanges act (X, the exchange
                    of reads, at the qutrit; Y, the exchange of the read links, at
                    the read qubits it moves)
    k               squared weight, k = 3^[X=-1] * 2^[Y=-1]
    weight          sqrt(k)
  Summing the weights and dividing by N = 24*36*36 = 31104 gives
  (79 + 48 sqrt2 + 42 sqrt3 + 3 sqrt6) / 31104.

enumerate_records.py
  Builds the records from the slot construction (slots 8,3,8,3) and the three
  commutator records from the commutator matrices, checks that every
  record is an eigenvector of the exchange of the reads, computes the two
  exchanges (of reads and of links) with survival up to each record's own sign,
  applies the weight law and prints the closed form and its inverse
  to 60 digits. With --csv it writes this table. Python 3 standard library only:
    python3 enumerate_records.py [--csv records.csv]

draw_records.py
  Draws the Letter's Fig. 2: the 172 records, one drawing each, on the square of
  slots of Fig. 1(b), each cell's shade darkening with its weight. The records, letters and
  weights are imported from enumerate_records.py, so the figure is built from the
  same construction as the table. Python 3 standard library only:
    python3 draw_records.py records_atlas.svg
  ../figures/records_figure.sh runs it and converts the SVG to the PDF the Letter uses.

ChainAlpha.lean
  A single Lean 4 file (core library only, no imports) that builds the 172 records from the slots
  and the commutator matrices, shows each is an eigenvector of the exchange of the reads, sorts them
  by the two exchanges, applies the weight law and proves that the normalized readout is
  (79 + 48 sqrt2 + 42 sqrt3 + 3 sqrt6) / 31104 (Supplemental Material, Sec. S11).
  Check with Lean 4.35.0:  lean ChainAlpha.lean   (about 100 seconds, about 2 GB of memory)

mutations.py
  Perturbs the definitions of ChainAlpha.lean one at a time and re-checks the main theorem and the
  commutator records; every perturbation that changes a value at the object makes one of
  them fail (Supplemental Material, Sec. S11). Needs Lean 4.35.0 and ChainAlpha.lean beside it:
    LEAN=/path/to/lean python3 mutations.py   (about two seconds per case)
