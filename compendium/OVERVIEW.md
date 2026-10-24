# The Chain Theory compendium: an overview

> **Draft for the author's review.** This overview is assembled from the compendium itself: the first paragraph of each Part's introduction, in the author's words, and the graded statements of that Part, from the generated index. It adds no claim of its own. The full statements, their conditions and their derivations are in the Part PDFs.

## The axiom

> *Nothing exists but finitely many maximally entangled pairs of qudits, some qudits shared, known only by distilling them.*

The compendium reads physics off the types of link between two ends of dimensions M and N. The six cells, Parts VI to XI, are the links (2,2), (3,2), (4,2), (3,3), (4,3) and (4,4). The alpha Letter in [`papers/alpha`](../papers/alpha) treats one result of the (3,2) cell on its own terms.

## How to read the grades

| Grade | Meaning in the compendium |
|---|---|
| Theorem | derived from the axiom and its definitions, by the derivation given in its chapter |
| Conditional theorem | derived under conditions named in its box |
| Open result | stated, and carried to a named step that remains open |

Each Part's [index page](index/README.md) gives every statement with its standing line, its premises, its Lean declarations and its record number. What the Lean checks is set out in [`README.md`](README.md#what-the-lean-checks).

## Foundations

### Part I. The Framework

[Index](index/01-framework.md) · [PDF](pdf/01-framework.pdf) · 20 theorems, 9 conditional theorems, 23 open results

Everything in this compendium descends from one sentence. The sentence is the axiom, Definition 1.1, and it says that nothing exists but finitely many maximally entangled pairs of qudits; the five definitions that follow it, 1.2 to 1.6, fix the words qudit, shared, distilling, read and known. Part I is the part of the compendium that stays closest to that sentence. It does not yet speak of particles or forces. It asks what the sentence and the five definitions force on their own, and it answers with the objects that every Part beyond it uses: the link between two ends and its six genres, the records a read leaves and the count that weights them, the moves that carry one web to another, the saturation that drives a seeded web to its sinks, the register at which a probe reads, and the table that translates the vocabulary of the construction into the vocabulary of the literature.

| No. | Grade | Statement |
|---|---|---|
| 1.7 | Conditional | Conjecture 0, the three registers |
| 2.1 | Theorem | The fourth definition from the axiom |
| 2.2 | Conditional | Orbit reading from the knowledge clause |
| 2.3 | Theorem | One act from the derived act |
| 2.6 | Theorem | The restated text at both faces at every cell |
| 2.9 | Theorem | The one-dimensional end excluded at the axiom |
| 2.10 | Theorem | The single read, a corollary of the definitions |
| 3.1 | Theorem | The far end fixed direction by direction as the read |
| 8.1 | Theorem | The washed level as an output of the definition of open |
| 9.1 | Conditional | Readability order at the six genres |
| 9.2 | Theorem | Abelian genre uniqueness |
| 9.3 | Theorem | Coupling genre |
| 9.4 | Theorem | Link lemmas |
| 9.5 | Theorem | Ordering theorem |
| 9.6 | Theorem | The one link tables at every genre |
| 9.7 | Conditional | Universe link from parity |
| 11.1 | Theorem | The readout unit as the scheme at the one link |
| 12.1 | Conditional | The soft limit at the one link |
| 13.1 | Theorem | The record phase group at every genre |
| 16.1 | Theorem | The genre functions in the end dimensions |
| 18.1 | Conditional | The read-state boundary |
| 18.2 | Theorem | The gain lemma at the spectrum of records |
| 18.3 | Conditional | Gain as the washed direction count at the sector |
| 18.4 | Conditional | The boson as the chain readout |
| 24.1 | Conditional | The three readout rules as one read at three levels |
| 27.1 | Theorem | The phase at the junction at the read order |
| 28.1 | Theorem | Measurement as the wash at one act |
| 28.2 | Theorem | The star-pair and one-link apparatus webs built |
| 28.5 | Theorem | The classical limit as the zero-density register |

