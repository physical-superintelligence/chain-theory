import AxiomDeclarationTwo.Structure

set_option autoImplicit false

namespace AxiomDeclarationTwo
open AxiomDeclaration (Pair World pairAdmitted worldThree worldOne)

theorem pair_end_a_lt (w : WorldTwo) (p : Pair w.qudits) : p.a.val < w.qudits := p.a.isLt

theorem pair_end_b_lt (w : WorldTwo) (p : Pair w.qudits) : p.b.val < w.qudits := p.b.isLt

theorem admitted_of_mem (w : WorldTwo) (p : Pair w.qudits) (h : p ∈ w.pairs) : pairAdmittedTwo w.dim p = true :=
  List.all_eq_true.mp w.admitted p h

theorem ends_distinct_of_mem (w : WorldTwo) (p : Pair w.qudits) (h : p ∈ w.pairs) : (p.a != p.b) = true := admitted_of_mem w p h

theorem support_le_a (w : WorldTwo) (p : Pair w.qudits) : w.support p ≤ w.dim p.a := Nat.min_le_left _ _

theorem support_le_b (w : WorldTwo) (p : Pair w.qudits) : w.support p ≤ w.dim p.b := Nat.min_le_right _ _

theorem shared_iff (w : WorldTwo) (q : Fin w.qudits) : w.shared q = true ↔ 2 ≤ w.valence q := by
  simp [WorldTwo.shared]

theorem known_iff (w : WorldTwo) (q : Fin w.qudits) : w.known q = true ↔ 0 < (w.readsOf q).length := by
  simp [WorldTwo.known]

theorem readBound_iff (w : WorldTwo) (q : Fin w.qudits) : w.readBound q = true ↔ w.valence q ≤ w.dim q := by
  simp [WorldTwo.readBound]

theorem ofWorld_fields (w : World) : (ofWorld w).qudits = w.qudits ∧ (ofWorld w).pairs = w.pairs := ⟨rfl, rfl⟩

theorem ofWorld_isFirstEdition (w : World) : (ofWorld w).isFirstEdition = true := by
  simp [WorldTwo.isFirstEdition, WorldTwo.toWorld?, ofWorld, w.admitted]

theorem toWorld_isSome_iff (w : WorldTwo) : w.toWorld?.isSome = true ↔ (w.pairs.all (pairAdmitted w.dim)) = true := by
  simp [WorldTwo.toWorld?]

theorem worldTwoThree_counts : worldTwoThree.qudits = 2 ∧ worldTwoThree.pairs.length = 1 ∧ worldTwoThree.genres = [(2, 3)] := by decide

theorem worldTwoThree_support : worldTwoThree.support ⟨(0 : Fin 2), (1 : Fin 2)⟩ = 2 := by decide

theorem worldTwoThree_shared_end : worldTwoThree.sharedEnd ⟨(0 : Fin 2), (1 : Fin 2)⟩ = some (1 : Fin 2) := by decide

theorem worldTwoThree_sharing : worldTwoThree.sharedByDimension (1 : Fin 2) = true ∧ worldTwoThree.sharedByDimension (0 : Fin 2) = false ∧ worldTwoThree.someShared = false ∧ worldTwoThree.someSharedEither = true := by decide

theorem worldTwoThree_not_first_edition : worldTwoThree.isFirstEdition = false ∧ worldTwoThree.oneDimension = false := by decide

theorem worldTwoThree_bound_known : worldTwoThree.withinReadBound = true ∧ worldTwoThree.allQudits.all worldTwoThree.known = true := by decide

theorem worldTwoThree_reads : (worldTwoThree.readsOf (1 : Fin 2)).length = 3 ∧ (worldTwoThree.readsOf (0 : Fin 2)).length = 2 := by decide

theorem worldTwoHub_sharing : worldTwoHub.genres = [(2, 4)] ∧ worldTwoHub.sharedEnd ⟨(0 : Fin 2), (1 : Fin 2)⟩ = some (0 : Fin 2) ∧ worldTwoHub.support ⟨(0 : Fin 2), (1 : Fin 2)⟩ = 2 := by decide

theorem worldTwoSix_genres : worldTwoSix.genres = [(2, 2), (2, 3), (2, 4), (3, 3), (3, 4), (4, 4)] ∧ worldTwoSix.withinReadBound = true := by decide

theorem worldTwoSix_shared : worldTwoSix.shared (4 : Fin 6) = true ∧ worldTwoSix.sharedByDimension (4 : Fin 6) = true ∧ worldTwoSix.sharedEnd ⟨(0 : Fin 6), (2 : Fin 6)⟩ = some (2 : Fin 6) := by decide

theorem first_edition_examples : (ofWorld worldThree).oneDimension = true ∧ (ofWorld worldThree).shared (1 : Fin 3) = true ∧ (ofWorld worldThree).sharedByDimension (1 : Fin 3) = false ∧ (ofWorld worldOne).someSharedEither = false := by decide

theorem first_edition_examples_back : (ofWorld worldThree).isFirstEdition = true ∧ (ofWorld worldOne).isFirstEdition = true := by decide

end AxiomDeclarationTwo
