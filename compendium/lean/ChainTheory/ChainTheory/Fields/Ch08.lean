import AlphaDerivation
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.Data.D527645_YCLC
import ChainTheory.ConditionUnions
import ChainTheory.Data.D528882_LTGO
import ChainTheory.Data.D531942_CASM

set_option maxRecDepth 100000

namespace ChainTheory.Fields.Ch08

opaque row_523828_CPPC : Prop

opaque wall_523126_EQCR : Prop

end ChainTheory.Fields.Ch08

namespace ChainTheory.Fields.Ch08

def wall_525568_EQBC_open : ChainTheory.OpenResult :=
  { address := 525568, stem := "BOCS", decidingClass := "EQBC", firstParting := "parting", chapter := "ch08", statement := ChainTheory.Discussion.Landed93.wall_525568_EQBC }

def wall_526460_RACC_open : ChainTheory.OpenResult :=
  { address := 526460, stem := "RACC", decidingClass := "-", firstParting := "-", chapter := "ch08", statement := ChainTheory.Discussion.Landed93.wall_526460_RACC }

end ChainTheory.Fields.Ch08

namespace ChainTheory.Fields.Ch08

theorem row_527645_YCLC : type_of% ChainTheory.Data.D527645_YCLC.checks :=
  ChainTheory.Data.D527645_YCLC.checks

end ChainTheory.Fields.Ch08

namespace ChainTheory.Fields.Ch08

opaque cond_528882_LTGO : Prop

theorem row_528882_LTGO : cond_528882_LTGO -> type_of% ChainTheory.Data.D528882_LTGO.checks :=
  fun _ => ChainTheory.Data.D528882_LTGO.checks

theorem row_528882_LTGO_union_census : ChainTheory.ConditionUnions.union_528882_LTGO.members.length = 4 /\ ChainTheory.ConditionUnions.union_528882_LTGO.exceedsLetter = true := by decide

opaque wall_531628_EQGN : Prop

def wall_531628_EQGN_open : ChainTheory.OpenResult :=
  { address := 531628, stem := "GENJ", decidingClass := "EQGN", firstParting := "first-parting-named", chapter := "ch08", statement := wall_531628_EQGN }

theorem row_531942_CASM : type_of% ChainTheory.Data.D531942_CASM.checks :=
  ChainTheory.Data.D531942_CASM.checks

opaque wall_532473_EQGC : Prop

def wall_532473_EQGC_open : ChainTheory.OpenResult :=
  { address := 532473, stem := "GNC2", decidingClass := "EQGC", firstParting := "outside-at", chapter := "ch08", statement := wall_532473_EQGC }

end ChainTheory.Fields.Ch08