The 23 open results of this Part are listed in its [index](index/01-framework.md).

### Part II. The Rule, The Chain Automata And The Single Root

[Index](index/02-rule.md) · [PDF](pdf/02-rule.pdf)

This Part has no theorem, conditional theorem or open result in this release; its one box is a table.

### Part III. Quantum Mechanics

[Index](index/03-quantum-mechanics.md) · [PDF](pdf/03-quantum-mechanics.pdf) · 1 theorem, 8 conditional theorems, 4 open results

The framework of Part I speaks of pairs, links, reads and records, and never of a state vector. Part III asks how far the ordinary apparatus of quantum mechanics, the state space, the probability rule, the unitary step, the uncertainty relation, the measurement and the statistics of identical bodies, can be read off from that framework. The answer the Part gives is a sequence of conditional theorems, each resting on a short list of results from Part I, and a small number of open results where the reading parts. The order of the chapters is the order of the construction: the state space is built first from the outputs of the acts, the probability and the step are read at that space, the uncertainty relation follows from the step, measurement is the wash at one act, and the remaining chapters collect what the construction says about exchange, energy, the sum over records, the phase-space picture, the corollaries and the open system.

| No. | Grade | Statement |
|---|---|---|
| 35.1 | Conditional | The state space of a pair type is the span of the act outputs |
| 39.1 | Theorem | The three-four pair ket at the hub |
| 40.1 | Conditional | The flat pair and the unitary transport, join and step |
| 41.1 | Conditional | The uncertainty relation from the Weyl relation |
| 42.1 | Conditional | The collective readout of the joined web of several bodies |
| 43.1 | Conditional | Indistinguishability from the twirl |
| 44.1 | Conditional | Energy as the first-power operator and the step |
| 46.1 | Conditional | The Wigner function and the many-body sign |
| 47.1 | Conditional | The quantum-mechanics corollaries at their established roots |

The 4 open results of this Part are listed in its [index](index/03-quantum-mechanics.md).

### Part IV. Spacetime, Symmetry And The Dynamics Of The Read

[Index](index/04-spacetime-and-symmetry.md) · [PDF](pdf/04-spacetime-and-symmetry.pdf) · 6 theorems, 5 conditional theorems, 4 open results

Nothing in the axiom mentions space. Part IV asks where the order of events, the rotations, the Lorentz group, the boosts, spin and the discrete reflections come from in a construction whose only material is finitely many entangled pairs. Its answer rests on the table of nouns of chapter 1-7 more than on any other single result, because the symmetry chapters read the structure of the construction at the words the table fixes: the derived directions, the Hermitian split, the open-end label and the order parameter. The Part is short, eight chapters, and most of its results are conditional theorems whose conditions are listed as the first sentence inside the box.

| No. | Grade | Statement |
|---|---|---|
| 50.1 | Conditional | The order coordinate as a count of one-steps |
| 51.1 | Conditional | One object at five readings |
| 53.1 | Conditional | The rotation group as the automorphisms of the derived directions |
| 54.1 | Conditional | The Lorentz group as the isometries of the Hermitian split |
| 55.1 | Theorem | One against three at every step of the chain |
| 56.1 | Theorem | The order register at the three directions |
| 57.1 | Theorem | Spin at the differing body |
| 58.1 | Theorem | The spin-c group at the qubit pair |
| 59.1 | Conditional | Parity as the improper element |
| 61.1 | Theorem | Three involutions and the identity product |
| 62.1 | Theorem | The group moves preserve the order parameter and the transfers raise it |

The 4 open results of this Part are listed in its [index](index/04-spacetime-and-symmetry.md).

### Part V. The Matrix, The Standard Model At The Six Genres

[Index](index/05-gauge-structure.md) · [PDF](pdf/05-gauge-structure.pdf) · 14 theorems, 6 conditional theorems, 24 open results

