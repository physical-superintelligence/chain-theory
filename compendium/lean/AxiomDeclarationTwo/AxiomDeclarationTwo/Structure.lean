import AxiomDeclaration

set_option autoImplicit false

namespace AxiomDeclarationTwo
open AxiomDeclaration (Qudit Pair finList World pairAdmitted)
open AxiomDeclaration.World (Distillation Read)

def pairAdmittedTwo {n : Nat} (_dim : Fin n → Nat) (p : Pair n) : Bool := p.a != p.b

structure WorldTwo where
  qudits : Nat
  dim : Fin qudits → Nat
  pairs : List (Pair qudits)
  admitted : pairs.all (pairAdmittedTwo dim) = true

namespace WorldTwo

def qudit (w : WorldTwo) (q : Fin w.qudits) : Qudit := ⟨w.dim q⟩

def allQudits (w : WorldTwo) : List (Fin w.qudits) := finList w.qudits

def pairsAt (w : WorldTwo) (q : Fin w.qudits) : List (Pair w.qudits) := w.pairs.filter (fun p => p.a == q || p.b == q)

def valence (w : WorldTwo) (q : Fin w.qudits) : Nat := (w.pairsAt q).length

def shared (w : WorldTwo) (q : Fin w.qudits) : Bool := decide (2 ≤ w.valence q)

def sharing (w : WorldTwo) (p q : Pair w.qudits) : Bool := p.a == q.a || p.a == q.b || p.b == q.a || p.b == q.b

def sharedQudits (w : WorldTwo) : List (Fin w.qudits) := w.allQudits.filter w.shared

def someShared (w : WorldTwo) : Bool := decide (0 < w.sharedQudits.length)

def support (w : WorldTwo) (p : Pair w.qudits) : Nat := min (w.dim p.a) (w.dim p.b)

def genre (w : WorldTwo) (p : Pair w.qudits) : Nat × Nat := if w.dim p.a ≤ w.dim p.b then (w.dim p.a, w.dim p.b) else (w.dim p.b, w.dim p.a)

def genres (w : WorldTwo) : List (Nat × Nat) := w.pairs.map w.genre

def oneDimensionAt (w : WorldTwo) (p : Pair w.qudits) : Bool := w.dim p.a == w.dim p.b

def oneDimension (w : WorldTwo) : Bool := w.pairs.all w.oneDimensionAt

def sharedEnd (w : WorldTwo) (p : Pair w.qudits) : Option (Fin w.qudits) :=
  if w.dim p.a < w.dim p.b then some p.b else if w.dim p.b < w.dim p.a then some p.a else none

def sharedByDimension (w : WorldTwo) (q : Fin w.qudits) : Bool := (w.pairsAt q).any (fun p => w.support p < w.dim q)

def sharedEither (w : WorldTwo) (q : Fin w.qudits) : Bool := w.shared q || w.sharedByDimension q

def someSharedEither (w : WorldTwo) : Bool := w.allQudits.any w.sharedEither

def farEnd (w : WorldTwo) (p : Pair w.qudits) (q : Fin w.qudits) : Fin w.qudits := if p.a == q then p.b else p.a

def commonSupport (w : WorldTwo) (x y : Fin w.qudits) : Nat := min (w.dim x) (w.dim y)

def distil (w : WorldTwo) (x y : Fin w.qudits) : Distillation w.qudits := ⟨x, y, w.commonSupport x y⟩

def readAdmitted (w : WorldTwo) (r : Read w.qudits) : Bool := r.qudit != r.other && decide (r.basis < w.dim r.qudit)

def readsOf (w : WorldTwo) (q : Fin w.qudits) : List (Read w.qudits) :=
  (w.allQudits.filter (fun o => o != q)).flatMap (fun o => (List.range (w.dim q)).map (fun b => ⟨q, o, b⟩))

def passedTo (w : WorldTwo) (r : Read w.qudits) : List (Fin w.qudits) := (w.pairsAt r.qudit).map (fun p => w.farEnd p r.qudit)

def directions (w : WorldTwo) (r : Read w.qudits) : List (Fin w.qudits × Fin w.qudits) := (w.passedTo r).map (fun f => (r.qudit, f))

def readBound (w : WorldTwo) (q : Fin w.qudits) : Bool := decide (w.valence q ≤ w.dim q)

def withinReadBound (w : WorldTwo) : Bool := w.allQudits.all w.readBound

def record (w : WorldTwo) (q : Fin w.qudits) : List (Read w.qudits × List (Fin w.qudits)) := (w.readsOf q).map (fun r => (r, w.passedTo r))

def known (w : WorldTwo) (q : Fin w.qudits) : Bool := decide (0 < (w.readsOf q).length)

def furtherRecord (w : WorldTwo) (q : Fin w.qudits) : List (Read w.qudits × Read w.qudits) :=
  (w.readsOf q).flatMap (fun r => ((w.readsOf q).filter (fun s => r.basis != s.basis)).map (fun s => (r, s)))

def orderSign (w : WorldTwo) (r s : Read w.qudits) : Bool := decide (r.basis < s.basis)

end WorldTwo

theorem pairAdmittedTwo_of_first {n : Nat} (dim : Fin n → Nat) (p : Pair n) (h : pairAdmitted dim p = true) : pairAdmittedTwo dim p = true :=
  ((Bool.and_eq_true _ _).mp h).1

def ofWorld (w : World) : WorldTwo :=
  ⟨w.qudits, w.dim, w.pairs, List.all_eq_true.mpr (fun p hp => pairAdmittedTwo_of_first w.dim p (List.all_eq_true.mp w.admitted p hp))⟩

def WorldTwo.toWorld? (w : WorldTwo) : Option World :=
  if h : (w.pairs.all (pairAdmitted w.dim)) = true then some ⟨w.qudits, w.dim, w.pairs, h⟩ else none

def WorldTwo.isFirstEdition (w : WorldTwo) : Bool := w.toWorld?.isSome

def worldTwoThree : WorldTwo := ⟨2, fun i => [2, 3].getD i.val 0, [⟨(0 : Fin 2), (1 : Fin 2)⟩], by decide⟩

def worldTwoHub : WorldTwo := ⟨2, fun i => [4, 2].getD i.val 0, [⟨(0 : Fin 2), (1 : Fin 2)⟩], by decide⟩

def worldTwoSix : WorldTwo := ⟨6, fun i => [2, 2, 3, 3, 4, 4].getD i.val 0,
  [⟨(0 : Fin 6), (1 : Fin 6)⟩, ⟨(0 : Fin 6), (2 : Fin 6)⟩, ⟨(1 : Fin 6), (4 : Fin 6)⟩, ⟨(2 : Fin 6), (3 : Fin 6)⟩, ⟨(3 : Fin 6), (4 : Fin 6)⟩, ⟨(4 : Fin 6), (5 : Fin 6)⟩], by decide⟩

end AxiomDeclarationTwo
