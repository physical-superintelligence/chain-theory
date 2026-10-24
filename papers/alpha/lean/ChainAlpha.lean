/-
ChainAlpha.lean

A single-file Lean 4 check of the computation in
  "A Parameter-Free Candidate for the Fine-Structure Constant from Entangled Qudits".

Core Lean only: no Mathlib, no Lake, nothing imported beyond Lean's prelude.
Check with:   lean ChainAlpha.lean          (Lean 4.35.0)

Layout
  Part 0  Exact arithmetic (utilities; no assumptions).
  Part 1  The definitions. The main theorem depends on Parts 0 and 1 alone.
  Part 2  The algebra of the link.
  Part 3  The records and their sectors.
  Part 4  The value.
  Part 5  Selection: the link and its configuration.
  Part 6  Further facts.
  Part 7  The main theorem and the axiom report.

What this file checks: that the definitions of Part 1 produce the closed form
(79 + 48 sqrt 2 + 42 sqrt 3 + 3 sqrt 6) / 31104, with every count computed and no number imported;
and, in Parts 2, 3, 5 and 6, the facts of the paper that support the definitions (the algebra of the
link, the records and their orthogonality, the selection of the link and its configuration, the
commutant, and the join), each on objects defined where it is stated.
Three definitions in Part 1 are clauses of the paper's definitions: X, the exchange of two reads,
acts at the read end (READ); Y, the exchange of the read links, moves only the far qudits, the copies of the shared qudit being one qudit (SHARED);
and a record survives an exchange that returns it times its own sign (KNOWN). Nothing is posed.
What it does not check: that the definitions are the right physics; the theorems of the literature
behind the read cap (cited in Part 5 as a named hypothesis); statements over the full unitary group;
and the identification of the number with a constant of nature, which is a conjecture of the paper
and appears nowhere here.

Audit rule: outside comments, the digits of the closed form (79, 48, 42, 31104) and the record
counts (169, 172) occur only inside theorem statements, never in a definition. (The block size 43
in Part 3 only splits the orthogonality check into pieces the kernel can hold.)
-/
set_option autoImplicit false

namespace ChainAlpha

/-! # Part 0. Exact arithmetic -/

/-- Integer comparisons as Booleans, through the decidable equality of `Int`. -/
def neZ (x : Int) : Bool := decide (x ≠ 0)
def eqZ (x y : Int) : Bool := decide (x = y)

/-- Rank of a list of integer row vectors (all of one length), by fraction-free Gaussian
elimination. `fuel` bounds the number of pivot steps; fuel at least the number of rows suffices. -/
def rankAux : Nat → List (List Int) → Nat
  | 0, _ => 0
  | fuel + 1, rows =>
    match rows.filter (fun r => r.any neZ) with
    | [] => 0
    | r :: rest =>
      let c := (r.findIdx? neZ).getD 0
      let a := r.getD c 0
      let rest' := rest.map (fun s => List.zipWith (fun x y => a * x - s.getD c 0 * y) s r)
      1 + rankAux fuel rest'

/-- Rank of a list of integer row vectors. -/
def rank (rows : List (List Int)) : Nat := rankAux rows.length rows

/-- Every element satisfies `q`, and every pair of distinct positions satisfies `p`. -/
def allPairs {α : Type} (q : α → Bool) (p : α → α → Bool) : List α → Bool
  | [] => true
  | x :: xs => q x && xs.all (p x) && allPairs q p xs
/-- Gaussian integers. -/
structure GI where
  re : Int
  im : Int
deriving DecidableEq, Repr

namespace GI
def zero : GI := ⟨0, 0⟩
def one : GI := ⟨1, 0⟩
def I : GI := ⟨0, 1⟩
def ofInt (n : Int) : GI := ⟨n, 0⟩
def add (a b : GI) : GI := ⟨a.re + b.re, a.im + b.im⟩
def neg (a : GI) : GI := ⟨-a.re, -a.im⟩
def sub (a b : GI) : GI := add a (neg b)
def mul (a b : GI) : GI := ⟨a.re * b.re - a.im * b.im, a.re * b.im + a.im * b.re⟩
def conj (a : GI) : GI := ⟨a.re, -a.im⟩
def normSq (a : GI) : Int := a.re * a.re + a.im * a.im
/-- The fourth root of unity i^k. -/
def ipow (k : Nat) : GI := match k % 4 with | 0 => one | 1 => I | 2 => ⟨-1, 0⟩ | _ => ⟨0, -1⟩
end GI

/-- Matrices as lists of rows. -/
abbrev Mat (α : Type) := List (List α)

namespace Mat
def get {α : Type} (z : α) (m : Mat α) (i j : Nat) : α := (m.getD i []).getD j z
def tabulate {α : Type} (n k : Nat) (f : Nat → Nat → α) : Mat α :=
  (List.range n).map (fun i => (List.range k).map (fun j => f i j))
/-- Integer matrices. -/
def mulZ (a b : Mat Int) : Mat Int :=
  let k := (b.getD 0 []).length
  a.map (fun row => (List.range k).map (fun j =>
    (List.zipWith (fun x i => x * get 0 b i j) row (List.range row.length)).foldl (· + ·) 0))
def traceZ (a : Mat Int) : Int := ((List.range a.length).map (fun i => get 0 a i i)).foldl (· + ·) 0
def transposeZ (a : Mat Int) : Mat Int :=
  let k := (a.getD 0 []).length
  tabulate k a.length (fun i j => get 0 a j i)
def subZ (a b : Mat Int) : Mat Int := List.zipWith (List.zipWith (· - ·)) a b
def scaleZ (c : Int) (a : Mat Int) : Mat Int := a.map (·.map (c * ·))
/-- The trace pairing tr(A^T B) of real matrices. -/
def pairZ (a b : Mat Int) : Int := traceZ (mulZ (transposeZ a) b)
/-- Gaussian-integer matrices. -/
def mulG (a b : Mat GI) : Mat GI :=
  let k := (b.getD 0 []).length
  a.map (fun row => (List.range k).map (fun j =>
    (List.zipWith (fun x i => GI.mul x (get GI.zero b i j)) row (List.range row.length)).foldl GI.add GI.zero))
def addG (a b : Mat GI) : Mat GI := List.zipWith (List.zipWith GI.add) a b
def subG (a b : Mat GI) : Mat GI := List.zipWith (List.zipWith GI.sub) a b
def scaleG (c : GI) (a : Mat GI) : Mat GI := a.map (·.map (GI.mul c ·))
def idG (n : Nat) : Mat GI := tabulate n n (fun i j => if i = j then GI.one else GI.zero)
def kronG (a b : Mat GI) : Mat GI :=
  let p := b.length
  let q := (b.getD 0 []).length
  tabulate (a.length * p) ((a.getD 0 []).length * q)
    (fun i j => GI.mul (get GI.zero a (i / p) (j / q)) (get GI.zero b (i % p) (j % q)))
def applyG (a : Mat GI) (v : List GI) : List GI :=
  a.map (fun row => (List.zipWith GI.mul row v).foldl GI.add GI.zero)
def commG (a b : Mat GI) : Mat GI := subG (mulG a b) (mulG b a)
def isZeroG (a : Mat GI) : Bool := a.all (·.all (· == GI.zero))
end Mat

/-! # Part 1. The definitions

The main theorem depends on these definitions and the utilities of Part 0, and on nothing else. Each
definition carries the name of the clause of the paper it states.
-/

/-! ## 1.1 The axiom as a structure

*Nothing exists but finitely many maximally entangled pairs of qudits, some qudits shared, known only
by distilling them.* -/

/-- A world of the axiom: finitely many qudits, each with a finite dimension, and a finite list of
links. A link, or pair of the axiom, joins two distinct qudits in the maximally entangled state on
their common support (DISTILLING). -/
structure World where
  qudits : Nat
  dim    : Nat → Nat
  links  : List (Nat × Nat)

namespace World
/-- QUDIT: every qudit has dimension at least two; every link joins two distinct qudits; and no
two links join the same two qudits (a single copy of each link). -/
def wellFormed (w : World) : Bool :=
  (List.range w.qudits).all (fun q => decide (2 ≤ w.dim q)) &&
  w.links.all (fun l => l.1 != l.2 && decide (l.1 < w.qudits) && decide (l.2 < w.qudits)) &&
  allPairs (fun _ => true) (fun l m => !(l == m || (l.1 == m.2 && l.2 == m.1))) w.links
