import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P08.Ch1

namespace ChainTheory.Frame.P09.Ch1

abbrev frame_wall_523177_DGCG : Prop := ChainTheory.Plan.P08.Ch1.plan_wall_523177_DGCG

theorem frame_527294_ENPC : type_of% ChainTheory.Plan.P08.Ch1.plan_527294_ENPC := ChainTheory.Plan.P08.Ch1.plan_527294_ENPC

def frame_wall_532655_DGC4_open : ChainTheory.OpenResult := ChainTheory.Plan.P08.Ch1.plan_wall_532655_DGC4_open

def frame_wall_533760_ALPD_open : ChainTheory.OpenResult := ChainTheory.Plan.P08.Ch1.wall_533760_ALPD_open

def wall_538074_RPAR_open : ChainTheory.OpenResult :=
  { address := 538074, stem := "RPAR", decidingClass := "EQVP", firstParting := "PARTS-AT-THE-PASSED-ARM", chapter := "9-1", statement := ChainTheory.Open.wall_538074_RPAR }

end ChainTheory.Frame.P09.Ch1
