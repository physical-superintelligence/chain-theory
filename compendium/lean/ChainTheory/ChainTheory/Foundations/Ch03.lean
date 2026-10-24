import AlphaDerivation
import ChainTheory.Data.D525231_RGAD
import ChainTheory.Kernel.D525490_LGIS
import ChainTheory.OpenResult

set_option maxRecDepth 100000

namespace ChainTheory.Foundations.Ch03

abbrev M2 := Prod (Prod Int Int) (Prod Int Int)

def mul2 (a b : M2) : M2 :=
  ((a.1.1 * b.1.1 + a.1.2 * b.2.1, a.1.1 * b.1.2 + a.1.2 * b.2.2),
   (a.2.1 * b.1.1 + a.2.2 * b.2.1, a.2.1 * b.1.2 + a.2.2 * b.2.2))

def tr2 (a : M2) : M2 := ((a.1.1, a.2.1), (a.1.2, a.2.2))

def boost : M2 := ((3, 4), (2, 3))

def boostHalf : M2 := ((3, 2), (4, 3))

def formTwo : M2 := ((1, 0), (0, -2))

def formHalf : M2 := ((2, 0), (0, -1))

def boostPow : Nat -> M2
  | 0 => ((1, 0), (0, 1))
  | n + 1 => mul2 (boostPow n) boost

theorem Theorem_5_i_form_preserved :
    mul2 (tr2 boost) (mul2 formTwo boost) = formTwo /\ mul2 boost boost = ((17, 24), (12, 17)) /\
    mul2 (tr2 boostHalf) (mul2 formHalf boostHalf) = formHalf := by decide

theorem boostPow_entries : forall n : Nat,
    1 <= (boostPow n).1.1 /\ 0 <= (boostPow n).1.2 /\ 0 <= (boostPow n).2.1 /\ 1 <= (boostPow n).2.2 := by
  intro n
  induction n with
  | zero => decide
  | succ k ih =>
    have ha := ih.1
    have hb := ih.2.1
    have hc := ih.2.2.1
    have hd := ih.2.2.2
    show 1 <= (boostPow k).1.1 * 3 + (boostPow k).1.2 * 2 /\ 0 <= (boostPow k).1.1 * 4 + (boostPow k).1.2 * 3 /\
      0 <= (boostPow k).2.1 * 3 + (boostPow k).2.2 * 2 /\ 1 <= (boostPow k).2.1 * 4 + (boostPow k).2.2 * 3
    exact And.intro (by omega) (And.intro (by omega) (And.intro (by omega) (by omega)))

theorem boostPow_strict : forall m n : Nat, m < n -> (boostPow m).1.1 < (boostPow n).1.1 := by
  have step : forall k : Nat, (boostPow k).1.1 < (boostPow (k + 1)).1.1 := by
    intro k
    have ha := (boostPow_entries k).1
    have hb := (boostPow_entries k).2.1
    show (boostPow k).1.1 < (boostPow k).1.1 * 3 + (boostPow k).1.2 * 2
    omega
  intro m n hmn
  induction n with
  | zero => exact absurd hmn (Nat.not_lt_zero m)
  | succ k ih =>
    cases Nat.lt_succ_iff_lt_or_eq.mp hmn with
    | inl h => exact Int.lt_trans (ih h) (step k)
    | inr h => subst h; exact step m

theorem Theorem_5_i_powers_distinct : forall m n : Nat, m < n -> Not (boostPow m = boostPow n) := by
  intro m n hmn heq
  have h := boostPow_strict m n hmn
  rw [heq] at h
  exact Int.lt_irrefl _ h

opaque Theorem_4 : Prop

opaque Theorem_5 : Prop

opaque row_507228_TWCN : Prop

opaque row_518366_RLPG : Prop

opaque row_518856_LPOR : Prop

opaque row_519241_OSLF : Prop

opaque row_519293_TAOC : Prop

opaque row_519319_SRFI : Prop

opaque row_521027_HRIC : Prop

opaque row_521078_TCPP : Prop

theorem row_521104_OUTR :
    (type_of% AlphaDerivation.Statements.IdAlg_tensor_commutant_scalars) /\
    (type_of% AlphaDerivation.Statements.Theorem1_register) /\
    (type_of% AlphaDerivation.Statements.Theorem1_readout_is_trace_form) :=
  And.intro AlphaDerivation.Statements.IdAlg_tensor_commutant_scalars (And.intro AlphaDerivation.Statements.Theorem1_register (AlphaDerivation.Statements.Theorem1_readout_is_trace_form))

opaque row_522581_BHOU : Prop

opaque row_522895_SHST : Prop

opaque row_523100_BFME : Prop

opaque row_523254_DMRT : Prop

opaque wall_522165_BOOS : Prop

end ChainTheory.Foundations.Ch03

namespace ChainTheory.Foundations.Ch03

theorem row_525231_RGAD : type_of% ChainTheory.Data.D525231_RGAD.checks :=
  ChainTheory.Data.D525231_RGAD.checks

theorem row_525490_LGIS : type_of% ChainTheory.Kernel.D525490_LGIS.checks :=
  ChainTheory.Kernel.D525490_LGIS.checks

end ChainTheory.Foundations.Ch03

namespace ChainTheory.Foundations.Ch03

opaque wall_531133_EQDU : Prop

def wall_531133_EQDU_open : ChainTheory.OpenResult :=
  { address := 531133, stem := "DIMC", decidingClass := "EQDU", firstParting := "-", chapter := "ch03", statement := wall_531133_EQDU }

end ChainTheory.Foundations.Ch03