/-- The type of a link: the dimensions of its two ends. -/
def typeOf (w : World) (l : Nat × Nat) : Nat × Nat := (w.dim l.1, w.dim l.2)
/-- A link whose two ends have one dimension, of type (d, d). -/
def isPair (w : World) (l : Nat × Nat) : Bool := w.dim l.1 == w.dim l.2
/-- The number of links at a qudit. -/
def valence (w : World) (q : Nat) : Nat := (w.links.filter (fun l => l.1 == q || l.2 == q)).length
/-- SHARED: a qudit at the end of two or more links. -/
def shared (w : World) (q : Nat) : Bool := decide (2 ≤ w.valence q)
end World

/-! ## 1.2 Distilling and reading -/

/-- DISTILLING: the pair ket of a link of type (dA, dB), with coefficient one at the matched
directions (i, i) below the common support min(dA, dB) and zero elsewhere (unnormalized). -/
def pairKet (dA dB i j : Nat) : Int := if i = j ∧ i < min dA dB then 1 else 0

/-- READ: a read in the standard basis of end A. At basis vector i of A it steers the far end B to
row i of the coefficient matrix of the pair ket, by the transpose identity. -/
def steered (dA dB i : Nat) : List Int := (List.range dB).map (pairKet dA dB i)

/-- FIX: a read at end A fixes the far end B when the states it steers B into span B. -/
def fixesFar (dA dB : Nat) : Bool := rank ((List.range dA).map (steered dA dB)) == dB

/-- The end where the reads of a link of type (dA, dB) are taken: the end whose reads fix the
other. (Part 5 shows it is the end of larger dimension.) -/
def readEnd (dA dB : Nat) : Nat := if fixesFar dA dB then dA else dB
/-- The far end, opposite the read end. -/
def farEnd (dA dB : Nat) : Nat := if fixesFar dA dB then dB else dA

/-! ## 1.3 The two-point configuration (definition of the computed quantity)

A two-point function has two insertions on one state. The two insertions are two reads of the link;
the state is a third link of the same type at the same qudit, left unread. -/

/-- A two-point configuration in a world: a center and three distinct links at it, two read and one
unread, all of one type. -/
structure TwoPoint where
  center : Nat
  read1  : Nat × Nat
  read2  : Nat × Nat
  state  : Nat × Nat

/-- The conditions of the two-point definition, checked against a world. -/
def TwoPoint.valid (w : World) (t : TwoPoint) : Bool :=
  let ls := [t.read1, t.read2, t.state]
  w.wellFormed &&
  ls.all (fun l => w.links.contains l && l.1 == t.center) &&
  t.read1 != t.read2 && t.read1 != t.state && t.read2 != t.state &&
  ls.all (fun l => w.typeOf l == w.typeOf t.read1) &&
  w.links.length == 3

/-- The register rule: the readout space has the whole operator space (dA dB)^2 at each read link
and the traceless part (dA^2 - 1)(dB^2 - 1) at the unread link; its dimension is the product. -/
def readoutDim (w : World) (t : TwoPoint) : Nat :=
  (w.links.map (fun l =>
    let d1 := w.dim l.1
    let d2 := w.dim l.2
    if l == t.read1 || l == t.read2 then (d1 * d2) * (d1 * d2)
    else (d1 * d1 - 1) * (d2 * d2 - 1))).foldl (· * ·) 1

/-! ## 1.4 Slots, letters and records

A read can place a letter, an element of the real traceless basis of an end (the paper's Gell-Mann and
Pauli matrices, up to factors of i), at either end of its link, so the two reads have four
slots: slot 2r + e is read r (0 or 1) at end e (0 the read end, 1 the far end). A product record
carries letters at two of the four slots and the identity at the others; a commutator record
is a single letter at the far end of one read minus its image at the far end of the other. -/

/-- The real traceless basis at an end of dimension d: symmetric off-diagonal, antisymmetric
off-diagonal, and the diagonals diag(1, ..., 1, -k, 0, ..., 0). It has d^2 - 1 elements. -/
def tracelessBasis (d : Nat) : List (Mat Int) :=
  let pairs := (List.range d).flatMap (fun i => ((List.range d).filter (fun j => decide (i < j))).map (fun j => (i, j)))
  let sym := pairs.map (fun p => Mat.tabulate d d (fun a b =>
    if (a = p.1 ∧ b = p.2) ∨ (a = p.2 ∧ b = p.1) then 1 else 0))
  let anti := pairs.map (fun p => Mat.tabulate d d (fun a b =>
    if a = p.1 ∧ b = p.2 then 1 else if a = p.2 ∧ b = p.1 then -1 else 0))
  let diag := ((List.range d).filter (fun k => decide (1 ≤ k))).map (fun k => Mat.tabulate d d (fun a b =>
    if a = b ∧ a < k then 1 else if a = b ∧ a = k then -(k : Int) else 0))
  sym ++ anti ++ diag

/-- The end of a slot (0 read end, 1 far end) and the dimension there. -/
def slotEnd (s : Nat) : Nat := s % 2
def slotDim (dA dB s : Nat) : Nat := if slotEnd s = 0 then dA else dB
def slotBasis (dA dB s : Nat) : List (Mat Int) := tracelessBasis (slotDim dA dB s)

/-- The exchange of the two reads, on slots. -/
def exch (s : Nat) : Nat := (s + 2) % 4

/-- A letter assignment: the letter at each of the four slots, `none` for the identity and `some i`
for basis letter i. -/
abbrev Assign := List (Option Nat)

/-- A formal record: an integer combination of letter assignments. -/
abbrev Formal := List (Int × Assign)

/-- The letter at a slot. -/
def letterAt (a : Assign) (s : Nat) : Option Nat := a.getD s none
/-- The slots that carry a letter. -/
def letterSlots (a : Assign) : List Nat := (List.range 4).filter (fun s => (letterAt a s).isSome)
/-- The exchange of the two reads on an assignment: slot s receives the letter of slot exch s. -/
def exchAssign (a : Assign) : Assign := (List.range 4).map (fun s => letterAt a (exch s))
/-- A numeric key ordering assignments (letter indices are below 99 at every end used here). -/
def letterCode : Option Nat → Nat
  | none => 0
  | some i => i + 1
def key (a : Assign) : Nat := (List.range 4).foldl (fun acc s => acc * 100 + letterCode (letterAt a s)) 0

/-- The two-slot products: one letter at each of two distinct slots. -/
def products (dA dB : Nat) : List Assign :=
  (List.range 4).flatMap (fun s1 => ((List.range 4).filter (fun s2 => decide (s1 < s2))).flatMap (fun s2 =>
    (List.range (slotBasis dA dB s1).length).flatMap (fun i1 =>
      (List.range (slotBasis dA dB s2).length).map (fun i2 =>
        (List.range 4).map (fun t => if t = s1 then some i1 else if t = s2 then some i2 else none)))))

/-- The coefficient of an assignment in a formal record. -/
def coeffOf (f : Formal) (a : Assign) : Int := (f.filter (fun t => t.2 == a)).foldl (fun s t => s + t.1) 0
/-- The parity of a record under the exchange of the reads, read from the record: +1 if the exchange
fixes it, -1 if it negates it, 0 otherwise. -/
def parity (f : Formal) : Int :=
  if f.all (fun t => eqZ (coeffOf f (exchAssign t.2)) t.1) then 1
  else if f.all (fun t => eqZ (coeffOf f (exchAssign t.2)) (-t.1)) then -1 else 0

/-- The Weyl commutation sign at an end of dimension d. With clock and shift letters
X|j> = |j+1> and Z|j> = w^j |j> (w a primitive d-th root, written z^2 for z a primitive
2d-th root), XZ = z^(-2) ZX at every j. The phase is a sign exactly when z^(-2) = z^d. -/
def weylPhaseExp (d j : Nat) : Nat := ((2 * j) + (2 * d) - (2 * ((j + 1) % d))) % (2 * d)
def weylIsSign (d : Nat) : Bool := (List.range d).all (fun j => weylPhaseExp d j == d)

