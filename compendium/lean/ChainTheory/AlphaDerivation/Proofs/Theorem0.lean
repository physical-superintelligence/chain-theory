import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Patterns
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.LemmaA

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Theorem0
open GM LemmaA

def pairKet (d : Nat) : List G := (List.range (d * d)).map fun a => if a / d == a % d then G.one else G.zero

def complement (d : Nat) : List (List G) :=
  ((List.range (d * d)).filter (fun a => a / d != a % d)).map (fun a => (List.range (d * d)).map fun b => if b == a then G.one else G.zero) ++
  ((List.range d).filter (fun i => i != 0)).map (fun i => (List.range (d * d)).map fun b =>
    if b == i * d + i then G.one else if b == 0 then G.ofInt (-1) else G.zero)

def fixedBy (d : Nat) (v : List G) (grp : List GM) : Bool := grp.all fun u => mulVec (pairAction d u) v == v

def annihilatedByLie (d : Nat) (v : List G) : Bool := (lieGens d).all fun x => mulVec x v == List.replicate (d * d) G.zero

def pairProjectorIsOuter (d : Nat) : Bool := pairProjector d == outer (pairKet d)

def eigenFacts (d : Nat) : Bool :=
  let P := pairProjector d
  let Q := sub (smul (G.ofInt d) (pairIdentity d)) P
  (complement d).all (fun v => mulVec P v == List.replicate (d * d) G.zero && mulVec Q v == smulVec (G.ofInt d) v) &&
  mulVec P (pairKet d) == smulVec (G.ofInt d) (pairKet d) && mulVec Q (pairKet d) == List.replicate (d * d) G.zero &&
  (complement d).length == d * d - 1

theorem fixed_vectors_one_line :
    fixedVectorPatterns 2 = [[0, 0]] ∧ fixedVectorPatterns 3 = [[0, 0]] ∧
    [(fixedVectorPatterns 2).length, (fixedVectorPatterns 3).length] = Expected.fixedVectorDims := by decide +kernel

theorem pair_ket_fixed :
    fixedBy 2 (pairKet 2) group2 = true ∧ fixedBy 3 (pairKet 3) gens3 = true ∧
    annihilatedByLie 2 (pairKet 2) = true ∧ annihilatedByLie 3 (pairKet 3) = true ∧
    inner (pairKet 2) (pairKet 2) = G.ofInt 2 ∧ inner (pairKet 3) (pairKet 3) = G.ofInt 3 ∧
    [(1, 2), (1, 3)] = Expected.pairKetAmplitudeSq := by decide +kernel

theorem pair_ket_unique_pure_fixed_point :
    haarTwoCommute 2 = true ∧ haarTwoCommute 3 = true ∧ diagFailsHaar 2 = true ∧ diagFailsHaar 3 = true ∧
    [(commutantPatterns 2).length - 1, (commutantPatterns 3).length - 1] = Expected.twirlFixedDims ∧
    pairProjectorIsOuter 2 = true ∧ pairProjectorIsOuter 3 = true ∧
    eigenFacts 2 = true ∧ eigenFacts 3 = true ∧
    [1, 1] = Expected.pureFixedStates := by decide +kernel

abbrev IsFixedState (d N p q : Nat) : Prop := p + (d * d - 1) * q = N

abbrev IsPure (p q : Nat) : Prop := q = 0 ∧ 0 < p

theorem pure_fixed_unique (d N p q : Nat) (h : IsFixedState d N p q) (hp : IsPure p q) : p = N ∧ q = 0 := by
  rcases hp with ⟨hq, _⟩
  subst hq
  unfold IsFixedState at h
  rw [Nat.mul_zero, Nat.add_zero] at h
  exact ⟨h, rfl⟩

theorem pair_ket_extreme (d N p1 q1 p2 q2 : Nat) (h1 : IsFixedState d N p1 q1) (h2 : IsFixedState d N p2 q2)
    (_hp : p1 + p2 = N + N) (hq : q1 + q2 = 0) : p1 = N ∧ q1 = 0 ∧ p2 = N ∧ q2 = 0 := by
  have hq1 : q1 = 0 := Nat.eq_zero_of_add_eq_zero_right hq
  have hq2 : q2 = 0 := Nat.eq_zero_of_add_eq_zero_left hq
  subst hq1; subst hq2
  unfold IsFixedState at h1 h2
  rw [Nat.mul_zero, Nat.add_zero] at h1 h2
  exact ⟨h1, rfl, h2, rfl⟩

theorem minimal_projections_coordinates :
    (IsFixedState 2 3 3 0 ∧ IsFixedState 2 3 0 1 ∧ IsFixedState 3 8 8 0 ∧ IsFixedState 3 8 0 1) ∧
    (IsPure 3 0 ∧ ¬ IsPure 0 1 ∧ IsPure 8 0 ∧ ¬ IsPure 0 1) ∧ Expected.eigenspaceDims2 = "1,3" := by decide

end Theorem0
end AlphaDerivation
