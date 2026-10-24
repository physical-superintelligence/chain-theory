import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P09.Ch3

namespace ChainTheory.Frame.P10.Ch3

abbrev frame_521027_HRIC : Prop := ChainTheory.Plan.P09.Ch3.plan_521027_HRIC

abbrev frame_523048_HRFD : Prop := ChainTheory.Plan.P09.Ch3.plan_523048_HRFD

def frame_wall_525388_FRIC_open : ChainTheory.OpenResult := ChainTheory.Plan.P09.Ch3.plan_wall_525388_FRIC_open

def frame_wall_530768_SA2T_open : ChainTheory.OpenResult := ChainTheory.Plan.P09.Ch3.plan_wall_530768_SA2T_open

def frame_wall_531995_DPTM_open : ChainTheory.OpenResult := ChainTheory.Plan.P09.Ch3.plan_wall_531995_DPTM_open

abbrev frame_533787_IMBH : Prop := ChainTheory.Plan.P09.Ch3.row_533787_IMBH

def frame_wall_534184_EHWF_open : ChainTheory.OpenResult := ChainTheory.Plan.P09.Ch3.wall_534184_EHWF_open

def frame_wall_536690_HWCW_open : ChainTheory.OpenResult := ChainTheory.Plan.P09.Ch3.wall_536690_HWCW_open

opaque row_537274_HIMC : Prop

def wall_538816_ZCPH_open : ChainTheory.OpenResult :=
  { address := 538816, stem := "ZCPH", decidingClass := "EQJK", firstParting := "PARTING-NAMED", chapter := "10-3", statement := ChainTheory.Open.wall_538816_ZCPH }

end ChainTheory.Frame.P10.Ch3