/-- The coefficient of a traceless matrix on basis element k, if the pairing divides exactly. -/
def coeffOn (basis : List (Mat Int)) (m : Mat Int) (k : Nat) : Int :=
  Mat.pairZ (basis.getD k []) m / Mat.pairZ (basis.getD k []) (basis.getD k [])

/-- The commutator of far-end letters i and j placed at slot s (the far end of one read), expanded in
the far-end basis. -/
def commAt (dA dB i j s : Nat) : Formal :=
  let b := slotBasis dA dB s
  let c := Mat.subZ (Mat.mulZ (b.getD i []) (b.getD j [])) (Mat.mulZ (b.getD j []) (b.getD i []))
  ((List.range b.length).filter (fun k => neZ (coeffOn b c k))).map (fun k =>
    (coeffOn b c k, (List.range 4).map (fun t => if t = s then some k else none)))

/-- The order sign of a commutator record at an end of dimension d: -1 where the Weyl phase is a sign. -/
def orderSign (d : Nat) : Int := if weylIsSign d then -1 else 1

/-- The candidates for commutator records for the pair of far-end letters i < j: the commutator at the far
end of each read is a further record of that read's qudit, and the exchange of the reads carries one
to the other (slot 1 to slot 3). The pair spans two combinations, their sum and their difference. -/
def commutatorCandidates (dA dB i j : Nat) : List Formal :=
  let c1 := commAt dA dB i j 1
  let c3 := commAt dA dB i j 3
  [c1 ++ c3, c1 ++ c3.map (fun t => (-t.1, t.2))]

/-- Whether both letters of a two-letter record sit at one end: then they are two reads' letters of
one type. -/
def sameEnd (f : Formal) : Bool := match f with
  | (_, a) :: _ => (match letterSlots a with | [s1, s2] => slotEnd s1 == slotEnd s2 | _ => false)
  | [] => false

/-- A record, with what the two exchanges need: its form; its own sign (+1 for a product, whose two
letters sit at distinct slots and commute; the order sign for a commutator record); and, when
it carries two letters of one type, the record with those two reads exchanged. -/
structure Rec where
  form  : Formal
  sign  : Int
  reads : Option Formal

/-- The commutator records (`commutatorRecs`): where the Weyl phase at the far end is a sign, the combinations of
the two commutators on which the exchange of the reads reads the order sign. These are the
differences, odd under the exchange; the sums read +1 and are not commutator records. Each carries
two letters of one type, the two qubit reads it orders; exchanging them gives the same combination
built from the letters in the other order. -/
def commutatorRecs (dA dB : Nat) : List Rec :=
  if weylIsSign dB then
    let nb := (slotBasis dA dB 1).length
    (List.range nb).flatMap (fun i => ((List.range nb).filter (fun j => decide (i < j))).flatMap (fun j =>
      ((commutatorCandidates dA dB i j).zip (commutatorCandidates dA dB j i)).filterMap (fun fg =>
        if eqZ (parity fg.1) (orderSign dB) then some ⟨fg.1, orderSign dB, some fg.2⟩ else none)))
  else []
def commutatorRecords (dA dB : Nat) : List Formal := (commutatorRecs dA dB).map Rec.form

/-- KNOWN, "jointly": the product records span the joint record space of the two reads, all
two-slot products. KNOWN, "under every exchange of its reads": the readout is invariant under the exchange of the
reads, so the records are the exchange eigenbasis, both eigenvalues kept (sums and differences of
each product with its image, and the exchange-fixed products). KNOWN, its consequence for two reads
(an exchange done twice is no exchange, so the phase it returns must be a sign): two reads of one qudit
that commute only up to a sign fix a further record, with their order as its sign; these are
`commutatorRecs`, the paper's commutator records, three at the qubit. A product
whose two letters sit at one end carries two reads' letters of one type; exchanging those two reads
moves each letter to the other read's slot at the same end. -/
def recs (dA dB : Nat) : List Rec :=
  let ps := products dA dB
  let mk (f : Formal) : Rec :=
    ⟨f, 1, if sameEnd f then some (f.map (fun u => (u.1, exchAssign u.2))) else none⟩
  let fixedP := (ps.filter (fun p => exchAssign p == p)).map (fun p => mk [(1, p)])
  let reps := ps.filter (fun p => decide (key p < key (exchAssign p)))
  let odd := reps.map (fun p => mk [(1, p), (-1, exchAssign p)])
  let even := reps.map (fun p => mk [(1, p), (1, exchAssign p)])
  odd ++ even ++ fixedP ++ commutatorRecs dA dB
/-- The records as formal combinations. -/
def records (dA dB : Nat) : List Formal := (recs dA dB).map Rec.form

/-! ## 1.5 The two exchanges

X EXCHANGES TWO READS: it acts on a record that carries two letters of one type by exchanging those
two reads. Y EXCHANGES THE TWO READ LINKS: as a map on qudits it carries each end of one read link to
the same end of the other, so it leaves the shared center in place and swaps the two far qudits; it acts on a
record that it moves, changing the qudits the record occupies. A record SURVIVES an exchange that
returns it times its own sign (KNOWN: it is then fixed under the exchange, up to the
sign the record carries; the commutator records carry the order sign). -/

/-- The qudit at slot s of a two-point configuration: the read end of both reads is the shared center
(slot end 0; the end rule makes the center the read end); the far end of read r is the far qudit of
its link. -/
def slotQudit (t : TwoPoint) (s : Nat) : Nat :=
  if slotEnd s = 0 then t.center else if s / 2 = 0 then t.read1.2 else t.read2.2

/-- The exchange of the two read links as a map on qudits: each end of one read link goes to the same
end of the other. The two read links share their first end, the center, which it therefore fixes. -/
def linkSwap (t : TwoPoint) (q : Nat) : Nat :=
  if q = t.read1.2 then t.read2.2 else if q = t.read2.2 then t.read1.2
  else if q = t.read1.1 then t.read2.1 else if q = t.read2.1 then t.read1.1 else q

/-- The qudits a letter assignment occupies. -/
def occupies (t : TwoPoint) (a : Assign) : List Nat := (letterSlots a).map (slotQudit t)
def sameSet (xs ys : List Nat) : Bool := xs.all (fun x => ys.contains x) && ys.all (fun y => xs.contains y)

/-- Whether the exchange of the read links moves a record: it changes the qudits the record occupies. -/
def moved (t : TwoPoint) (f : Formal) : Bool := match f with
  | (_, a) :: _ => !(sameSet ((occupies t a).map (linkSwap t)) (occupies t a))
  | [] => false

/-- Two formal records are equal as combinations. -/
def sameForm (f g : Formal) : Bool :=
  f.all (fun u => eqZ (coeffOf g u.2) u.1) && g.all (fun u => eqZ (coeffOf f u.2) u.1)

/-- A record survives an exchange that returns it times its own sign. -/
def survives (r : Rec) (image : Option Formal) : Bool :=
  match image with
  | some g => sameForm g (r.form.map (fun u => (r.sign * u.1, u.2)))
  | none => false

/-- X, the exchange of two reads: -1 where the record survives it. -/
def sigX (r : Rec) : Int := if survives r r.reads then -1 else 1
/-- Y, the exchange of the read links (on slots, `exchAssign`), where it moves the record: -1 where
the record survives it. -/
def sigY (t : TwoPoint) (r : Rec) : Int :=
  if survives r (if moved t r.form then some (r.form.map (fun u => (u.1, exchAssign u.2))) else none)
  then -1 else 1

/-! ## 1.6 The weight law

A record that survives an exchange acting at an end of dimension d carries the factor d in k (sqrt d
in its weight), and the factors of the exchanges it survives multiply.
X acts where the reads are taken: a read is an act at its own end, which passes its basis along the
pair to the far end (READ), so exchanging two reads is an exchange of acts at the read end, wherever
their letters sit. Y moves only the far qudits: the exchange of the read links leaves the shared
center in place, its copies being one qudit (SHARED). -/

/-- The end at which X acts: the read end. -/
def wX (dA dB : Nat) : Nat := readEnd dA dB
/-- The factor of Y at a record: the product, over the two ends, of the dimension of the end wherever
the record has a letter on a qudit that the exchange of the read links moves. -/
def wY (w : World) (t : TwoPoint) (r : Rec) : Nat :=
  let a := (r.form.headD (0, [])).2
  let at_ (e : Nat) : Nat :=
    match (letterSlots a).filter (fun s => slotEnd s == e && linkSwap t (slotQudit t s) != slotQudit t s) with
    | s :: _ => w.dim (slotQudit t s)
    | [] => 1
  at_ 0 * at_ 1