The Standard Model of the literature is a gauge theory with a group, a set of representations, a charge assignment, conservation laws and anomaly conditions. Part V asks which of these structures the construction produces from the known clause of the axiom and the six genres of the link, and in what order. The answer is a thread that begins with gauge invariance read as the known clause, passes through the group, the representations, the weights and the charge, and ends with the conservation laws, the Ward identity and the table of the seventy-five entries of the model with their standing. Along that thread the Part is explicit about what is a theorem, what is conditional and what is open, because this is the Part where the names of the literature press hardest on the construction.

| No. | Grade | Statement |
|---|---|---|
| 64.1 | Theorem | Gauge invariance as the known clause |
| 64.2 | Theorem | The gauge group as the face group of the tether |
| 65.1 | Theorem | The gauge group as a corollary of one construction |
| 65.2 | Theorem | The hub pair as one qudit of dimension four |
| 66.4 | Conditional | The carriers as the closed reads of their type faces |
| 69.1 | Theorem | The carrier sink offices |
| 70.1 | Theorem | The same power at the shifted origin |
| 72.4 | Conditional | The signed open-end count under the persistence matching |
| 73.1 | Theorem | The sign from the side at the hub reached through its qutrit |
| 74.1 | Theorem | The conserved functionals of the full move set |
| 74.2 | Conditional | The register of energy-momentum conservation as the dock |
| 74.3 | Conditional | Conserved functionals on the typed count |
| 74.4 | Theorem | The junction count at the moves, restated |
| 78.1 | Conditional | The Ward identity from conservation as one link |
| 78.2 | Conditional | The reading of the records washed |
| 78.3 | Theorem | The anomaly read at the body part |
| 79.1 | Theorem | The anomaly with every body at its own sink |
| 80.1 | Theorem | The images moved by a recorded cell |
| 83.1 | Theorem | Three, a theorem of the valence |
| 86.1 | Theorem | The diagonal self couplings in one form |

The 24 open results of this Part are listed in its [index](index/05-gauge-structure.md).

## The six cells

### Part VI. The Metric, The Worldline And The Horizon: The (2,2) cell

[Index](index/06-cell-2-2-metric-and-horizon.md) · [PDF](pdf/06-cell-2-2-metric-and-horizon.pdf) · 2 theorems, 17 conditional theorems, 30 open results

Gravity in this construction is a statement about counting. The depth of a web, the growth of its closure wave by wave, the rung at which the horizon stands and the register tower beneath it are all counts, and Part VI reads curvature, the field equation, the horizon, the cosmological term, dark matter and the expansion rate as readings of those counts. The register matrix of the framework chapter places the cell (2,2), the genre of two qubit ends, as the cell that reads spacetime, conjectured, and the reader should hold that standing in mind through the Part: the results here are conditional theorems and open results about the counting face.

| No. | Grade | Statement |
|---|---|---|
| 90.1 | Conditional | Depth metric with the rung term |
| 90.2 | Conditional | Curvature as the graph Laplacian washed over the ladder |
| 90.3 | Conditional | The depth metric apparatus webs built |
| 90.4 | Conditional | The mass per unit of the neutral lepton at the pair-ket reading |
| 92.2 | Conditional | Universality from the rung action |
| 93.1 | Conditional | The universality of the move set |
| 99.1 | Conditional | The horizon at every rung as a seeded saturation |
| 99.2 | Conditional | Horizon register face at the closure |
| 99.5 | Conditional | The horizon web as a non-sink at the bound |
| 103.1 | Conditional | The vacuum register and the horizon cut register |
| 104.1 | Theorem | The abundances and the rate at the horizon |
| 105.1 | Conditional | Depth as passage length |
| 105.2 | Conditional | Depth fraction conservation |
| 105.6 | Conditional | The depth independence at the sinks |
| 113.1 | Conditional | The register tower and the metric |
| 113.2 | Conditional | The two metrics at a corridor |
| 114.1 | Conditional | The count metric as the logarithm of the tower metric |
| 115.1 | Conditional | The cosmological term at the depth exponent |
| 118.1 | Theorem | The reservoir cell and the pair ket |

