import AlphaDerivation.Data.FieldElement
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.LemmaB

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace MasslessOpenLink
open LemmaB

def siteDims : List Nat := [3, 2]

structure Arrow where
  src : Nat
  tgt : Nat
deriving DecidableEq, Repr

def arrows : List Arrow := [⟨0, 1⟩, ⟨1, 0⟩]

def reverse (x : Arrow) : Arrow := ⟨x.tgt, x.src⟩

def step (x : Arrow) : Int × Int × Int :=
  let t := expVec (siteDims.getD x.tgt 0); let s := expVec (siteDims.getD x.src 0)
  (t.1 - s.1, t.2.1 - s.2.1, t.2.2 - s.2.2)

def displacement (p : List Arrow) : Int × Int × Int :=
  p.foldl (fun acc x => let s := step x; (acc.1 + s.1, acc.2.1 + s.2.1, acc.2.2 + s.2.2)) (0, 0, 0)

def passages : Nat → Nat → List (List Arrow)
  | 0, _ => [[]]
  | n + 1, v => (arrows.filter fun x => x.src == v).flatMap fun x => (passages n x.tgt).map (x :: ·)

def endSite (v : Nat) (p : List Arrow) : Nat := p.foldl (fun _ x => x.tgt) v

def closed (v : Nat) (p : List Arrow) : Bool := endSite v p == v

def backtracks : List Arrow → Bool
  | x :: y :: rest => (y == reverse x) || backtracks (y :: rest)
  | _ => false

def closedNonBacktrackingAtZero (n : Nat) : List (Nat × List Arrow) :=
  (List.range siteDims.length).flatMap fun v =>
    ((passages n v).filter fun p => closed v p && !(backtracks p) && displacement p == (0, 0, 0)).map fun p => (v, p)

def closedPassages (n : Nat) : List (Nat × List Arrow) :=
  (List.range siteDims.length).flatMap fun v => ((passages n v).filter fun p => closed v p).map fun p => (v, p)

def census (cap : Nat) : List Nat := (List.range cap).map fun i => (closedNonBacktrackingAtZero (i + 1)).length

def AbsentMassTermStatement : Prop :=
  arrows.length = 2 ∧ reverse (arrows.getD 0 ⟨0, 0⟩) = arrows.getD 1 ⟨0, 0⟩ ∧ reverse (arrows.getD 1 ⟨0, 0⟩) = arrows.getD 0 ⟨0, 0⟩ ∧
  step ⟨0, 1⟩ = (1, -1, 0) ∧ step ⟨1, 0⟩ = (-1, 1, 0) ∧ displacement [⟨0, 1⟩, ⟨1, 0⟩] = (0, 0, 0) ∧
  census 6 = [0, 0, 0, 0, 0, 0] ∧ census 6 = Expected.passageCensusByLength ∧ Expected.passageCap = 6 ∧
  census 6 = passageCensus (linkGraph objectOfRecord) readCap ∧
  closedPassages 2 = [(0, [⟨0, 1⟩, ⟨1, 0⟩]), (1, [⟨1, 0⟩, ⟨0, 1⟩])] ∧
  (List.range 6).all (fun i => (closedPassages (i + 1)).all fun q => backtracks q.2 && displacement q.2 == (0, 0, 0)) = true ∧
  (List.range 6).map (fun i => (closedPassages (i + 1)).length) = [0, 2, 0, 2, 0, 2] ∧
  closedReads objectOfRecord = [] ∧ restEnergy objectOfRecord = 0 ∧ closedReadAmplitude (closedReads objectOfRecord) = Q4.zero ∧
  Expected.openReadoutCanon = 0

theorem absent_mass_term : AbsentMassTermStatement := by
  unfold AbsentMassTermStatement
  decide +kernel

end MasslessOpenLink
end AlphaDerivation
