import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D538156_SBJW
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P05.Ch7

namespace ChainTheory.Frame.P05.Ch7

abbrev frame_514982_RNTC : Prop := ChainTheory.Plan.P05.Ch7.plan_514982_RNTC

abbrev frame_wall_516828_PSCM : Prop := ChainTheory.Plan.P05.Ch7.plan_wall_516828_PSCM

abbrev frame_wall_518548_THBC : Prop := ChainTheory.Plan.P05.Ch7.plan_wall_518548_THBC

abbrev frame_520637_CBRE : Prop := ChainTheory.Plan.P05.Ch7.plan_520637_CBRE

abbrev frame_522217_SMZT : Prop := ChainTheory.Plan.P05.Ch7.plan_522217_SMZT

abbrev frame_523407_MSTC : Prop := ChainTheory.Plan.P05.Ch7.plan_523407_MSTC

def frame_wall_524457_BSRC_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch7.plan_wall_524457_BSRC_open

abbrev frame_525754_SCAC : Prop := ChainTheory.Plan.P05.Ch7.plan_525754_SCAC

def frame_wall_526844_RPRG_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch7.plan_wall_526844_RPRG_open

def frame_wall_527563_CSBP_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch7.plan_wall_527563_CSBP_open

def frame_wall_527827_RXCO_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch7.plan_wall_527827_RXCO_open

def frame_wall_532970_RNG2_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch7.wall_532970_RNG2_open

theorem row_538156_SBJW : ChainTheory.Open.cond_538156_SBJW -> type_of% ChainTheory.Data.D538156_SBJW.checks :=
  fun _ => ChainTheory.Data.D538156_SBJW.checks

end ChainTheory.Frame.P05.Ch7
