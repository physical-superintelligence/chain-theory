# ChainAlpha

A single-file Lean 4 check of the computation in *A Parameter-Free Candidate for the Fine-Structure Constant from Entangled Qudits*.

```
lake build          # or, without Lake: lean ChainAlpha.lean
python3 audit.py    # the audit rule of the paper
```

You need Lean 4.35.0, pinned in `lean-toolchain`, and nothing else: the file uses only the core library, with no Mathlib and no imports. The Lake package has no dependencies. A full check takes about two minutes and needs about 2 GB of memory. At the end it prints the axiom report reproduced below, which is also committed as `axioms_report.txt`.

## What the file checks

The main theorem has no hypotheses beyond the definitions in Part 1 of the file:

```lean
theorem main :
    TwoPoint.valid objectWorld objectTwoPoint = true ∧
    fixesFar (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2) = true ∧
    fixesFar (objectWorld.dim objectTwoPoint.read1.2) (objectWorld.dim objectTwoPoint.center) = false ∧
    (records (readEnd ...) (farEnd ...)).all (fun f => neZ (parity f)) = true ∧
    readout objectWorld objectTwoPoint = ([(1, 79), (2, 48), (3, 42), (6, 3)], 31104)
```

It states four things:
1. The object is a two-point configuration of the qutrit–qubit link.
2. Reads at the qutrit fix the qubit, and reads at the qubit do not fix the qutrit. This is the end rule.
3. Every one of the link's records is an eigenvector of the exchange of the two reads.
4. The normalized readout is (79 + 48√2 + 42√3 + 3√6)/31104.

Inside the file, nothing is entered as a number:
- The 169 product records are built from the slots.
- The three commutator records are built from the commutator matrices: the commutator at each read's qubit is formed, and of the sum and difference of the pair, the definition of the known keeps the one on which the exchange reads the order sign −1. That is the difference.
- The two exchanges are defined by what they do. X exchanges a record's two reads. Y exchanges the two read links, acting on qudits. A record survives an exchange that returns it times its own sign. The signs of all 172 records follow from these definitions (`exchanges_agree_with_pairings` checks them against the paper's pairing description).
- The factor of Y is computed from the configuration: the exchange of the read links leaves the shared qutrit in place, its copies being one qudit, and moves only the read qubits.
- The readout dimension comes from the register rule.

## What the paper supplies

The file checks the computation. These parts rest on the paper:

- **The physics of the definitions.** The file checks that the definitions produce the number, with every input entered as a definition, and the paper argues for the definitions. Three clauses of the paper's definitions enter, one each of READ, SHARED (in two parts) and KNOWN, together with the two definitions of the computed quantity:
  - **X acts where the reads are taken** (`wX := readEnd`). This is the clause of READ: a read is an act at the end at which it is taken, and the basis it passes reaches the far end whole. It matters at the 9 records whose letters all sit at the qubits; placing them where their letters sit gives 1/α = 139.03.
  - **Y moves a record when it changes the qudits the record occupies** (`moved`). A qubit–qubit record keeps {q₁, q₂}, so it is not moved. Counting each letter's move instead gives 134.49.
  - **The copies of the shared qutrit are one qudit** (`slotQudit`, `linkSwap`). This is the clause of SHARED. Treating them as separate qudits gives 112.42.
  - **A record survives an exchange that returns it times its own sign** (`survives`). This is the clause of KNOWN, that the known holds under every exchange of reads or of links, together with its consequence that two anticommuting reads fix their product "with their order as its sign".
  - **The two definitions of the computed quantity.** These are the two-point configuration and the normalized readout.
- **The readout space itself.** The file computes the two traces that define the readout: the sum of √k over the records, and the readout dimension. The paper constructs the space they live in.
- **The theorems behind the read cap.** The paper defines a type as readable when every positive map between the operator algebras of its ends is decomposable, since to fix is to determine with certainty, and certainty leaves no consistent relation between the ends open. By Størmer (Acta Math. 110, 233, 1963), Woronowicz (Rep. Math. Phys. 10, 165, 1976) and Choi (Linear Algebra Appl. 12, 95, 1975) that holds exactly when d₁d₂ ≤ 6. The file cites those theorems in that numerical form, as the named hypothesis `ReadCap`, used in `selection_under_read_cap`.
- **Statements over the full unitary group.** The paper states them, and the commutant is checked for the finite matching groups G₂ and G₃ by the character formula.
- **The identification with a constant of nature.** The Photon Conjecture is stated in the paper and tested by measurement. The file's declarations are named for the computation.

## The definitions the main theorem depends on

This list was generated mechanically: it is the closure of the main theorem's statement over the constants of the file.

