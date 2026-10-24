import ChainTheory.CompositeMatter.Ch14
import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D535895_ASJN
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P06.Ch4

theorem plan_527104_PJRK : type_of% ChainTheory.CompositeMatter.Ch14.row_527104_PJRK := ChainTheory.CompositeMatter.Ch14.row_527104_PJRK

def plan_wall_528610_OLPS_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_528610_EQON_open

def plan_wall_529460_PSCN_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_529460_EQPD_open

def plan_wall_529856_SSPW_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_529856_EQSV_open

def plan_wall_530941_FPWP_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_530941_EQPF_open

def plan_wall_532368_OPCB_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_532368_EQOP_open

def wall_532835_RGSC_open : ChainTheory.OpenResult :=
  { address := 532835, stem := "RGSC", decidingClass := "EQTC", firstParting := "FACE-B-NAMED", chapter := "6-4", statement := ChainTheory.Open.wall_532835_RGSC }

def wall_533573_RSP2_open : ChainTheory.OpenResult :=
  { address := 533573, stem := "RSP2", decidingClass := "EQPZ", firstParting := "FIRST-PARTING-LINK-NAMED", chapter := "6-4", statement := ChainTheory.Open.wall_533573_RSP2 }

def wall_535254_PRCA_open : ChainTheory.OpenResult :=
  { address := 535254, stem := "PRCA", decidingClass := "EQAP", firstParting := "PARTING", chapter := "6-4", statement := ChainTheory.Open.wall_535254_PRCA }

theorem row_535895_ASJN : ChainTheory.Open.cond_535895_ASJN -> type_of% ChainTheory.Data.D535895_ASJN.checks :=
  fun _ => ChainTheory.Data.D535895_ASJN.checks

end ChainTheory.Plan.P06.Ch4