/-- The squared weight of a record: the product of the factors of the exchanges it survives. -/
def kOf (x : Nat) (w : World) (t : TwoPoint) (r : Rec) : Nat :=
  (if eqZ (sigX r) (-1) then x else 1) * (if eqZ (sigY t r) (-1) then wY w t r else 1)

/-! ## 1.7 The normalized readout (definition of the computed quantity)

A record enters with weight sqrt k: a record carries the two insertions of the two-point function as
two letters, and its weight is its matrix element over the matched directions; k itself would be the
record composed with its adjoint, four letters, the closed read. The dressed insertion carries the
weight on the direction of each record and vanishes on the directions no read fixes; the bare
insertion is the identity of the readout space. The readout is the normalized trace: the sum of the
weights over the dimension of the readout space.

The value is returned as an exact element: a list of (radicand, integer coefficient), meaning
sum of coefficient * sqrt(radicand), over the readout dimension. -/

/-- Add one occurrence of sqrt k to a list of (radicand, coefficient). -/
def addRoot (k : Nat) : List (Nat × Int) → List (Nat × Int)
  | [] => [(k, 1)]
  | (r, c) :: rest => if r = k then (r, c + 1) :: rest
                      else if k < r then (k, 1) :: (r, c) :: rest
                      else (r, c) :: addRoot k rest

/-- The readout of a two-point configuration, as two numbers: the trace of the dressed insertion,
which on the record directions is the sum over records of sqrt k (as radicands with coefficients),
and the readout dimension, the trace of the bare insertion. The file computes these two numbers; it
does not build the readout space itself. The slots are oriented by the end rule: slot end 0 is the
end where the reads are taken. -/
def readout (w : World) (t : TwoPoint) : List (Nat × Int) × Nat :=
  let dc := w.dim t.center
  let df := w.dim t.read1.2
  let dA := readEnd dc df
  let dB := farEnd dc df
  ((recs dA dB).foldl (fun acc r => addRoot (kOf (wX dc df) w t r) acc) [], readoutDim w t)

/-! ## 1.8 The object

A qutrit (qudit 0) shared by three links to three qubits (qudits 1, 2, 3): the links to qubits 1 and
2 are read, the link to qubit 3 is the unread state. -/

def objectWorld : World where
  qudits := 4
  dim := fun q => if q = 0 then 3 else 2
  links := [(0, 1), (0, 2), (0, 3)]

def objectTwoPoint : TwoPoint where
  center := 0
  read1 := (0, 1)
  read2 := (0, 2)
  state := (0, 3)

/-! ## 1.9 Definitions used only to select the link (Part 5)

None of these enters the value of Part 4. -/

/-- READERS (the remark of the paper, Sec. S2, an internal argument for the cap, not the route the paper uses): the
readers are the two smallest qudits, of dimensions 2 and 3. -/
def readers : List Nat := [2, 3]
/-- A reader of dimension r spans an end of dimension e when its reads fix it, which happens exactly
when e ≤ r (`fixesFar_iff_le` checks this against `fixesFar`). -/
def spansEnd (r e : Nat) : Prop := e ≤ r
/-- A type is spanned by the readers when each of its ends is spanned by a reader: the first half of
the remark. Under it every type with an end of dimension 4 or more is dark, and (3,3) is spanned. -/
def readable (d1 d2 : Nat) : Prop := (∃ r ∈ readers, spansEnd r d1) ∧ (∃ r ∈ readers, spansEnd r d2)

/-- The second half of the remark. A read reaches its far end by the transpose identity, under which
the far end transforms by the complex conjugate of a matching. The far end holds the passed basis as
a basis of its own when a matching there undoes that conjugation. At a qubit sigma_y does
(`qubit_absorbs_conjugation`); at a qutrit no unitary does, since the defining representation of
SU(3) is inequivalent to its conjugate (`qutrit_conjugation_obstruction` gives the trace obstruction
on the matching group). The file checks these two facts on the finite matching groups; the definition
records their outcome. Ends of dimension 4 or more are excluded by the readers anyway. -/
def absorbsConjugation (d : Nat) : Prop := d = 2

