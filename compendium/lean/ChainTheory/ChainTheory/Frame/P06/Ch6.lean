import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D539022_WAZB
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P07.Ch10

namespace ChainTheory.Frame.P06.Ch6

def frame_wall_529964_ASQW_open : ChainTheory.OpenResult := ChainTheory.Plan.P07.Ch10.plan_wall_529964_ASQW_open

def frame_wall_530326_WKST_open : ChainTheory.OpenResult := ChainTheory.Plan.P07.Ch10.plan_wall_530326_WKST_open

abbrev frame_533971_WMXR : Prop := ChainTheory.Plan.P07.Ch10.row_533971_WMXR

def wall_536796_WKSW_open : ChainTheory.OpenResult :=
  { address := 536796, stem := "WKSW", decidingClass := "EQWO", firstParting := "FACE-B-NAMED", chapter := "6-6", statement := ChainTheory.Open.wall_536796_WKSW }

def wall_537971_SWFT_open : ChainTheory.OpenResult :=
  { address := 537971, stem := "SWFT", decidingClass := "EQVW", firstParting := "FACE-B-NAMED", chapter := "6-6", statement := ChainTheory.Open.wall_537971_SWFT }

theorem row_539022_WAZB : ChainTheory.Open.cond_539022_WAZB -> type_of% ChainTheory.Data.D539022_WAZB.checks :=
  fun _ => ChainTheory.Data.D539022_WAZB.checks

end ChainTheory.Frame.P06.Ch6
