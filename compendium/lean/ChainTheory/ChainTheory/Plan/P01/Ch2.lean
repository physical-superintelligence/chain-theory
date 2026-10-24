import ChainTheory.CompositeMatter.Ch15
import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D535412_OLUS
import ChainTheory.Data.D535439_OLDC
import ChainTheory.Data.D535680_RPHG
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch08
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10
import ChainTheory.StandardModel.Ch11

namespace ChainTheory.Plan.P01.Ch2

abbrev plan_503180_ULPR : Prop := ChainTheory.CompositeMatter.Ch15.row_503180_ULPR

abbrev plan_wall_517016_MGFC : Prop := ChainTheory.Discussion.Ch20.wall_517016_ZERQ

abbrev plan_517042_CPLG : Prop := ChainTheory.StandardModel.Ch10.row_517042_CPLG

abbrev plan_517539_LKLM : Prop := ChainTheory.StandardModel.Ch10.row_517539_LKLM

abbrev plan_517792_OGEN : Prop := ChainTheory.StandardModel.Ch11.row_517792_OGEN

theorem plan_518160_AGUQ : type_of% ChainTheory.StandardModel.Ch10.row_518160_AGUQ := ChainTheory.StandardModel.Ch10.row_518160_AGUQ

abbrev plan_524640_RDSG : Prop := ChainTheory.StandardModel.Ch11.row_524640_RDSG

def plan_wall_526234_VKSD_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_526234_VKSD_open

def plan_wall_526387_FVAC_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_526387_FVAC_open

abbrev plan_527022_OOTR : Prop := ChainTheory.StandardModel.Ch11.row_527022_OOTR

theorem plan_528882_LTGO : type_of% ChainTheory.Fields.Ch08.row_528882_LTGO := ChainTheory.Fields.Ch08.row_528882_LTGO

def wall_534900_PGNC_open : ChainTheory.OpenResult :=
  { address := 534900, stem := "PGNC", decidingClass := "EQGG", firstParting := "PARTING-AT-A-GENRE", chapter := "1-2", statement := ChainTheory.Open.wall_534900_PGNC }

theorem row_535412_OLUS : type_of% ChainTheory.Data.D535412_OLUS.checks := ChainTheory.Data.D535412_OLUS.checks

theorem row_535439_OLDC : ChainTheory.Open.cond_535439_OLDC -> type_of% ChainTheory.Data.D535439_OLDC.checks :=
  fun _ => ChainTheory.Data.D535439_OLDC.checks

opaque row_535494_OLSL : Prop

theorem row_535680_RPHG : type_of% ChainTheory.Data.D535680_RPHG.checks := ChainTheory.Data.D535680_RPHG.checks

end ChainTheory.Plan.P01.Ch2
