set_option autoImplicit false

namespace AxiomDeclaration

structure Qudit where
  dim : Nat
  deriving DecidableEq, Repr, BEq

structure Pair (n : Nat) where
  a : Fin n
  b : Fin n
  deriving DecidableEq, Repr

def pairAdmitted {n : Nat} (dim : Fin n → Nat) (p : Pair n) : Bool := p.a != p.b && dim p.a == dim p.b

def finList : (n : Nat) → List (Fin n)
  | 0 => []
  | n + 1 => (0 : Fin (n + 1)) :: (finList n).map Fin.succ

structure World where
  qudits : Nat
  dim : Fin qudits → Nat
  pairs : List (Pair qudits)
  admitted : pairs.all (pairAdmitted dim) = true

namespace World

def qudit (w : World) (q : Fin w.qudits) : Qudit := ⟨w.dim q⟩

def allQudits (w : World) : List (Fin w.qudits) := finList w.qudits

def pairsAt (w : World) (q : Fin w.qudits) : List (Pair w.qudits) := w.pairs.filter (fun p => p.a == q || p.b == q)

def valence (w : World) (q : Fin w.qudits) : Nat := (w.pairsAt q).length

def shared (w : World) (q : Fin w.qudits) : Bool := decide (2 ≤ w.valence q)

def sharing (w : World) (p q : Pair w.qudits) : Bool := p.a == q.a || p.a == q.b || p.b == q.a || p.b == q.b

def sharedQudits (w : World) : List (Fin w.qudits) := w.allQudits.filter w.shared

def someShared (w : World) : Bool := decide (0 < w.sharedQudits.length)

def farEnd (w : World) (p : Pair w.qudits) (q : Fin w.qudits) : Fin w.qudits := if p.a == q then p.b else p.a

def commonSupport (w : World) (x y : Fin w.qudits) : Nat := min (w.dim x) (w.dim y)

structure Distillation (n : Nat) where
  x : Fin n
  y : Fin n
  support : Nat
  deriving DecidableEq, Repr

def distil (w : World) (x y : Fin w.qudits) : Distillation w.qudits := ⟨x, y, w.commonSupport x y⟩

structure Read (n : Nat) where
  qudit : Fin n
  other : Fin n
  basis : Nat
  deriving DecidableEq, Repr

def readAdmitted (w : World) (r : Read w.qudits) : Bool := r.qudit != r.other && decide (r.basis < w.dim r.qudit)

def readsOf (w : World) (q : Fin w.qudits) : List (Read w.qudits) :=
  (w.allQudits.filter (fun o => o != q)).flatMap (fun o => (List.range (w.dim q)).map (fun b => ⟨q, o, b⟩))

def passedTo (w : World) (r : Read w.qudits) : List (Fin w.qudits) := (w.pairsAt r.qudit).map (fun p => w.farEnd p r.qudit)

def directions (w : World) (r : Read w.qudits) : List (Fin w.qudits × Fin w.qudits) := (w.passedTo r).map (fun f => (r.qudit, f))

def record (w : World) (q : Fin w.qudits) : List (Read w.qudits × List (Fin w.qudits)) := (w.readsOf q).map (fun r => (r, w.passedTo r))

def known (w : World) (q : Fin w.qudits) : Bool := decide (0 < (w.readsOf q).length)

def furtherRecord (w : World) (q : Fin w.qudits) : List (Read w.qudits × Read w.qudits) :=
  (w.readsOf q).flatMap (fun r => ((w.readsOf q).filter (fun s => r.basis != s.basis)).map (fun s => (r, s)))

def orderSign {n : Nat} (r s : Read n) : Bool := decide (r.basis < s.basis)

end World

def worldThree : World := ⟨3, fun _ => 2, [⟨0, 1⟩, ⟨1, 2⟩], by decide⟩

def worldOne : World := ⟨2, fun _ => 2, [⟨0, 1⟩], by decide⟩

end AxiomDeclaration
