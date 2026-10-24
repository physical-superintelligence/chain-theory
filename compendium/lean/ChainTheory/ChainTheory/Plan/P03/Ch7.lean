import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D532861_GRP3
import ChainTheory.Discussion.Ch20
import ChainTheory.Gravity.Ch18
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P03.Ch7

abbrev plan_wall_518652_DTCJ : Prop := ChainTheory.Discussion.Ch20.wall_518652_EXCU

def plan_wall_531838_DTR2_open : ChainTheory.OpenResult := ChainTheory.Gravity.Ch18.wall_531838_EQDJ_open

theorem row_532861_GRP3 : ChainTheory.Open.cond_532861_GRP3 -> type_of% ChainTheory.Data.D532861_GRP3.checks :=
  fun _ => ChainTheory.Data.D532861_GRP3.checks

end ChainTheory.Plan.P03.Ch7
