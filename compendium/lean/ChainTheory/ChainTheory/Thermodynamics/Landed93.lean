import AlphaDerivation
import ChainTheory.Data.D525335_SLBC
import ChainTheory.OpenResult
import ChainTheory.Data.D527268_ENSB
import ChainTheory.ConditionUnions
import ChainTheory.Data.D530247_TOP2
import ChainTheory.Data.D530584_ENT2
import ChainTheory.Data.D531680_PHTR

namespace ChainTheory.Thermodynamics.Landed93

theorem row_525335_SLBC : type_of% ChainTheory.Data.D525335_SLBC.checks :=
  ChainTheory.Data.D525335_SLBC.checks

opaque wall_525833_EQTS : Prop

end ChainTheory.Thermodynamics.Landed93

namespace ChainTheory.Thermodynamics.Landed93

def wall_525833_EQTS_open : ChainTheory.OpenResult :=
  { address := 525833, stem := "TSTC", decidingClass := "EQTS", firstParting := "-", chapter := "thermo", statement := wall_525833_EQTS }

end ChainTheory.Thermodynamics.Landed93

namespace ChainTheory.Thermodynamics.Landed93

opaque wall_526692_EQTB : Prop

def wall_526692_EQTB_open : ChainTheory.OpenResult :=
  { address := 526692, stem := "TSJB", decidingClass := "EQTB", firstParting := "-", chapter := "thermo", statement := wall_526692_EQTB }

theorem row_527268_ENSB : type_of% ChainTheory.Data.D527268_ENSB.checks :=
  ChainTheory.Data.D527268_ENSB.checks

end ChainTheory.Thermodynamics.Landed93

namespace ChainTheory.Thermodynamics.Landed93

opaque wall_529726_EQTP : Prop

def wall_529726_EQTP_open : ChainTheory.OpenResult :=
  { address := 529726, stem := "TOPS", decidingClass := "EQTP", firstParting := "-", chapter := "thermo", statement := wall_529726_EQTP }

opaque wall_529990_EQTR : Prop

def wall_529990_EQTR_open : ChainTheory.OpenResult :=
  { address := 529990, stem := "NTPE", decidingClass := "EQTR", firstParting := "-", chapter := "thermo", statement := wall_529990_EQTR }

opaque cond_530247_TOP2 : Prop

theorem row_530247_TOP2 : cond_530247_TOP2 -> type_of% ChainTheory.Data.D530247_TOP2.checks :=
  fun _ => ChainTheory.Data.D530247_TOP2.checks

theorem row_530247_TOP2_union_census : ChainTheory.ConditionUnions.union_530247_TOP2.members.length = 5 /\ ChainTheory.ConditionUnions.union_530247_TOP2.exceedsLetter = true := by decide

opaque cond_530584_ENT2 : Prop

theorem row_530584_ENT2 : cond_530584_ENT2 -> type_of% ChainTheory.Data.D530584_ENT2.checks :=
  fun _ => ChainTheory.Data.D530584_ENT2.checks

theorem row_530584_ENT2_union_census : ChainTheory.ConditionUnions.union_530584_ENT2.members.length = 5 /\ ChainTheory.ConditionUnions.union_530584_ENT2.exceedsLetter = true := by decide

opaque cond_531680_PHTR : Prop

theorem row_531680_PHTR : cond_531680_PHTR -> type_of% ChainTheory.Data.D531680_PHTR.checks :=
  fun _ => ChainTheory.Data.D531680_PHTR.checks

theorem row_531680_PHTR_union_census : ChainTheory.ConditionUnions.union_531680_PHTR.members.length = 6 /\ ChainTheory.ConditionUnions.union_531680_PHTR.exceedsLetter = true := by decide

end ChainTheory.Thermodynamics.Landed93
