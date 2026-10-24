import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533444_OSA3
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch07
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P04.Ch6

abbrev plan_wall_518677_SUCM : Prop := ChainTheory.Discussion.Ch20.wall_518677_CODF

abbrev plan_wall_520224_SPSE : Prop := ChainTheory.Discussion.Ch20.wall_520224_CORV

abbrev plan_wall_520925_SRXE : Prop := ChainTheory.Discussion.Ch20.wall_520925_SLOV

abbrev plan_wall_521285_SPRE : Prop := ChainTheory.Discussion.Ch20.wall_521285_EIGN

abbrev plan_wall_521682_SEPQ : Prop := ChainTheory.Fields.Ch07.wall_521682_FIXE

abbrev plan_wall_522140_SPKB : Prop := ChainTheory.Fields.Ch07.wall_522140_EQKB

abbrev plan_wall_522397_SEWD : Prop := ChainTheory.Fields.Ch07.wall_522397_WASN

abbrev plan_wall_523229_LSSE : Prop := ChainTheory.Fields.Ch07.wall_523229_EQSE

def plan_wall_529596_LOTS_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch07.wall_529596_EQSY_open

def plan_wall_530300_SRAO_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch07.wall_530300_EQSA_open

def plan_wall_531448_OSAD_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch07.wall_531448_EQOX_open

def plan_wall_532421_SLT3_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch07.wall_532421_EQTV_open

theorem row_533444_OSA3 : ChainTheory.Open.cond_533444_OSA3 -> type_of% ChainTheory.Data.D533444_OSA3.checks :=
  fun _ => ChainTheory.Data.D533444_OSA3.checks

def wall_533626_HLRF_open : ChainTheory.OpenResult :=
  { address := 533626, stem := "HLRF", decidingClass := "EQHU", firstParting := "BEYOND-THE-NAMING-CLAUSE", chapter := "4-6", statement := ChainTheory.Open.wall_533626_HLRF }

end ChainTheory.Plan.P04.Ch6
