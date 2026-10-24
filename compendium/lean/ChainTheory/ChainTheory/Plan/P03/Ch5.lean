import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533023_TD2S
import ChainTheory.Discussion.Ch20
import ChainTheory.Foundations.Ch05
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P03.Ch5

abbrev plan_515919_SQTN : Prop := ChainTheory.Foundations.Ch05.row_515919_SQTN

abbrev plan_517173_SPMV : Prop := ChainTheory.Foundations.Ch05.row_517173_SPMV

abbrev plan_wall_519035_SOEL : Prop := ChainTheory.Discussion.Ch20.wall_519035_SPIP

abbrev plan_wall_519912_SAD2 : Prop := ChainTheory.Discussion.Ch20.wall_519912_AMPM

abbrev plan_521989_DCRS : Prop := ChainTheory.Foundations.Ch05.row_521989_DCRS

theorem plan_525257_HTOR : type_of% ChainTheory.Foundations.Ch05.row_525257_HTOR := ChainTheory.Foundations.Ch05.row_525257_HTOR

def plan_wall_527131_PQCS_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_527131_PQCS_open

theorem plan_528073_PQCD : type_of% ChainTheory.Foundations.Ch05.row_528073_PQCD := ChainTheory.Foundations.Ch05.row_528073_PQCD

theorem row_533023_TD2S : ChainTheory.Open.cond_533023_TD2S -> type_of% ChainTheory.Data.D533023_TD2S.checks :=
  fun _ => ChainTheory.Data.D533023_TD2S.checks

end ChainTheory.Plan.P03.Ch5