| Paper clause | Lean (Part 1) |
|---|---|
| The axiom as a structure; QUDIT; a single copy of each link | `World`, `World.wellFormed`, `World.typeOf` |
| DISTILLING: the pair ket on the common support | `pairKet` |
| READ: the transpose identity steers the far end | `steered` |
| FIX: a read fixes the far end when its steered states span it | `fixesFar` |
| The end where the reads are taken, and the far end | `readEnd`, `farEnd` |
| Two-point configuration (a definition of the computed quantity) | `TwoPoint`, `TwoPoint.valid` |
| Register rule | `readoutDim` |
| Slots and the real traceless bases | `slotEnd`, `slotDim`, `slotBasis`, `tracelessBasis` |
| Letter assignments and the exchange of the reads | `Assign`, `Formal`, `letterAt`, `letterSlots`, `exch`, `exchAssign`, `letterCode`, `key` |
| KNOWN: the records as the exchange eigenbasis, each with its own sign and, if it carries two reads' letters of one type, its read-exchanged form | `Rec`, `products`, `recs`, `records`, `sameEnd`, `coeffOf`, `parity` |
| KNOWN, the commutator records: commutators at the read qubits, kept where the exchange reads the order sign | `weylPhaseExp`, `weylIsSign`, `orderSign`, `coeffOn`, `commAt`, `commutatorCandidates`, `commutatorRecs` |
| The two exchanges: X exchanges two reads; Y exchanges the read links as a map on qudits; survival up to the record's own sign | `slotQudit`, `linkSwap`, `occupies`, `sameSet`, `moved`, `sameForm`, `survives`, `sigX`, `sigY` |
| Weight law: X at the read end; Y at the qudits it moves; the factors multiply | `wX`, `wY`, `kOf` |
| Normalized readout, √k at the amplitude level (a definition of the computed quantity) | `readout`, `addRoot` |
| The object | `objectWorld`, `objectTwoPoint` |

The main theorem also uses these utilities from Part 0: `rank`, `rankAux`, `neZ`, `eqZ`, `allPairs`, and `Mat.get`, `Mat.tabulate`, `Mat.mulZ`, `Mat.subZ`, `Mat.traceZ`, `Mat.transposeZ`, `Mat.pairZ`.

Part 1 also defines `World.isPair`, `World.valence` and `World.shared`, which are used only by `object_links_unequal` and `object_is_two_point`. It also holds the definitions used only for selection (§1.9).

## Map from the paper to the declarations

| Result in the paper | Lean declaration |
|---|---|
| Eq. (6), Theorem 2: the value | `main`, `dressing_of_the_qutrit_qubit_link` |
| Readout dimension 24·36·36 (the register rule, evaluated) | `readout_dimension` |
| Corollary S6: 169 products, 172 records | `product_count`, `record_count` |
| The records are orthogonal, hence independent | `records_orthogonal`, with `slot_table_agrees` and `record_letters_in_range` |
| Lemma S10: sector sizes 79/48/42/3, and the polynomials at a = 8, b = 3 | `sectors`, `sector_polynomials` |
| Theorem S7: the weight factors 3 and 2; the exchange of the read links leaves the shared qutrit in place and swaps the qubits | `weight_factors` |
| The two exchanges agree with the pairing description (Eq. S3) at all 172 records; their domains, 76 and 99 records | `exchanges_agree_with_pairings`, `exchange_domains` |
| End rule | `end_rule`, `fixesFar_iff_le` |
| Anticommutation at a qubit and the three commutator records (Corollary S4, Theorem S6) | `weyl_sign`, `commutators_single`, `commutator_records` |
| Every record an eigenvector of the exchange (Corollary S6) | `records_exchange_eigenbasis` |
| Lemma S6: 𝒬 acts as i·𝟙 on the link, is central, and spans a one-dimensional center; 𝒬 = 6iY | `Q_on_link`, `Q_central`, `generators_independent`, `center_one_dimensional`, `Q_is_six_i_Y`, `Q_on_ket` |
| Theorem S3: stabilizer with action of rank 8 and dimension 4, su(2) ⊕ u(1), center the line of 𝒰 | `action_rank`, `stab_annihilates`, `stab_independent`, `U_central_in_stab`, `stab_center_one_dimensional` |
| Lemma S9: B(𝒬,𝒬) = −s² = 1 for 𝒬 acting as the scalar s = i | `unit_of_the_count` |
| The read cap: the readable types | `selection_under_read_cap` |
| §S2 readers remark: readability by reads holds exactly when d₁d₂ ≤ 6, so it satisfies the cap | `readers_reproduce_the_cap`, `reads_satisfy_the_read_cap`, `readThrough_bound` |
| §S2: a matching undoes the transpose's conjugation at a qubit (σ_y on all of G₂); the trace obstruction at a qutrit | `qubit_absorbs_conjugation`, `qutrit_conjugation_obstruction` |
| Theorem 1 (§S5): uniqueness of the configuration, and the object's configuration | `configuration_unique`, `object_config_of_world`, `object_config_two_point`, `object_config_end_rule` |
| Lemma S1: matching groups of orders 32 and 384 | `matching_group_orders` |
| Lemma S3: commutant of dimension 3 at d = 2, 3 | `commutant_dimension` |
| §S7: the join's laboratory postselection probability, 1/6 (in the model the join has no failure branch) | `join_probability` |