The 30 open results of this Part are listed in its [index](index/06-cell-2-2-metric-and-horizon.md).

### Part VII. The Photon: The (3,2) cell

[Index](index/07-cell-3-2-photon.md) · [PDF](pdf/07-cell-3-2-photon.pdf) · 5 theorems, 10 conditional theorems, 9 open results

Electrodynamics is where the construction first meets a number. The one link of the abelian genre carries a coupling, and the chapters of this Part read that coupling, the dipole factors of the charged leptons, the ladder of hydrogen, the Lamb and Casimir effects, the finiteness of the sums, the running of the coupling and the photon itself, all from the records a read leaves at the one link and the apparatus webs of chapter 1-6. The Part also carries the ladder of the charged leptons as hub assemblies, the face dissolution and the exponent, and the Koide class, which belong here because they are read at the same dock. Five results are theorems and the rest are conditional theorems or open results, the conditions listed in the boxes; no number taken from experiment enters any chapter.

| No. | Grade | Statement |
|---|---|---|
| 124.1 | Conditional | The fine-structure constant at the one link |
| 134.1 | Theorem | The (2,3) open link against the (2,2) pair ket as the photon |
| 135.1 | Theorem | The (2,3) open link against the (2,2) pair ket, restated |
| 141.1 | Conditional | The electron dipole factor at order three from the self-terms |
| 143.1 | Conditional | Hydrogen from the held carrier |
| 145.1 | Theorem | The Casimir effect as the boundary count between two sinks |
| 146.1 | Conditional | The ladder as the order grading of the record sum |
| 147.1 | Conditional | The scale as the body at the carrier readouts |
| 148.1 | Conditional | The scale body as the joined apparatus web |
| 149.1 | Conditional | The strong coupling as the gluon pair-ket office through the scale body |
| 150.1 | Conditional | The photon docks at both faces |
| 151.1 | Theorem | The photon as the (2,2) pair ket at the join |
| 152.1 | Conditional | The lepton ladder as hub assemblies |
| 154.1 | Theorem | The tau as the third hub on the triangle core |
| 155.1 | Conditional | The face dissolution theorem |

The 9 open results of this Part are listed in its [index](index/07-cell-3-2-photon.md).

### Part VIII. The Carriers And The Breaking: The (4,2) cell

[Index](index/08-cell-4-2-weak.md) · [PDF](pdf/08-cell-4-2-weak.pdf) · 1 theorem, 8 conditional theorems, 17 open results

The weak interaction is the sector of the register matrix at the cell (2,4), the genre that pairs a qubit end with a ququart end, and this Part reads it as the hub step of chapter 1-4 seen from the outside. The thread runs from the step to the carriers, from the carriers to the doublets and the currents, from the currents to the constant, the angle and the mixing, and from there to beta decay, the widths, the electroweak table and the closed hub read that the literature calls the Higgs. Most of the results are open or conditional, and the Part is candid about it: the weak sector is where the construction has the most names attached by correspondence and the fewest theorems, and the register matrix of the framework chapter records that standing at its cell.

| No. | Grade | Statement |
|---|---|---|
| 158.1 | Conditional | Decay and production as the move graph of the hub step |
| 162.1 | Conditional | The released body as one anatomy |
| 162.2 | Conditional | The neutral sinks census |
| 163.1 | Conditional | The weak doublet at the internal ends of the leptons |
| 163.3 | Conditional | The doublet count at the cross core |
| 164.1 | Conditional | The weak angle as the dock share |
| 164.5 | Conditional | The weak angle as the ratio of offices at the Z body |
| 166.1 | Conditional | Mixing as the overlap of the corner frame with the depth eigenbasis |
| 170.1 | Theorem | Beta decay as the release at the plus-two arm |

The 17 open results of this Part are listed in its [index](index/08-cell-4-2-weak.md).

### Part IX. The Junction: The (3,3) cell

