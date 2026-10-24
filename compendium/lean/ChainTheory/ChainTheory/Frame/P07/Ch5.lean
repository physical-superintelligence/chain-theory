import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P06.Ch5

namespace ChainTheory.Frame.P07.Ch5

abbrev frame_wall_518498_RTSR : Prop := ChainTheory.Plan.P06.Ch5.plan_wall_518498_RTSR

abbrev frame_521233_MRSO : Prop := ChainTheory.Plan.P06.Ch5.plan_521233_MRSO

def frame_wall_527346_SRBC_open : ChainTheory.OpenResult := ChainTheory.Plan.P06.Ch5.plan_wall_527346_SRBC_open

def frame_wall_531210_CRCE_open : ChainTheory.OpenResult := ChainTheory.Plan.P06.Ch5.plan_wall_531210_CRCE_open

def frame_wall_531236_BLSA_open : ChainTheory.OpenResult := ChainTheory.Plan.P06.Ch5.plan_wall_531236_BLSA_open

def frame_wall_531312_HADL_open : ChainTheory.OpenResult := ChainTheory.Plan.P06.Ch5.plan_wall_531312_HADL_open

def wall_537508_MXMF_open : ChainTheory.OpenResult :=
  { address := 537508, stem := "MXMF", decidingClass := "EQOK", firstParting := "ATOM-OR-READING-NAMED", chapter := "7-5", statement := ChainTheory.Open.wall_537508_MXMF }

end ChainTheory.Frame.P07.Ch5
