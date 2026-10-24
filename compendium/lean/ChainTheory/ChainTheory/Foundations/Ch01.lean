import AlphaDerivation
import ChainTheory.Data.D525542_TTCF
import ChainTheory.ConditionUnions
import ChainTheory.Data.D532023_DST2
import ChainTheory.Data.D532049_DIM1
import ChainTheory.OpenResult

set_option maxRecDepth 100000

namespace ChainTheory.Foundations.Ch01

theorem row_524038_ORKC :
    (type_of% AlphaDerivation.Statements.OrbitReading_orbit_reading) /\
    (type_of% AlphaDerivation.Statements.OrbitReading_no_fixedness_asked) :=
  And.intro AlphaDerivation.Statements.OrbitReading_orbit_reading (AlphaDerivation.Statements.OrbitReading_no_fixedness_asked)

opaque wall_522500_EQPH : Prop

end ChainTheory.Foundations.Ch01

namespace ChainTheory.Foundations.Ch01

theorem row_525542_TTCF : type_of% ChainTheory.Data.D525542_TTCF.checks :=
  ChainTheory.Data.D525542_TTCF.checks

end ChainTheory.Foundations.Ch01

namespace ChainTheory.Foundations.Ch01

opaque wall_528448_EQOG : Prop

def wall_528448_EQOG_open : ChainTheory.OpenResult :=
  { address := 528448, stem := "OFAU", decidingClass := "EQOG", firstParting := "-", chapter := "ch01", statement := wall_528448_EQOG }

opaque wall_531916_EQUN : Prop

def wall_531916_EQUN_open : ChainTheory.OpenResult :=
  { address := 531916, stem := "UNKN", decidingClass := "EQUN", firstParting := "-", chapter := "ch01", statement := wall_531916_EQUN }

opaque cond_532023_DST2 : Prop

theorem row_532023_DST2 : cond_532023_DST2 -> type_of% ChainTheory.Data.D532023_DST2.checks :=
  fun _ => ChainTheory.Data.D532023_DST2.checks

theorem row_532023_DST2_union_census : ChainTheory.ConditionUnions.union_532023_DST2.members.length = 7 /\ ChainTheory.ConditionUnions.union_532023_DST2.exceedsLetter = true := by decide

opaque cond_532049_DIM1 : Prop

theorem row_532049_DIM1 : cond_532049_DIM1 -> type_of% ChainTheory.Data.D532049_DIM1.checks :=
  fun _ => ChainTheory.Data.D532049_DIM1.checks

theorem row_532049_DIM1_union_census : ChainTheory.ConditionUnions.union_532049_DIM1.members.length = 4 /\ ChainTheory.ConditionUnions.union_532049_DIM1.exceedsLetter = true := by decide

end ChainTheory.Foundations.Ch01
