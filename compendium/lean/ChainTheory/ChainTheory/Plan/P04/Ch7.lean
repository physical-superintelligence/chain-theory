import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533893_HLGR
import ChainTheory.Foundations.Ch01
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10
import ChainTheory.StandardModel.Ch12

namespace ChainTheory.Plan.P04.Ch7

abbrev plan_519138_HGCH : Prop := ChainTheory.StandardModel.Ch10.row_519138_HGCH

abbrev plan_520067_HPST : Prop := ChainTheory.StandardModel.Ch10.row_520067_HPST

abbrev plan_524905_HMOA : Prop := ChainTheory.StandardModel.Ch12.row_524905_HMOA

def plan_wall_528448_OFAU_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch01.wall_528448_EQOG_open

abbrev plan_528690_VOFW : Prop := ChainTheory.StandardModel.Ch12.row_528690_VOFW

theorem plan_529072_HGHL : type_of% ChainTheory.StandardModel.Ch12.row_529072_HGHL := ChainTheory.StandardModel.Ch12.row_529072_HGHL

def plan_wall_530144_HGO2_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_530144_EQHO_open

def plan_wall_532524_ATHG_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_532524_EQHK_open

theorem row_533893_HLGR : ChainTheory.Open.cond_533893_HLGR -> type_of% ChainTheory.Data.D533893_HLGR.checks :=
  fun _ => ChainTheory.Data.D533893_HLGR.checks

def wall_536188_HGAU_open : ChainTheory.OpenResult :=
  { address := 536188, stem := "HGAU", decidingClass := "EQIH", firstParting := "NEITHER-FACE-NAMED", chapter := "4-7", statement := ChainTheory.Open.wall_536188_HGAU }

end ChainTheory.Plan.P04.Ch7
