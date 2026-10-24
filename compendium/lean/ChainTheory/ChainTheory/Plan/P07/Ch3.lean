import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D534608_ESOF
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch11
import ChainTheory.StandardModel.Ch12

namespace ChainTheory.Plan.P07.Ch3

def plan_wall_528231_DSSM_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_528231_DSSM_open

def plan_wall_528370_XOSE_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_528370_EQEX_open

theorem plan_528827_XSSF : type_of% ChainTheory.StandardModel.Ch12.row_528827_XSSF := ChainTheory.StandardModel.Ch12.row_528827_XSSF

theorem plan_531107_FDIS : type_of% ChainTheory.StandardModel.Ch12.row_531107_FDIS := ChainTheory.StandardModel.Ch12.row_531107_FDIS

def plan_wall_531576_SCTJ_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_531576_EQTJ_open

def plan_wall_531602_EXMH_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_531602_EQEY_open

theorem plan_532075_LGDS : type_of% ChainTheory.StandardModel.Ch11.row_532075_LGDS := ChainTheory.StandardModel.Ch11.row_532075_LGDS

theorem plan_532262_STZC : type_of% ChainTheory.StandardModel.Ch12.row_532262_STZC := ChainTheory.StandardModel.Ch12.row_532262_STZC

def wall_533254_TRKS_open : ChainTheory.OpenResult :=
  { address := 533254, stem := "TRKS", decidingClass := "EQTG", firstParting := "PARTING", chapter := "7-3", statement := ChainTheory.Open.wall_533254_TRKS }

theorem row_534608_ESOF : ChainTheory.Open.cond_534608_ESOF -> type_of% ChainTheory.Data.D534608_ESOF.checks :=
  fun _ => ChainTheory.Data.D534608_ESOF.checks

def wall_536108_SRBT_open : ChainTheory.OpenResult :=
  { address := 536108, stem := "SRBT", decidingClass := "EQUH", firstParting := "PARTING-NAMED", chapter := "7-3", statement := ChainTheory.Open.wall_536108_SRBT }

end ChainTheory.Plan.P07.Ch3
