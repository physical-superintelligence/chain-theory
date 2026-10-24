import AlphaDerivation
import ChainTheory.Data.D526148_CPEG
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.Data.D527399_DRLA
import ChainTheory.ConditionUnions
import ChainTheory.Data.D531550_SSDI

set_option maxRecDepth 100000

namespace ChainTheory.Fields.Ch06

theorem Theorem_8_i_gauss_cells :
    AlphaDerivation.Q4.mul AlphaDerivation.Q4.root2 AlphaDerivation.Q4.root2 = AlphaDerivation.Q4.mk 2 0 0 0 /\
    AlphaDerivation.Q4.mul AlphaDerivation.Q4.root3 AlphaDerivation.Q4.root3 = AlphaDerivation.Q4.mk 3 0 0 0 /\
    AlphaDerivation.Q4.mul AlphaDerivation.Q4.root6 AlphaDerivation.Q4.root6 = AlphaDerivation.Q4.mk 6 0 0 0 /\
    AlphaDerivation.Q4.mul AlphaDerivation.Q4.root2 AlphaDerivation.Q4.root3 = AlphaDerivation.Q4.root6 /\
    AlphaDerivation.Q4.sigma2 AlphaDerivation.Q4.root2 = AlphaDerivation.Q4.smul (-1) AlphaDerivation.Q4.root2 /\
    AlphaDerivation.Q4.sigma3 AlphaDerivation.Q4.root3 = AlphaDerivation.Q4.smul (-1) AlphaDerivation.Q4.root3 /\
    AlphaDerivation.Q4.sigma23 AlphaDerivation.Q4.root6 = AlphaDerivation.Q4.root6 /\
    AlphaDerivation.Q4.sigma2 AlphaDerivation.Q4.root6 = AlphaDerivation.Q4.smul (-1) AlphaDerivation.Q4.root6 := by decide

theorem Theorem_8_iii_multiplicities : type_of% AlphaDerivation.Statements.Theorem4_value :=
  AlphaDerivation.Statements.Theorem4_value

theorem Theorem_9 : forall k : Nat, 24 * 36 ^ k = 2 ^ (2 * k + 3) * 3 ^ (2 * k + 1) := by
  intro k
  induction k with
  | zero => decide
  | succ n ih =>
    have h1 : 36 ^ (n + 1) = 36 ^ n * 36 := Nat.pow_succ 36 n
    have h2 : 2 ^ (2 * (n + 1) + 3) = 2 ^ (2 * n + 3) * 4 := by
      rw [show 2 * (n + 1) + 3 = (2 * n + 3) + 2 from rfl, Nat.pow_add]
    have h3 : 3 ^ (2 * (n + 1) + 1) = 3 ^ (2 * n + 1) * 9 := by
      rw [show 2 * (n + 1) + 1 = (2 * n + 1) + 2 from rfl, Nat.pow_add]
    rw [h1, h2, h3, <- Nat.mul_assoc, ih, Nat.mul_mul_mul_comm]

def Definition_1 (m1 m2 m3 m6 : Int) : AlphaDerivation.Q4 := AlphaDerivation.Q4.mk m1 m2 m3 m6

opaque Theorem_8 : Prop

opaque row_521886_SOZT : Prop

opaque row_522015_RAOB : Prop

opaque row_523802_ORCG : Prop

end ChainTheory.Fields.Ch06

namespace ChainTheory.Fields.Ch06

def wall_525884_EQCH_open : ChainTheory.OpenResult :=
  { address := 525884, stem := "CDFO", decidingClass := "EQCH", firstParting := "-", chapter := "ch06", statement := ChainTheory.Discussion.Landed93.wall_525884_EQCH }

theorem row_526148_CPEG : type_of% ChainTheory.Data.D526148_CPEG.checks :=
  ChainTheory.Data.D526148_CPEG.checks

end ChainTheory.Fields.Ch06

namespace ChainTheory.Fields.Ch06

theorem row_527399_DRLA : type_of% ChainTheory.Data.D527399_DRLA.checks :=
  ChainTheory.Data.D527399_DRLA.checks

end ChainTheory.Fields.Ch06

namespace ChainTheory.Fields.Ch06

opaque wall_528529_EQOD : Prop

def wall_528529_EQOD_open : ChainTheory.OpenResult :=
  { address := 528529, stem := "ODFX", decidingClass := "EQOD", firstParting := "parting", chapter := "ch06", statement := wall_528529_EQOD }

opaque wall_529434_EQPT : Prop

def wall_529434_EQPT_open : ChainTheory.OpenResult :=
  { address := 529434, stem := "ACRP", decidingClass := "EQPT", firstParting := "-", chapter := "ch06", statement := wall_529434_EQPT }

opaque wall_529645_EQPI : Prop

def wall_529645_EQPI_open : ChainTheory.OpenResult :=
  { address := 529645, stem := "PINT", decidingClass := "EQPI", firstParting := "first-entry-unkeyed", chapter := "ch06", statement := wall_529645_EQPI }

opaque cond_531550_SSDI : Prop

theorem row_531550_SSDI : cond_531550_SSDI -> type_of% ChainTheory.Data.D531550_SSDI.checks :=
  fun _ => ChainTheory.Data.D531550_SSDI.checks

theorem row_531550_SSDI_union_census : ChainTheory.ConditionUnions.union_531550_SSDI.members.length = 3 /\ ChainTheory.ConditionUnions.union_531550_SSDI.exceedsLetter = true := by decide

end ChainTheory.Fields.Ch06