/-- A type (a, b) is read through its end a when a reader spans a, the read there fixes the far end b
(b ≤ a, the end rule's computation), and b absorbs the conjugation. -/
def readThrough (a b : Nat) : Prop := (∃ r ∈ readers, spansEnd r a) ∧ b ≤ a ∧ absorbsConjugation b
/-- A type is readable by reads when it is read through one of its ends. -/
def readableByReads (d1 d2 : Nat) : Prop := readThrough d1 d2 ∨ readThrough d2 d1

/-- THE READ CAP, as a hypothesis on a readability predicate: a type of dimensions d1, d2 ≥ 2 is
readable iff d1 d2 ≤ 6. It cites the literature. The paper defines a type as readable when every positive
map between the operator algebras of its ends is decomposable, since to fix is to determine with certainty, and
certainty leaves no consistent relation between the ends open, and by Størmer (Acta Math. 110, 233, 1963), Woronowicz
(Rep. Math. Phys. 10, 165, 1976) and Choi (Linear Algebra Appl. 12, 95, 1975) that holds exactly when
d1 d2 ≤ 6. Those theorems are not formalized here: the cap is their numerical form, carried as a named
hypothesis and used only in the selection theorems. -/
def ReadCap (Readable : Nat → Nat → Prop) : Prop :=
  ∀ d1 d2, 2 ≤ d1 → 2 ≤ d2 → (Readable d1 d2 ↔ d1 * d2 ≤ 6)

/-- An acting central charge: the central generator acts on the link as i (d2 - d1), nonzero
(`acting_charge`). -/
def actingCharge (d1 d2 : Nat) : Prop := d1 ≠ d2

/-- A configuration: a shared center of dimension `center` with arms, each a link to a far end of
dimension `far`, read or unread. -/
structure Arm where
  far : Nat
  read : Bool
deriving DecidableEq
structure Config where
  center : Nat
  arms : List Arm
deriving DecidableEq
/-- The configuration of a two-point configuration in a world: its center and its three arms. -/
def configOf (w : World) (t : TwoPoint) : Config :=
  ⟨w.dim t.center, [t.read1, t.read2, t.state].map (fun l => ⟨w.dim l.2, l == t.read1 || l == t.read2⟩)⟩
/-- The two-point definition on configurations: three arms of one type, exactly two of them read. -/
def Config.twoPoint (c : Config) : Prop :=
  c.arms.length = 3 ∧ (c.arms.filter (·.read)).length = 2 ∧ ∀ a ∈ c.arms, ∀ b ∈ c.arms, a.far = b.far
/-- The end rule on configurations: the reads are taken at the center and fix each read arm's far
end. -/
def Config.endRule (c : Config) : Prop := ∀ a ∈ c.arms, a.read = true → fixesFar c.center a.far = true

/-! # Part 2. The algebra of the link

The identification algebra of the (2,3) link: block-diagonal traceless anti-Hermitian operators on
C^2 (+) C^3, with indices 0, 1 at the qubit and 2, 3, 4 at the qutrit. It acts on the six-dimensional
link, indexed by qubit direction times three plus qutrit direction, as X1 (x) 1 + 1 (x) X2. -/

section Algebra
open Mat

def E5 (a b : Nat) : Mat GI := tabulate 5 5 (fun i j => if i = a ∧ j = b then GI.one else GI.zero)
def gAnti (a b : Nat) : Mat GI := subG (E5 a b) (E5 b a)
def gSym (a b : Nat) : Mat GI := scaleG GI.I (addG (E5 a b) (E5 b a))
def gDiag (a b : Nat) : Mat GI := scaleG GI.I (subG (E5 a a) (E5 b b))
/-- Q = i diag(3, 3; -2, -2, -2). -/
def Q : Mat GI := tabulate 5 5 (fun i j => if i = j then (if i < 2 then ⟨0, 3⟩ else ⟨0, -2⟩) else GI.zero)
/-- The twelve generators: su(2), su(3), and the center Q. -/
def gens : List (Mat GI) :=
  [gAnti 0 1, gSym 0 1, gDiag 0 1,
   gAnti 2 3, gAnti 2 4, gAnti 3 4, gSym 2 3, gSym 2 4, gSym 3 4, gDiag 2 3, gDiag 3 4, Q]

/-- The qubit block and the qutrit block of a 5 x 5 matrix. -/
def block2 (x : Mat GI) : Mat GI := tabulate 2 2 (fun i j => get GI.zero x i j)
def block3 (x : Mat GI) : Mat GI := tabulate 3 3 (fun i j => get GI.zero x (i + 2) (j + 2))
/-- The action on the link: X1 (x) 1 + 1 (x) X2. -/
def onLink (x : Mat GI) : Mat GI := addG (kronG (block2 x) (idG 3)) (kronG (idG 2) (block3 x))
/-- The flat pair ket of the link: matched directions (0,0) and (1,1). -/
def ket : List GI := [GI.one, GI.zero, GI.zero, GI.zero, GI.one, GI.zero]

/-- Q acts on the whole link as i times the identity. -/
theorem Q_on_link : onLink Q = scaleG GI.I (idG 6) := by decide +kernel

/-- Q is central: it commutes with all twelve generators. -/
theorem Q_central : gens.all (fun g => isZeroG (commG Q g)) = true := by decide +kernel

/-- Real coordinates of a vector of Gaussian integers. -/
def realCoords (v : List GI) : List Int := v.flatMap (fun z => [z.re, z.im])

/-- The twelve generators are independent. -/
theorem generators_independent : rank (gens.map (fun g => realCoords (g.flatMap id))) = 12 := by
  decide +kernel

/-- The center is one-dimensional: the map from the span of the generators to their brackets with
all twelve generators has rank eleven, so its kernel, the center, is the line of Q. -/
theorem center_one_dimensional :
    rank (gens.map (fun g => gens.flatMap (fun h => realCoords ((commG g h).flatMap id)))) = 11 := by
  decide +kernel

/-- Q = 6 i Y with Y = diag(1/2, 1/2; -1/3, -1/3, -1/3), the hypercharge of the SU(5) embedding. -/
def sixY : Mat GI := tabulate 5 5 (fun i j => if i = j then (if i < 2 then GI.ofInt 3 else GI.ofInt (-2)) else GI.zero)
theorem Q_is_six_i_Y : Q = scaleG GI.I sixY := by decide +kernel

/-- The action of the twelve generators on the pair ket has rank eight, so the stabilizer of the
pair ket has dimension four. -/
theorem action_rank : rank (gens.map (fun g => realCoords (applyG (onLink g) ket))) = 8 := by decide +kernel

/-- Four elements annihilating the pair ket: the diagonal su(2) (e1 + e4, e2 - e7, e3 - e10) and
the unbroken generator U = i diag(1, 1; -1, -1, 0). -/
def U : Mat GI := tabulate 5 5 (fun i j => if i = j then (if i < 2 then GI.I else if i < 4 then ⟨0, -1⟩ else GI.zero) else GI.zero)
def stab : List (Mat GI) := [addG (gAnti 0 1) (gAnti 2 3), subG (gSym 0 1) (gSym 2 3), subG (gDiag 0 1) (gDiag 2 3), U]
theorem stab_annihilates : stab.all (fun x => (applyG (onLink x) ket).all (· == GI.zero)) = true := by decide +kernel
theorem stab_independent : rank (stab.map (fun x => realCoords (x.flatMap id))) = 4 := by decide +kernel
/-- U commutes with the diagonal su(2): the stabilizer is su(2) (+) u(1), with center the line of U. -/
theorem U_central_in_stab : stab.all (fun x => isZeroG (commG U x)) = true := by decide +kernel
/-- The center of the stabilizer is one-dimensional: brackets within the stabilizer have rank three. -/
theorem stab_center_one_dimensional :
    rank (stab.map (fun x => stab.flatMap (fun y => realCoords ((commG x y).flatMap id)))) = 3 := by
  decide +kernel
/-- Q reads i on the pair ket, U reads zero. -/
theorem Q_on_ket : applyG (onLink Q) ket = ket.map (GI.mul GI.I) := by decide +kernel

/-- The unit of the count: Q acts on the link as a scalar s = i (computed). Its left action on the
readout space, built from operator spaces of the link, is then s times the identity, and the trace
form B(Q, Q) = -tr(s s 1)/dim R is -s^2, which is computed here to be 1. The trace over the readout
space is not built. -/
def scalarOn (m : Mat GI) : Option GI :=
  let s := get GI.zero m 0 0
  if m == scaleG s (idG m.length) then some s else none
theorem unit_of_the_count : (scalarOn (onLink Q)).map (fun s => GI.neg (GI.mul s s)) = some GI.one := by
  decide +kernel

/-- The acting charge i(d2 - d1) is nonzero exactly at unequal ends (integer arithmetic; the action
of Q itself is computed at (2,3) in `Q_on_link`). -/
theorem acting_charge (d1 d2 : Nat) : ((d2 : Int) - d1 ≠ 0) ↔ d1 ≠ d2 := by omega

end Algebra

/-! # Part 3. The records and their sectors -/

/-- The traceless bases have d^2 - 1 elements: 8 at the qutrit, 3 at the qubit. -/
theorem basis_sizes : (tracelessBasis 3).length = 8 ∧ (tracelessBasis 2).length = 3 := by decide +kernel

/-- The basis at each end is orthogonal under the trace pairing, and no element pairs to zero with
itself. -/
def orthogonalBasis (d : Nat) : Bool :=
  let b := tracelessBasis d
  (List.range b.length).all (fun i => (List.range b.length).all (fun j =>
    if i = j then neZ (Mat.pairZ (b.getD i []) (b.getD j [])) else eqZ (Mat.pairZ (b.getD i []) (b.getD j [])) 0))
theorem bases_orthogonal : orthogonalBasis 3 = true ∧ orthogonalBasis 2 = true := by decide +kernel

/-- Anticommutation: the Weyl commutation phase is a sign at the qubit and not at the qutrit, so the
commutator records arise only at the qubit. -/
theorem weyl_sign : weylIsSign 2 = true ∧ weylIsSign 3 = false := by decide +kernel

/-- Each commutator of two qubit letters is a single qubit letter, up to a factor: its expansion
reconstructs it exactly. -/
def commExact (i j : Nat) : Bool :=
  let b := tracelessBasis 2
  let c := Mat.subZ (Mat.mulZ (b.getD i []) (b.getD j [])) (Mat.mulZ (b.getD j []) (b.getD i []))
  let f := commAt 3 2 i j 1
  f.length == 1 &&
  f.all (fun t => decide (Mat.scaleZ t.1 (b.getD ((letterAt t.2 1).getD 0) []) = c))
theorem commutators_single : (commExact 0 1 && commExact 0 2 && commExact 1 2) = true := by decide +kernel

/-- The commutator records at the qutrit--qubit link: of the six combinations of the
commutators at the two read qubits, exactly three read the order sign under the exchange of the
reads; they are the differences, odd under the exchange, and the three sums are even. -/
theorem commutator_records :
    (commutatorRecords 3 2).length = 3 ∧
    (commutatorRecords 3 2).all (fun f => eqZ (parity f) (-1)) = true ∧
    (commutatorRecords 3 2).all (fun f => (letterSlots (f.headD (0, [])).2).length == 1) = true ∧
    ([(0, 1), (0, 2), (1, 2)].all (fun p => eqZ (parity ((commutatorCandidates 3 2 p.1 p.2).headD [])) 1)) = true := by
  decide +kernel

/-- Every one of the 172 records is an eigenvector of the exchange of the reads. -/
theorem records_exchange_eigenbasis : (records 3 2).all (fun f => neZ (parity f)) = true := by decide +kernel

/-- The record counts: 169 two-slot products, and 172 records with the three commutators. -/
theorem product_count : (products 3 2).length = 169 := by decide +kernel
theorem record_count : (records 3 2).length = 172 := by decide +kernel

/-- The trace pairing at one slot, from the matrices: the identity pairs to the end dimension, a
letter to the identity pairs to zero (tracelessness), two letters to the trace pairing tr(A^T B). -/
def slotPair (dA dB s : Nat) (x y : Option Nat) : Int :=
  match x, y with
  | none, none => slotDim dA dB s
  | some i, some j => Mat.pairZ ((slotBasis dA dB s).getD i []) ((slotBasis dA dB s).getD j [])
  | _, _ => 0
/-- The squared norm of a letter of the basis at an end of dimension d: 2 for each off-diagonal
letter, k(k+1) for the diagonal letter diag(1, ..., 1, -k). -/
def letterNorm (d i : Nat) : Int :=
  if i < d * (d - 1) then 2 else ((i - d * (d - 1) + 1 : Nat) : Int) * ((i - d * (d - 1) + 2 : Nat) : Int)
/-- The same pairing written as a table: zero off the diagonal, the squared norms on it. -/
def slotTable (dA dB s : Nat) (x y : Option Nat) : Int :=
  if x = y then (match x with | none => (slotDim dA dB s : Int) | some i => letterNorm (slotDim dA dB s) i) else 0
/-- The letters that can sit at slot s: the identity (none) and the basis indices. -/
def slotLetters (dA dB s : Nat) : List (Option Nat) := none :: (List.range (slotBasis dA dB s).length).map some

/-- The table is the matrix trace pairing at every pair of letters at every slot (the bases are
orthogonal and traceless). -/
theorem slot_table_agrees :
    (List.range 4).all (fun s => (slotLetters 3 2 s).all (fun x => (slotLetters 3 2 s).all (fun y =>
      eqZ (slotTable 3 2 s x y) (slotPair 3 2 s x y)))) = true := by decide +kernel

/-- Every letter of every record is a letter of its slot. -/
theorem record_letters_in_range :
    (records 3 2).all (fun f => f.all (fun t => (List.range 4).all (fun s =>
      (slotLetters 3 2 s).contains (letterAt t.2 s)))) = true := by decide +kernel

/-- The trace pairing of letter assignments: on the tensor product of the slots it is the product of
the slot pairings. The pairing of formal records is its bilinear extension. -/
def assignPair (dA dB : Nat) (a b : Assign) : Int :=
  ((List.range 4).map (fun s => slotTable dA dB s (letterAt a s) (letterAt b s))).foldl (· * ·) 1
def recordPair (dA dB : Nat) (f g : Formal) : Int :=
  (f.flatMap (fun t => g.map (fun u => t.1 * u.1 * assignPair dA dB t.2 u.2))).foldl (· + ·) 0

/-- Every pair with one element from each list satisfies `p`. -/
def cross {α : Type} (p : α → α → Bool) (xs ys : List α) : Bool := xs.all (fun x => ys.all (p x))

theorem allPairs_append {α : Type} (q : α → Bool) (p : α → α → Bool) (xs ys : List α) :
    allPairs q p (xs ++ ys) = (allPairs q p xs && allPairs q p ys && cross p xs ys) := by
  induction xs with
  | nil => simp [allPairs, cross]
  | cons x xs ih =>
    simp only [List.cons_append, allPairs, ih, cross, List.all_append, List.all_cons]
    cases q x <;> cases xs.all (p x) <;> cases ys.all (p x) <;> cases allPairs q p xs <;>
      cases allPairs q p ys <;> cases xs.all (fun x => ys.all (p x)) <;> rfl

theorem cross_append_left {α : Type} (p : α → α → Bool) (xs xs' ys : List α) :
    cross p (xs ++ xs') ys = (cross p xs ys && cross p xs' ys) := by simp [cross, List.all_append]
theorem cross_append_right {α : Type} (p : α → α → Bool) (xs ys ys' : List α) :
    cross p xs (ys ++ ys') = (cross p xs ys && cross p xs ys') := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
    simp only [cross, List.all_cons, List.all_append] at ih ⊢
    rw [ih]
    cases ys.all (p x) <;> cases ys'.all (p x) <;> cases xs.all (fun x => ys.all (p x)) <;>
      cases xs.all (fun x => ys'.all (p x)) <;> rfl

/-- The record pairing as the two predicates of the orthogonality check. -/
def nonNull (f : Formal) : Bool := neZ (recordPair 3 2 f f)
def orthogonal (f g : Formal) : Bool := eqZ (recordPair 3 2 f g) 0
/-- The records in four blocks of 43, for a kernel check in pieces. -/
def block (k : Nat) : List Formal := ((records 3 2).drop (43 * k)).take 43
theorem records_blocks : records 3 2 = (block 0 ++ block 1) ++ (block 2 ++ block 3) := by decide +kernel

theorem orth00 : allPairs nonNull orthogonal (block 0) = true := by decide +kernel
theorem orth11 : allPairs nonNull orthogonal (block 1) = true := by decide +kernel
theorem orth22 : allPairs nonNull orthogonal (block 2) = true := by decide +kernel
theorem orth33 : allPairs nonNull orthogonal (block 3) = true := by decide +kernel
theorem orth01 : cross orthogonal (block 0) (block 1) = true := by decide +kernel
theorem orth23 : cross orthogonal (block 2) (block 3) = true := by decide +kernel
theorem orth02 : cross orthogonal (block 0) (block 2) = true := by decide +kernel
theorem orth03 : cross orthogonal (block 0) (block 3) = true := by decide +kernel
theorem orth12 : cross orthogonal (block 1) (block 2) = true := by decide +kernel
theorem orth13 : cross orthogonal (block 1) (block 3) = true := by decide +kernel

/-- The 172 records are mutually orthogonal under the trace pairing and none is null, so they are
172 independent directions. (The pairing is symmetric, so each unordered pair is checked once.) -/
theorem records_orthogonal : allPairs nonNull orthogonal (records 3 2) = true := by
  rw [records_blocks, allPairs_append, allPairs_append, allPairs_append, cross_append_left,
    cross_append_right, cross_append_right, orth00, orth11, orth22, orth33, orth01, orth23,
    orth02, orth03, orth12, orth13]
  rfl

/-- The sectors by the two exchanges: (+,+) 79, (+,-) 48, (-,+) 42, (-,-) 3. -/
def sectorCount (t : TwoPoint) (rs : List Rec) (x y : Int) : Nat :=
  (rs.filter (fun r => eqZ (sigX r) x && eqZ (sigY t r) y)).length
theorem sectors :
    sectorCount objectTwoPoint (recs 3 2) 1 1 = 79 ∧ sectorCount objectTwoPoint (recs 3 2) 1 (-1) = 48 ∧
    sectorCount objectTwoPoint (recs 3 2) (-1) 1 = 42 ∧ sectorCount objectTwoPoint (recs 3 2) (-1) (-1) = 3 := by
  decide +kernel

/-- The sector sizes agree with the polynomials of Lemma S10 evaluated at a = 8, b = 3 (a check at
that point, not a polynomial identity). -/
theorem sector_polynomials :
    let a := (tracelessBasis 3).length
    let b := (tracelessBasis 2).length
    2 * sectorCount objectTwoPoint (recs 3 2) 1 1 = a * a - a + b * b - b + 4 * a * b ∧
    sectorCount objectTwoPoint (recs 3 2) 1 (-1) = 2 * a * b ∧
    2 * sectorCount objectTwoPoint (recs 3 2) (-1) 1 = a * a + a + b * b + b ∧
    2 * sectorCount objectTwoPoint (recs 3 2) (-1) (-1) = b * (b - 1) := by decide +kernel

/-- The pairing description of the two exchanges (Eq. S3 of the paper): X reads minus the parity at
records whose two letters sit at one end, Y at records with one letter at each end, and both read the
order sign at the single-letter commutator records. -/
def degree (f : Formal) : Nat := match f with | (_, a) :: _ => (letterSlots a).length | [] => 0
def pairingX (dB : Nat) (f : Formal) : Int :=
  if degree f = 1 then orderSign dB else if sameEnd f then -parity f else 1
def pairingY (dB : Nat) (f : Formal) : Int :=
  if degree f = 1 then orderSign dB else if sameEnd f then 1 else -parity f

/-- The two exchanges, defined as the exchange of two reads and the exchange of the read links with
survival up to the record's own sign, agree with the pairing description at every one of the 172
records of the object. -/
theorem exchanges_agree_with_pairings :
    (recs 3 2).all (fun r => eqZ (sigX r) (pairingX 2 r.form) &&
      eqZ (sigY objectTwoPoint r) (pairingY 2 r.form)) = true := by decide +kernel

/-- Which records each exchange acts on: X on the 73 + 3 records that carry two reads' letters of one
type (both slots at one end, and the commutator records); Y on the 96 + 3 records the exchange
of the read links moves (one slot at each end, and the commutator records). -/
theorem exchange_domains :
    ((recs 3 2).filter (fun r => r.reads.isSome)).length = 76 ∧
    ((recs 3 2).filter (fun r => moved objectTwoPoint r.form)).length = 99 := by decide +kernel

/-! # Part 4. The value -/

/-- The end rule: at the qutrit--qubit link, reads at the qutrit end fix the qubit, and reads at the
qubit end do not fix the qutrit (the third direction is fixed by no read). -/
theorem end_rule : fixesFar 3 2 = true ∧ fixesFar 2 3 = false := by decide +kernel

/-- The weight law at the object: X acts at the qutrit (3); the exchange of the read links leaves the
shared qutrit in place and swaps the two read qubits, so at every record it moves Y acts at the qubits (2). -/
theorem weight_factors :
    wX 3 2 = 3 ∧ linkSwap objectTwoPoint 0 = 0 ∧ linkSwap objectTwoPoint 1 = 2 ∧
    linkSwap objectTwoPoint 2 = 1 ∧
    (recs 3 2).all (fun r => !moved objectTwoPoint r.form || wY objectWorld objectTwoPoint r == 2) = true := by
  decide +kernel

/-- The object is a two-point configuration, and its qutrit is shared. -/
theorem object_is_two_point : TwoPoint.valid objectWorld objectTwoPoint = true ∧
    objectWorld.shared 0 = true := by decide +kernel

/-- The object's links are of unequal type, a qutrit with a qubit: none has two ends of one dimension
(`isPair`). -/
theorem object_links_unequal : objectWorld.links.all (fun l => !objectWorld.isPair l) = true := by
  decide +kernel

/-- The register rule, evaluated at the object: 24 at the unread link times 36 at each read link. -/
theorem readout_dimension : readoutDim objectWorld objectTwoPoint = 24 * 36 * 36 := by decide +kernel

/-- THE VALUE. The readout of the two-point configuration of the qutrit--qubit link is
(79 + 48 sqrt 2 + 42 sqrt 3 + 3 sqrt 6) / 31104. -/
theorem dressing_of_the_qutrit_qubit_link :
    readout objectWorld objectTwoPoint = ([(1, 79), (2, 48), (3, 42), (6, 3)], 31104) := by
  decide +kernel

/-! # Part 5. Selection: the link and its configuration -/

/-- A reader's reads fix an end exactly when the end is no larger than the reader, checked against
the definition `fixesFar` at every pair of dimensions from 2 to 6. -/
theorem fixesFar_iff_le : (List.range 7).all (fun r => (List.range 7).all (fun e =>
    if 2 ≤ r ∧ 2 ≤ e then fixesFar r e == decide (e ≤ r) else true)) = true := by decide +kernel

/-- Readable types are exactly those with both ends of dimension at most three. -/
theorem readable_iff (d1 d2 : Nat) : readable d1 d2 ↔ d1 ≤ 3 ∧ d2 ≤ 3 := by
  simp only [readable, readers, spansEnd, List.mem_cons, List.not_mem_nil, exists_eq_or_imp, exists_eq_left,
    or_false]
  omega

/-- SELECTION UNDER THE READ CAP (the cap as a hypothesis). -/
theorem selection_under_read_cap (Readable : Nat → Nat → Prop) (hcap : ReadCap Readable)
    (d1 d2 : Nat) (h1 : 2 ≤ d1) (h2 : 2 ≤ d2) (hr : Readable d1 d2) (hq : actingCharge d1 d2) :
    (d1 = 2 ∧ d2 = 3) ∨ (d1 = 3 ∧ d2 = 2) := by
  have h6 : d1 * d2 ≤ 6 := (hcap d1 d2 h1 h2).mp hr
  have a1 : d1 ≤ 3 := by
    rcases Nat.lt_or_ge 3 d1 with h | h
    · have : 4 * 2 ≤ d1 * d2 := Nat.mul_le_mul h h2
      omega
    · exact h
  have a2 : d2 ≤ 3 := by
    rcases Nat.lt_or_ge 3 d2 with h | h
    · have : 2 * 4 ≤ d1 * d2 := Nat.mul_le_mul h1 h
      omega
    · exact h
  unfold actingCharge at hq
  omega

/-- A type read through an end has both ends of dimension at most three. -/
theorem readThrough_bound (a b : Nat) (h : readThrough a b) : a ≤ 3 ∧ b ≤ 3 := by
  obtain ⟨⟨r, hr, hra⟩, hba, _⟩ := h
  simp [readers] at hr
  unfold spansEnd at hra
  omega

/-- THE READERS REPRODUCE THE CAP. A type is readable by reads exactly when d1 d2 ≤ 6: (2,2), (2,3)
read at the qutrit, and (3,2); (3,3) is dark because its far end is a qutrit whichever end is read,
and every type with an end of dimension 4 or more is dark. -/
theorem readers_reproduce_the_cap (d1 d2 : Nat) (h1 : 2 ≤ d1) (h2 : 2 ≤ d2) :
    readableByReads d1 d2 ↔ d1 * d2 ≤ 6 := by
  by_cases hs : d1 ≤ 3 ∧ d2 ≤ 3
  · rcases (by omega : d1 = 2 ∨ d1 = 3) with rfl | rfl <;>
      rcases (by omega : d2 = 2 ∨ d2 = 3) with rfl | rfl <;>
      (unfold readableByReads readThrough absorbsConjugation spansEnd; decide)
  · constructor
    · intro h
      rcases h with h | h
      · have := readThrough_bound _ _ h; omega
      · have := readThrough_bound _ _ h; omega
    · intro h
      exfalso; apply hs
      constructor
      · by_cases hc : d1 ≤ 3
        · exact hc
        · have : 4 * 2 ≤ d1 * d2 := Nat.mul_le_mul (by omega) h2
          omega
      · by_cases hc : d2 ≤ 3
        · exact hc
        · have : 2 * 4 ≤ d1 * d2 := Nat.mul_le_mul h1 (by omega)
          omega

/-- Readability by reads satisfies the read cap, so the selection under the read cap holds for it with no hypothesis. -/
theorem reads_satisfy_the_read_cap : ReadCap readableByReads :=
  fun d1 d2 h1 h2 => readers_reproduce_the_cap d1 d2 h1 h2

/-- THE CONFIGURATION, Theorem 1 of the paper. A two-point configuration that obeys the end rule, with a readable type and
an acting charge, has a qutrit center and three qubit arms, two of them read: it is the object. -/
theorem configuration_unique (c : Config) (h2 : 2 ≤ c.center) (htp : c.twoPoint) (hend : c.endRule)
    (hr : ∀ a ∈ c.arms, 2 ≤ a.far ∧ readable c.center a.far)
    (hq : ∀ a ∈ c.arms, actingCharge c.center a.far) :
    c.center = 3 ∧ (∀ a ∈ c.arms, a.far = 2) ∧ (c.arms.filter (·.read)).length = 2 := by
  obtain ⟨_, hreads, hsame⟩ := htp
  -- a read arm exists
  have hne : c.arms.filter (·.read) ≠ [] := by
    intro h; rw [h] at hreads; simp at hreads
  obtain ⟨a, ha⟩ := List.exists_mem_of_ne_nil _ hne
  rw [List.mem_filter] at ha
  obtain ⟨haM, haR⟩ := ha
  have hfix := hend a haM haR
  obtain ⟨hfar2, hra⟩ := hr a haM
  rw [readable_iff] at hra
  have hqa := hq a haM
  unfold actingCharge at hqa
  have hcen : c.center = 3 ∧ a.far = 2 := by
    have hc : c.center = 2 ∨ c.center = 3 := by omega
    have hf : a.far = 2 ∨ a.far = 3 := by omega
    rcases hc with hc | hc <;> rcases hf with hf | hf
    · omega
    · rw [hc, hf] at hfix
      have : fixesFar 2 3 = false := by decide +kernel
      rw [this] at hfix
      exact absurd hfix (by decide)
    · exact ⟨hc, hf⟩
    · omega
  refine ⟨hcen.1, ?_, hreads⟩
  intro b hb
  rw [hsame b hb a haM]
  exact hcen.2

/-- The object is an instance: a qutrit center with arms to three qubits, the first two read. -/
def objectConfig : Config := ⟨3, [⟨2, true⟩, ⟨2, true⟩, ⟨2, false⟩]⟩
/-- It is the configuration of the object world. -/
theorem object_config_of_world : configOf objectWorld objectTwoPoint = objectConfig := by decide +kernel
theorem object_config_two_point : objectConfig.twoPoint := by
  refine ⟨rfl, rfl, ?_⟩
  intro a ha b hb
  simp [objectConfig] at ha hb
  rcases ha with rfl | rfl | rfl <;> rcases hb with rfl | rfl | rfl <;> rfl
theorem object_config_end_rule : objectConfig.endRule := by
  intro a ha _
  simp [objectConfig] at ha
  rcases ha with rfl | rfl | rfl <;> decide +kernel

/-! # Part 6. Further facts -/

/-- Permutations of a list. -/
def insertAll {α : Type} (x : α) : List α → List (List α)
  | [] => [[x]]
  | y :: ys => (x :: y :: ys) :: (insertAll x ys).map (y :: ·)
def perms {α : Type} : List α → List (List α)
  | [] => [[]]
  | x :: xs => (perms xs).flatMap (insertAll x)
/-- Phase exponent vectors (fourth roots of unity) of length n. -/
def phaseVectors : Nat → List (List Nat)
  | 0 => [[]]
  | n + 1 => (phaseVectors n).flatMap (fun v => [0, 1, 2, 3].map (· :: v))
/-- The finite matching group G_d: monomial matrices with fourth-root phases, as (permutation,
phases); column k carries phase i^(e_k) at row p_k. -/
def matchingGroup (d : Nat) : List (List Nat × List Nat) :=
  (perms (List.range d)).flatMap (fun p => (phaseVectors d).map (fun e => (p, e)))
/-- The trace of a monomial matrix: the sum of its phases at its fixed points. -/
def traceMono (g : List Nat × List Nat) : GI :=
  ((List.range g.1.length).filter (fun k => g.1.getD k 0 == k)).foldl
    (fun s k => GI.add s (GI.ipow (g.2.getD k 0))) GI.zero

/-- The matching groups have orders 32 and 384 (Lemma S1). -/
theorem matching_group_orders : (matchingGroup 2).length = 32 ∧ (matchingGroup 3).length = 384 := by
  decide +kernel

/-- A monomial matching as a Gaussian-integer matrix: column k carries i^(e_k) at row p_k. -/
def monoMat (g : List Nat × List Nat) : Mat GI :=
  Mat.tabulate g.1.length g.1.length (fun r c => if g.1.getD c 0 = r then GI.ipow (g.2.getD c 0) else GI.zero)
def conjMat (a : Mat GI) : Mat GI := a.map (·.map GI.conj)
def det2 (a : Mat GI) : GI :=
  GI.sub (GI.mul (Mat.get GI.zero a 0 0) (Mat.get GI.zero a 1 1)) (GI.mul (Mat.get GI.zero a 0 1) (Mat.get GI.zero a 1 0))
def traceG (a : Mat GI) : GI := ((List.range a.length).map (fun i => Mat.get GI.zero a i i)).foldl GI.add GI.zero
/-- sigma_y. -/
def sigmaY : Mat GI := [[GI.zero, ⟨0, -1⟩], [GI.I, GI.zero]]

/-- AT A QUBIT A MATCHING UNDOES THE CONJUGATION: sigma_y conj(U) sigma_y = det(conj U) U for every
element U of the matching group G_2, so on letters conj(U) acts as U does after sigma_y. -/
theorem qubit_absorbs_conjugation :
    (matchingGroup 2).all (fun g =>
      Mat.mulG (Mat.mulG sigmaY (conjMat (monoMat g))) sigmaY ==
        Mat.scaleG (det2 (conjMat (monoMat g))) (monoMat g)) = true := by decide +kernel

/-- AT A QUTRIT NONE DOES: the obstruction. For U = diag(i, 1, 1) in G_3, a unitary V with
V conj(U) V^-1 = c U would give tr conj(U) = c tr U and tr conj(U)^2 = c^2 tr U^2. Here
tr U^2 = tr conj(U)^2 = 1, so c^2 = 1, yet (tr conj U)^2 = 3 - 4i differs from (tr U)^2 = 3 + 4i.
(The similarity step is standard and not formalized here.) -/
theorem qutrit_conjugation_obstruction :
    let U := monoMat ([0, 1, 2], [1, 0, 0])
    U ∈ (matchingGroup 3).map monoMat ∧
    traceG (Mat.mulG U U) = GI.one ∧ traceG (Mat.mulG (conjMat U) (conjMat U)) = GI.one ∧
    GI.mul (traceG (conjMat U)) (traceG (conjMat U)) ≠ GI.mul (traceG U) (traceG U) := by
  decide +kernel

/-- THE COMMUTANT (Lemma S3). The commutant of U ⊗ conj(U) over G_d has dimension three at d = 2, 3:
by the character formula, the sum of |tr U|^4 over the group is three times its order. -/
theorem commutant_dimension :
    ((matchingGroup 2).map (fun g => GI.normSq (traceMono g) * GI.normSq (traceMono g))).foldl (· + ·) 0
      = 3 * ((matchingGroup 2).length : Int) ∧
    ((matchingGroup 3).map (fun g => GI.normSq (traceMono g) * GI.normSq (traceMono g))).foldl (· + ·) 0
      = 3 * ((matchingGroup 3).length : Int) := by decide +kernel

/-- THE JOIN (Sec. S7). Joining the two read links at the qutrit by the qutrit pair succeeds, in
ordinary quantum mechanics, with probability 1/6: with psi the product of the two pair kets and v its
overlap with the qutrit pair, |v|^2 / (3 |psi|^2) = 1/6. -/
def psi (a b c d : Nat) : Int := pairKet 3 2 a b * pairKet 3 2 c d
def sumSq (xs : List Int) : Int := (xs.map (fun x => x * x)).foldl (· + ·) 0
def psiNormSq : Int := sumSq ((List.range 3).flatMap (fun a => (List.range 2).flatMap (fun b =>
  (List.range 3).flatMap (fun c => (List.range 2).map (fun d => psi a b c d)))))
def overlapNormSq : Int := sumSq ((List.range 2).flatMap (fun b => (List.range 2).map (fun d =>
  ((List.range 3).map (fun i => psi i b i d)).foldl (· + ·) 0)))
theorem join_probability : 6 * overlapNormSq = 3 * psiNormSq := by decide +kernel

/-! # Part 7. The main theorem and the axiom report -/

/-- MAIN THEOREM. With the definitions of Part 1 and no hypothesis: the object is a two-point
configuration of the qutrit--qubit link; reads at the qutrit fix the qubit and reads at the qubit do
not fix the qutrit (the end rule); every record of the link, oriented by the end rule, is an
eigenvector of the exchange of the reads; and the normalized readout is
(79 + 48 sqrt 2 + 42 sqrt 3 + 3 sqrt 6) / 31104. -/
theorem main :
    TwoPoint.valid objectWorld objectTwoPoint = true ∧
    fixesFar (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2) = true ∧
    fixesFar (objectWorld.dim objectTwoPoint.read1.2) (objectWorld.dim objectTwoPoint.center) = false ∧
    (records (readEnd (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2))
        (farEnd (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2))).all
      (fun f => neZ (parity f)) = true ∧
    readout objectWorld objectTwoPoint = ([(1, 79), (2, 48), (3, 42), (6, 3)], 31104) := by
  refine ⟨object_is_two_point.1, ?_, ?_, ?_, dressing_of_the_qutrit_qubit_link⟩ <;> decide +kernel

end ChainAlpha

#print axioms ChainAlpha.main
#print axioms ChainAlpha.records_orthogonal
#print axioms ChainAlpha.sectors
#print axioms ChainAlpha.selection_under_read_cap
#print axioms ChainAlpha.center_one_dimensional
#print axioms ChainAlpha.configuration_unique
#print axioms ChainAlpha.action_rank
#print axioms ChainAlpha.commutant_dimension
#print axioms ChainAlpha.commutator_records
#print axioms ChainAlpha.exchanges_agree_with_pairings
#print axioms ChainAlpha.readers_reproduce_the_cap
