import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D535548_LPSC
import ChainTheory.Gravity.Ch18
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P09.Ch2

abbrev plan_wall_523332_FECF : Prop := ChainTheory.Gravity.Ch18.wall_523332_EQFE

abbrev plan_523358_URNA : Prop := ChainTheory.Gravity.Ch18.row_523358_URNA

theorem row_535548_LPSC : ChainTheory.Open.cond_535548_LPSC -> type_of% ChainTheory.Data.D535548_LPSC.checks :=
  fun _ => ChainTheory.Data.D535548_LPSC.checks

end ChainTheory.Plan.P09.Ch2