[Index](index/09-cell-3-3-strong.md) · [PDF](pdf/09-cell-3-3-strong.pdf) · 1 theorem, 12 conditional theorems, 12 open results

The strong interaction sits at the cell (3,3) of the register matrix, the genre that pairs two qutrit ends and is the one genre at which no read survives at the first order. Part IX reads that fact as confinement, and then builds outward from it: the strong coupling as a closed read through the hadron body, the structure of the nucleon as a census of star records, the proton as a seeded sink, the ratio of the proton to the electron as a candidate read at second order, the hadron spectrum as a roster of saturated joined webs, the quark content and its flavors, and two chapters reserved for chiral breaking and the cap. The Part is the place where the saturation of chapter 1-5 does its heaviest work, because every hadron here is a sink of a seeded web.

| No. | Grade | Statement |
|---|---|---|
| 171.1 | Conditional | Confinement as the dark-genre readability |
| 172.1 | Conditional | The strong coupling as the gluon closed read through the hadron body |
| 173.1 | Conditional | The strong coupling at the depth scale |
| 174.1 | Conditional | Nucleon structure as the star record census |
| 174.2 | Conditional | The junction sharing, the register, the form factor, the office and the pairable legs |
| 175.2 | Conditional | The joined read at the roster stars |
| 176.1 | Conditional | The mass ratio at the second-order read |
| 177.1 | Conditional | The hadron spectrum as the roster of saturated joined webs |
| 177.2 | Conditional | The mixed composition, the meson apparatus and the corollaries |
| 181.1 | Conditional | The quark register at the second-order junction read |
| 181.2 | Conditional | Flavor as the rung name and the quark ladder |
| 181.4 | Conditional | The quark ladder at the saturated sinks |
| 181.5 | Theorem | The quark offices as the star arm reads |

The 12 open results of this Part are listed in its [index](index/09-cell-3-3-strong.md).

### Part X. The Yukawa Leg And The Higgs Offices At The Bodies: The (4,3) cell

[Index](index/10-cell-4-3-yukawa.md) · [PDF](pdf/10-cell-4-3-yukawa.pdf) · 6 theorems, 18 conditional theorems, 8 open results

Mass is a read. That sentence is the thread of Part X, and the five chapters of the Part unfold it in order: the unit in which every mass is counted and the first power at which it appears, the rule that says which office a body reads alone, the next terms beyond the first power and the rows that do not stand still, the three generations as attach sites, and the one readout that gathers the masses together. The Part is short but heavily cited: the lepton ladder of Part VII, the weak angle and the mixing of Part VIII, the quark offices of Part IX and the field equation of Part VI all rest on its first chapter, and the derivation graph shows chapter 8-1 as one of the most used chapters of the compendium.

| No. | Grade | Statement |
|---|---|---|
| 185.1 | Conditional | The mass unit and the first power |
| 185.2 | Conditional | Junction register from the pair-ket unit |
| 185.3 | Conditional | Rest energy as the Born face |
| 185.4 | Conditional | Carrier mass as the square of the closed read |
| 185.5 | Conditional | Rung naming from the depth ladder |
| 185.6 | Conditional | Hub dressing as the in-end dimension |
| 185.7 | Conditional | Register reading at the first differing body |
| 185.8 | Conditional | Office as the first order read at the common support |
| 185.9 | Conditional | Mass as the order-two chain sum at the common support |
| 185.10 | Conditional | Dressing as the hub leg Born product |
| 185.11 | Conditional | Mass as the direct two-exchange sum at the common support |
| 185.12 | Conditional | The placement per web at the joined read |
| 186.1 | Theorem | The first power as the sum over the segments of the read |
| 191.1 | Theorem | The dressing as the unpassed (3,4) in-legs |
| 195.1 | Theorem | The body-alone office rule |
| 196.1 | Conditional | The next terms and the unstable rows |
| 196.2 | Theorem | The lepton joined face at the open attach site |
| 197.1 | Conditional | Generation as depth momentum |
| 197.2 | Conditional | Sector key as the depth momentum |
| 197.3 | Conditional | The generation bound at the hub dimension |
| 197.4 | Conditional | The generation basis as the attach site basis |
| 198.1 | Theorem | The thermal state as the Gibbs state of the spectrum of records, fourth entry |
| 198.2 | Theorem | The thermal state at a cap re-posed at the stop condition |
| 198.3 | Conditional | The unified mass readout |

