import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533919_TST4
import ChainTheory.Data.D534263_TSC2
import ChainTheory.Data.D534290_LOWD
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P07.Ch11

def wall_532917_SPMC_open : ChainTheory.OpenResult :=
  { address := 532917, stem := "SPMC", decidingClass := "EQTC", firstParting := "PARTING", chapter := "7-11", statement := ChainTheory.Open.wall_532917_SPMC }

theorem row_533919_TST4 : ChainTheory.Open.cond_533919_TST4 -> type_of% ChainTheory.Data.D533919_TST4.checks :=
  fun _ => ChainTheory.Data.D533919_TST4.checks

def wall_534237_SJWM_open : ChainTheory.OpenResult :=
  { address := 534237, stem := "SJWM", decidingClass := "EQNE", firstParting := "FIRST-PARTING-NAMED", chapter := "7-11", statement := ChainTheory.Open.wall_534237_SJWM }

theorem row_534263_TSC2 : ChainTheory.Open.cond_534263_TSC2 -> type_of% ChainTheory.Data.D534263_TSC2.checks :=
  fun _ => ChainTheory.Data.D534263_TSC2.checks

theorem row_534290_LOWD : ChainTheory.Open.cond_534290_LOWD -> type_of% ChainTheory.Data.D534290_LOWD.checks :=
  fun _ => ChainTheory.Data.D534290_LOWD.checks

def wall_535281_RCLD_open : ChainTheory.OpenResult :=
  { address := 535281, stem := "RCLD", decidingClass := "EQNI", firstParting := "PARTING-AT-THE-CAP", chapter := "7-11", statement := ChainTheory.Open.wall_535281_RCLD }

def wall_535466_DCRA_open : ChainTheory.OpenResult :=
  { address := 535466, stem := "DCRA", decidingClass := "EQAA", firstParting := "PARTING", chapter := "7-11", statement := ChainTheory.Open.wall_535466_DCRA }

end ChainTheory.Plan.P07.Ch11
