import AlphaDerivation
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.ConditionUnions
import ChainTheory.Data.D531968_AMBL

set_option maxRecDepth 100000

namespace ChainTheory.CompositeMatter.Ch15

opaque row_503180_ULPR : Prop

opaque row_519522_HYHC : Prop

opaque row_519828_RYHR : Prop

opaque row_519937_FSHL : Prop

opaque row_520015_RLRR : Prop

opaque row_520248_RLPQ : Prop

opaque row_520663_RLTV : Prop

opaque wall_521656_BINF : Prop

opaque wall_522320_CRSA : Prop

opaque wall_522682_EQBF : Prop

end ChainTheory.CompositeMatter.Ch15

namespace ChainTheory.CompositeMatter.Ch15

def wall_526096_EQPR_open : ChainTheory.OpenResult :=
  { address := 526096, stem := "PRFB", decidingClass := "EQPR", firstParting := "parting", chapter := "ch15", statement := ChainTheory.Discussion.Landed93.wall_526096_EQPR }

end ChainTheory.CompositeMatter.Ch15

namespace ChainTheory.CompositeMatter.Ch15

opaque wall_530661_EQSD : Prop

def wall_530661_EQSD_open : ChainTheory.OpenResult :=
  { address := 530661, stem := "NDSC", decidingClass := "EQSD", firstParting := "first-refusal-named", chapter := "ch15", statement := wall_530661_EQSD }

opaque wall_531864_EQPU : Prop

def wall_531864_EQPU_open : ChainTheory.OpenResult :=
  { address := 531864, stem := "PTBL", decidingClass := "EQPU", firstParting := "no-change-or-refused", chapter := "ch15", statement := wall_531864_EQPU }

opaque cond_531968_AMBL : Prop

theorem row_531968_AMBL : cond_531968_AMBL -> type_of% ChainTheory.Data.D531968_AMBL.checks :=
  fun _ => ChainTheory.Data.D531968_AMBL.checks

theorem row_531968_AMBL_union_census : ChainTheory.ConditionUnions.union_531968_AMBL.members.length = 5 /\ ChainTheory.ConditionUnions.union_531968_AMBL.exceedsLetter = true := by decide

end ChainTheory.CompositeMatter.Ch15