The 8 open results of this Part are listed in its [index](index/10-cell-4-3-yukawa.md).

### Part XI. The Higgs, Its Hub Register And The Dressing Field: The (4,4) cell

[Index](index/11-cell-4-4-higgs.md) · [PDF](pdf/11-cell-4-4-higgs.pdf) · 2 theorems, 3 conditional theorems, 2 open results

| No. | Grade | Statement |
|---|---|---|
| 200.1 | Conditional | The Higgs as the closed hub read |
| 200.2 | Conditional | The port, the rows and the weight of the Higgs word |
| 200.3 | Conditional | The mass, the vacuum port and the exponent |
| 200.6 | Theorem | The Higgs and carrier offices at their sinks |
| 202.1 | Theorem | The Higgs quartic as the ratio of offices |

The 2 open results of this Part are listed in its [index](index/11-cell-4-4-higgs.md).

## Applications

### Part XII. Decays And Nuclear Physics

[Index](index/12-decays-and-nuclei.md) · [PDF](pdf/12-decays-and-nuclei.pdf) · 1 theorem, 9 conditional theorems, 16 open results

A body that is not a sink moves on. Part XII reads decay as exactly that, the forward edge of a non-sink in the move graph of the hub step, and then reads the rate, the prefactor, the lifetimes and the branching as counts and washed squares at the records of the release. The second half of the Part turns from decay to binding: the deuteron and the alpha as the pairing records of a joined web, the nuclear rows at the joined seeded web, and the processes of fission, fusion and the stellar bounds held as a table. The thread of the Part is the move graph of chapter 1-4 read at the sinks of chapter 1-5, and the dependency lines of its chapters point there and to the probe of chapter 1-6.

| No. | Grade | Statement |
|---|---|---|
| 203.1 | Conditional | The process census against the eight derived moves |
| 203.3 | Conditional | Decay as the forward edge of a non-sink |
| 203.5 | Theorem | Beta decay as the release at the plus-two arm |
| 206.1 | Conditional | The rate as the washed square of the read |
| 206.2 | Conditional | Coherent release as the unwashed square at the joined web |
| 206.3 | Conditional | The decay rate as the imbalance readout |
| 206.4 | Conditional | The branching ratios as the shares of the washed squares |
| 210.2 | Conditional | The prefactor as the tick width |
| 211.1 | Conditional | The imbalance readout, lifetimes and branching |
| 211.2 | Conditional | The baryon asymmetry as the sign of the imbalance at the universe web |

The 16 open results of this Part are listed in its [index](index/12-decays-and-nuclei.md).

### Part XIII. Thermodynamics

[Index](index/13-thermodynamics.md) · [PDF](pdf/13-thermodynamics.pdf) · 7 theorems, 0 conditional theorems, 5 open results

Thermodynamics enters the construction through a count at a boundary. Part XIII reads the second law as the count of records at the boundary of a web under acts, the thermal state as a fixed point of the twirl at a cap, the ensembles as readings at caps, the order parameter as a quantity read at the stop condition of a saturation, the phase transition as a change of sink class, and the remainder and the arrow as what is left when the forward saturation has run. The Part has more theorems than most, because the counting face of chapter 1-3 and the saturation of chapter 1-5 give it its objects directly.

| No. | Grade | Statement |
|---|---|---|
| 217.1 | Theorem | The second law at the counting face |
| 217.2 | Theorem | The boundary count at the counting face |
| 219.1 | Theorem | The ensembles as cap readings at the joined web |
| 220.2 | Theorem | The order parameter at the forward saturation |
| 220.3 | Theorem | The distillation theorem at the forward saturation |
| 221.1 | Theorem | The phase transition as the sink-class change |
| 223.2 | Theorem | The thermodynamic remainder at the forward saturation |