**The readers remark.** This is the internal argument of §S2 for the cap. It uses the readers, `readers := [2, 3]`, and two conditions:
- a reader spans an end only up to its own dimension;
- the far end of a read must absorb the conjugation that the transpose identity brings, which happens only at a qubit (`absorbsConjugation`).

`readers_reproduce_the_cap` shows that readability by reads (`readableByReads`) holds exactly when d₁d₂ ≤ 6, with (3,3) dark. So `reads_satisfy_the_read_cap` discharges the `ReadCap` hypothesis for it, and the uniqueness of the object holds for it with no hypothesis.

The two facts about conjugation are checked on the finite matching groups:
- σ_y works on all 32 elements of G₂;
- diag(i,1,1) in G₃ has (tr Ū)² ≠ (tr U)² while tr Ū² = tr U² = 1.

Two steps rest on the paper's argument:
- that a similarity V Ū V⁻¹ = cU forces those trace relations;
- the statement over the full unitary group.

`absorbsConjugation` records the outcome of those checks as a definition. The predicate `readable` keeps only the first condition, under which (3,3) is spanned; `configuration_unique` uses that weaker notion, which makes it a stronger theorem.

**Stated in the paper:**
- the conserved count as a separate condition;
- the on-shell identification of §S8;
- the Photon Conjecture.

## Axiom report

Printed at the end of every check:

```
'ChainAlpha.main' depends on axioms: [propext]
'ChainAlpha.records_orthogonal' depends on axioms: [propext, Quot.sound]
'ChainAlpha.sectors' depends on axioms: [propext]
'ChainAlpha.selection_under_read_cap' depends on axioms: [propext, Classical.choice, Quot.sound]
'ChainAlpha.center_one_dimensional' depends on axioms: [propext]
'ChainAlpha.configuration_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
'ChainAlpha.action_rank' depends on axioms: [propext]
'ChainAlpha.commutant_dimension' depends on axioms: [propext]
'ChainAlpha.commutator_records' depends on axioms: [propext]
'ChainAlpha.exchanges_agree_with_pairings' depends on axioms: [propext]
'ChainAlpha.readers_reproduce_the_cap' depends on axioms: [propext, Classical.choice, Quot.sound]
```

These are Lean's standard axioms and nothing else:
- The file contains no `sorry`, no `axiom`, no `native_decide`, and no `implemented_by`, `extern`, `unsafe` or `opaque`.
- Every computation is checked by the kernel (`decide +kernel`).

## Audit rule

Outside comments, the digits of the closed form (79, 48, 42, 31104) and the record counts (169, 172) occur only inside theorem statements, never in a definition. The block size 43 in Part 3 only splits the orthogonality check into pieces the kernel can hold.

## Testing the definitions

`mutations.py` changes the definitions of Part 1 one at a time. After each change it checks the main statement and the parity part of `commutator_records`. Each case takes about two seconds:

```
LEAN=/path/to/lean python3 mutations.py
```

| Perturbation | Main | Commutators | Readout becomes | 1/α |
|---|---|---|---|---|
| none | proved | proved | (79 + 48√2 + 42√3 + 3√6)/31104 | 137.036 |
| a read fixes the far end at every type | fails at the end rule | proved | unchanged | |
| reads taken at the qubit | fails | proved | (79 + 90√2)/31104 | |
| X at the far end | fails | proved | (85 + 90√2)/31104 | 146.52 |
| X where the letters sit (the 9 all-qubit records at 2) | fails | proved | (85 + 54√2 + 36√3)/31104 | 139.03 |
| Y at the qutrit | fails | proved | (88 + 90√3)/31104 | 127.54 |
| the factors of X and Y swapped | fails | proved | 48 and 42 swapped | 135.89 |
| Y moves a record when any letter moves | fails | proved | (79 + 48√2 + 36√3 + 9√6)/31104 | 134.49 |
| the qutrit copies are separate qudits | fails | proved | (79 + 42√3 + 51√6)/31104 | 112.42 |
| survival ignores the record's own sign | fails | proved | (82 + 48√2 + 42√3)/31104 | 139.71 |
| the commutator records carry no pair of reads | fails | proved | (79 + 51√2 + 42√3)/31104 | 138.94 |
| whole operator space at the unread link | fails | proved | denominator 46656 | |
| no commutator records | fails | proved | 3√6 lost | 141.62 |
| the sums kept instead of the differences | fails | fails | (79 + 48√2 + 45√3)/31104 | 138.35 |
| sums and differences both kept | fails | fails | (79 + 48√2 + 45√3 + 3√6)/31104 | |
| exchange s ↦ s+1 | fails | proved | (117 + 3√3)/31104 | |
| exchange-fixed products dropped | fails | proved | 31√3 | |
| even records dropped | fails | proved | (79 + 11√3 + 3√6)/31104 | |
| Born weights k in place of √k | fails | proved | radicands 4, 9, 36 | 97.51 |
| `wX := dA` | proved | proved | unchanged; `readout` already orients dA as the read end | |

Every perturbation that changes a value at the object makes the main statement fail. The one that leaves it proved, `wX := dA`, rephrases the same definition.
