import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533868_MXAS
import ChainTheory.Discussion.Ch20
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch12
import ChainTheory.StandardModel.Ch13

namespace ChainTheory.Plan.P07.Ch5

abbrev plan_wall_517641_LFCF : Prop := ChainTheory.Discussion.Ch20.wall_517641_MOVH

abbrev plan_wall_517766_SKEY : Prop := ChainTheory.Discussion.Ch20.wall_517766_SEPS

abbrev plan_wall_518289_STSK : Prop := ChainTheory.Discussion.Ch20.wall_518289_INJV

abbrev plan_518419_GDPM : Prop := ChainTheory.StandardModel.Ch13.row_518419_GDPM

abbrev plan_wall_518627_SKCS : Prop := ChainTheory.Discussion.Ch20.wall_518627_INJW

abbrev plan_520457_SKDM : Prop := ChainTheory.StandardModel.Ch13.row_520457_SKDM

def plan_wall_526336_WRGE_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch13.wall_526336_EQWE_open

def plan_wall_529542_ENLG_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_529542_EQLO_open

theorem plan_532153_ENBG : type_of% ChainTheory.StandardModel.Ch12.row_532153_ENBG := ChainTheory.StandardModel.Ch12.row_532153_ENBG

theorem row_533868_MXAS : ChainTheory.Open.cond_533868_MXAS -> type_of% ChainTheory.Data.D533868_MXAS.checks :=
  fun _ => ChainTheory.Data.D533868_MXAS.checks

end ChainTheory.Plan.P07.Ch5