The 5 open results of this Part are listed in its [index](index/13-thermodynamics.md).

### Part XIV. Condensed Matter And Atoms

[Index](index/14-condensed-matter-and-atoms.md) · [PDF](pdf/14-condensed-matter-and-atoms.pdf) · 6 theorems, 0 conditional theorems, 3 open results

A lattice is a periodic sink. Part XIV reads condensed matter and atomic physics from that one reading: the chain of copies and the periodic readout, the band at the periodic web, the chain of pairs and the charged periodic sink, the winding of the wash holonomy that the literature calls the Chern number, the periodic table as the joined-electron sinks, and the atom as the hydrogen probe web with its many-body readout. The Part draws on the probe and the saturation of Part I, on the measurement of Part III, on the hadron chapters of Part IX and on the lepton ladder of Part VII, and it is one of the Parts with the most theorems, since a periodic web is an object the saturation describes exactly.

| No. | Grade | Statement |
|---|---|---|
| 224.1 | Theorem | The chain of copies and the periodic readout |
| 224.2 | Theorem | The periodic network admitted by the grammar |
| 224.3 | Theorem | The periodic sink at a named cell count |
| 225.1 | Theorem | The band at the periodic web |
| 226.1 | Theorem | The chain of pairs at the periodic web |
| 229.1 | Theorem | The probe read at the four bodies joined to the measuring body |

The 3 open results of this Part are listed in its [index](index/14-condensed-matter-and-atoms.md).

### Part XV. Quantum Information

[Index](index/15-quantum-information.md) · [PDF](pdf/15-quantum-information.pdf) · 11 theorems, 1 conditional theorem, 5 open results

The construction began as quantum information, and Part XV returns it there. The closure of a web under the moves is a computation, the moves are a gate set, the coherent read is the gate the literature calls the Hadamard, the read is the maximal distillation, the enumeration of the records is the cost of a read, and the transport of a basis around a closed path has a holonomy. The Part is the one where the vocabulary of the axiom and the vocabulary of the literature come closest, since both speak of qudits, entangled pairs and gates, and the reader will find more theorems here than in any Part beyond the framework.

| No. | Grade | Statement |
|---|---|---|
| 230.1 | Theorem | The closure as the computation |
| 232.2 | Theorem | The Hadamard inside the finite gate group at the pair register |
| 233.1 | Theorem | The distilling line as a corollary of the Axiom |
| 233.2 | Theorem | The read as the maximal distillation |
| 233.3 | Conditional | Every census move one act of distilling |
| 233.4 | Theorem | The subdivision as a path of four one-act moves |
| 234.1 | Theorem | The enumeration of the records as the cost of a read |
| 234.3 | Theorem | The adiabatic theorem at the untouched records |
| 235.1 | Theorem | The read transport from the pair |
| 235.2 | Theorem | The holonomy of the basis transport around a closed path |
| 235.3 | Theorem | The step generator as a number operator |
| 235.4 | Theorem | The carrier phase datum at the four-cycle |

The 5 open results of this Part are listed in its [index](index/15-quantum-information.md).

## Scorecard

### Part XVI. The Scorecard, The Open Results And What Remains

[Index](index/16-scorecard.md) · [PDF](pdf/16-scorecard.pdf)

The last Part is the ledger of the compendium. It re-tallies the results, counts the open results by form and by Part, prints the page of what the construction has not reached, and concludes. Every chapter of the Part is a table or a census, and the reader should use it as one uses an index: to find, for any claim of the compendium, where it stands and what still parts.

This Part has no theorem, conditional theorem or open result in this release; its boxes are 4 tables.

## Totals

83 theorems, 106 conditional theorems and 162 open results in the sixteen Parts; the appendices and the [instruments](index/instruments.md) hold the rest of the boxed statements counted in [`README.md`](README.md#the-count-as-of-this-release).

