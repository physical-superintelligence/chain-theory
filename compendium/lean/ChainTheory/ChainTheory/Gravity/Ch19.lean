import AlphaDerivation

set_option maxRecDepth 100000

namespace ChainTheory.Gravity.Ch19

theorem Theorem_15 : (forall n t d : Nat, (n * t) * d = t * (n * d)) /\ 36 * 31104 = 1119744 :=
  And.intro (fun n t d => by rw [Nat.mul_comm n t, Nat.mul_assoc]) (by decide)

theorem Proposition_16_register_root : forall k : Nat, 6 ^ k * 6 ^ k = 36 ^ k := by
  intro k
  induction k with
  | zero => decide
  | succ n ih =>
    rw [Nat.pow_succ, Nat.pow_succ, Nat.mul_mul_mul_comm, ih]

opaque Proposition_16 : Prop

opaque Proposition_17 : Prop

opaque Proposition_18 : Prop

opaque row_523280_CTDE : Prop

end ChainTheory.Gravity.Ch19
