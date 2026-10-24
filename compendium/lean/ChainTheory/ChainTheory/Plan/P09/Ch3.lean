import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Foundations.Ch03
import ChainTheory.Gravity.Ch18
import ChainTheory.InformationComputation.Landed93
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P09.Ch3

abbrev plan_521027_HRIC : Prop := ChainTheory.Foundations.Ch03.row_521027_HRIC

abbrev plan_523048_HRFD : Prop := ChainTheory.Gravity.Ch18.row_523048_HRFD

def plan_wall_525388_FRIC_open : ChainTheory.OpenResult := ChainTheory.InformationComputation.Landed93.wall_525388_EQFT_open

def plan_wall_530768_SA2T_open : ChainTheory.OpenResult := ChainTheory.Gravity.Ch18.wall_530768_EQHS_open

def plan_wall_531995_DPTM_open : ChainTheory.OpenResult := ChainTheory.Gravity.Ch18.wall_531995_EQDW_open

opaque row_533787_IMBH : Prop

def wall_534184_EHWF_open : ChainTheory.OpenResult :=
  { address := 534184, stem := "EHWF", decidingClass := "EQFG", firstParting := "FIRST-PARTING-NAMED", chapter := "9-3", statement := ChainTheory.Open.wall_534184_EHWF }

def wall_536690_HWCW_open : ChainTheory.OpenResult :=
  { address := 536690, stem := "HWCW", decidingClass := "EQIW", firstParting := "PARTING-NAMED", chapter := "9-3", statement := ChainTheory.Open.wall_536690_HWCW }

end ChainTheory.Plan.P09.Ch3
