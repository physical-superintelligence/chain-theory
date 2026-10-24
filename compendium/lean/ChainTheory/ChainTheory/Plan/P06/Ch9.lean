import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533123_QUIN
import ChainTheory.Data.D535653_PICP
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P06.Ch9

theorem row_533123_QUIN : ChainTheory.Open.cond_533123_QUIN -> type_of% ChainTheory.Data.D533123_QUIN.checks :=
  fun _ => ChainTheory.Data.D533123_QUIN.checks

def wall_534075_SIDX_open : ChainTheory.OpenResult :=
  { address := 534075, stem := "SIDX", decidingClass := "EQTO", firstParting := "PARTING", chapter := "6-9", statement := ChainTheory.Open.wall_534075_SIDX }

def wall_534101_BMRH_open : ChainTheory.OpenResult :=
  { address := 534101, stem := "BMRH", decidingClass := "EQHA", firstParting := "PARTING-NAMED", chapter := "6-9", statement := ChainTheory.Open.wall_534101_BMRH }

def wall_534210_FERL_open : ChainTheory.OpenResult :=
  { address := 534210, stem := "FERL", decidingClass := "EQFB", firstParting := "FIRST-PARTING-NAMED", chapter := "6-9", statement := ChainTheory.Open.wall_534210_FERL }

theorem row_535653_PICP : type_of% ChainTheory.Data.D535653_PICP.checks := ChainTheory.Data.D535653_PICP.checks

end ChainTheory.Plan.P06.Ch9
