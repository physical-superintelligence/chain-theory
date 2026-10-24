import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch09
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10

namespace ChainTheory.Plan.P05.Ch7

abbrev plan_514982_RNTC : Prop := ChainTheory.StandardModel.Ch10.row_514982_RNTC

abbrev plan_wall_516828_PSCM : Prop := ChainTheory.Discussion.Ch20.wall_516828_RPRF

abbrev plan_wall_518548_THBC : Prop := ChainTheory.Discussion.Ch20.wall_518548_REAF

abbrev plan_520637_CBRE : Prop := ChainTheory.StandardModel.Ch10.row_520637_CBRE

abbrev plan_522217_SMZT : Prop := ChainTheory.Fields.Ch09.row_522217_SMZT

abbrev plan_523407_MSTC : Prop := ChainTheory.Fields.Ch09.row_523407_MSTC

def plan_wall_524457_BSRC_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch09.wall_524457_EQBS_open

abbrev plan_525754_SCAC : Prop := ChainTheory.Fields.Ch09.row_525754_SCAC

def plan_wall_526844_RPRG_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch09.wall_526844_EQRX_open

def plan_wall_527563_CSBP_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch09.wall_527563_EQCB_open

def plan_wall_527827_RXCO_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch09.wall_527827_EQCY_open

def wall_532970_RNG2_open : ChainTheory.OpenResult :=
  { address := 532970, stem := "RNG2", decidingClass := "EQRN", firstParting := "PARTING-NAMED", chapter := "5-7", statement := ChainTheory.Open.wall_532970_RNG2 }

end ChainTheory.Plan.P05.Ch7
