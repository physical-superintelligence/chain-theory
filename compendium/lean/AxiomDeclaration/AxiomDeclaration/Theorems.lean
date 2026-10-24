import AxiomDeclaration.Structure

set_option autoImplicit false

namespace AxiomDeclaration

theorem pair_end_a_lt (w : World) (p : Pair w.qudits) : p.a.val < w.qudits := p.a.isLt

theorem pair_end_b_lt (w : World) (p : Pair w.qudits) : p.b.val < w.qudits := p.b.isLt

theorem admitted_of_mem (w : World) (p : Pair w.qudits) (h : p ∈ w.pairs) : pairAdmitted w.dim p = true :=
  List.all_eq_true.mp w.admitted p h

theorem ends_distinct_of_mem (w : World) (p : Pair w.qudits) (h : p ∈ w.pairs) : (p.a != p.b) = true :=
  (Bool.and_eq_true _ _).mp (admitted_of_mem w p h) |>.1

theorem ends_one_dim_of_mem (w : World) (p : Pair w.qudits) (h : p ∈ w.pairs) : (w.dim p.a == w.dim p.b) = true :=
  (Bool.and_eq_true _ _).mp (admitted_of_mem w p h) |>.2

theorem shared_iff (w : World) (q : Fin w.qudits) : w.shared q = true ↔ 2 ≤ w.valence q := by
  simp [World.shared]

theorem known_iff (w : World) (q : Fin w.qudits) : w.known q = true ↔ 0 < (w.readsOf q).length := by
  simp [World.known]

theorem someShared_iff (w : World) : w.someShared = true ↔ 0 < w.sharedQudits.length := by
  simp [World.someShared]

theorem finList_length (n : Nat) : (finList n).length = n := by
  induction n with
  | zero => rfl
  | succ k ih => simp [finList, ih]

theorem allQudits_length (w : World) : w.allQudits.length = w.qudits := finList_length w.qudits

theorem worldThree_counts : worldThree.qudits = 3 ∧ worldThree.pairs.length = 2 := by decide

theorem worldThree_middle_shared : worldThree.shared (1 : Fin 3) = true := by decide

theorem worldThree_first_not_shared : worldThree.shared (0 : Fin 3) = false := by decide

theorem worldThree_shared_list : worldThree.sharedQudits = [(1 : Fin 3)] := by decide

theorem worldThree_some_shared : worldThree.someShared = true := by decide

theorem worldThree_pairs_sharing : worldThree.sharing ⟨(0 : Fin 3), (1 : Fin 3)⟩ ⟨(1 : Fin 3), (2 : Fin 3)⟩ = true := by decide

theorem worldThree_common_support : worldThree.commonSupport (0 : Fin 3) (2 : Fin 3) = 2 := by decide

theorem worldThree_reads_first : (worldThree.readsOf (0 : Fin 3)).length = 4 := by decide

theorem worldThree_passed_to : worldThree.passedTo ⟨(1 : Fin 3), (0 : Fin 3), 0⟩ = [(0 : Fin 3), (2 : Fin 3)] := by decide

theorem worldThree_all_known : worldThree.allQudits.all worldThree.known = true := by decide

theorem worldThree_further_record : (worldThree.furtherRecord (1 : Fin 3)).length = 8 := by decide

theorem worldOne_none_shared : worldOne.someShared = false := by decide

theorem worldOne_all_known : worldOne.allQudits.all worldOne.known = true := by decide

theorem worldOne_reads_first : (worldOne.readsOf (0 : Fin 2)).length = 2 := by decide

end AxiomDeclaration
