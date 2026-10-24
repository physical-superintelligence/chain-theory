import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Discussion.Ch20
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch13

namespace ChainTheory.Plan.P07.Ch9

abbrev plan_wall_517380 : Prop := ChainTheory.Discussion.Ch20.wall_517380_NORN

abbrev plan_wall_517843_PLMX : Prop := ChainTheory.Discussion.Ch20.wall_517843_UNIY

abbrev plan_519215_MDEO : Prop := ChainTheory.StandardModel.Ch13.row_519215_MDEO

abbrev plan_521156 : Prop := ChainTheory.StandardModel.Ch13.row_521156

abbrev plan_wall_523516_MCFO : Prop := ChainTheory.StandardModel.Ch13.wall_523516_EQMO

abbrev plan_wall_523542_NCFK : Prop := ChainTheory.StandardModel.Ch13.wall_523542_EQNC

def plan_wall_527590_MPON_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch13.wall_527590_MPON_open

def plan_wall_530818_MXPH_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch13.wall_530818_EQNX_open

def wall_536241_MXSO_open : ChainTheory.OpenResult :=
  { address := 536241, stem := "MXSO", decidingClass := "EQOI", firstParting := "FACE-B-NAMED", chapter := "7-9", statement := ChainTheory.Open.wall_536241_MXSO }

end ChainTheory.Plan.P07.Ch9
