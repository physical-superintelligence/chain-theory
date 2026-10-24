import ChainTheory.CompositeMatter.Ch14
import ChainTheory.CompositeMatter.Ch15
import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533228_HYSK
import ChainTheory.Data.D533815_LMBN
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P05.Ch4

abbrev plan_519522_HYHC : Prop := ChainTheory.CompositeMatter.Ch15.row_519522_HYHC

abbrev plan_519828_RYHR : Prop := ChainTheory.CompositeMatter.Ch15.row_519828_RYHR

abbrev plan_519937_FSHL : Prop := ChainTheory.CompositeMatter.Ch15.row_519937_FSHL

abbrev plan_520015_RLRR : Prop := ChainTheory.CompositeMatter.Ch15.row_520015_RLRR

abbrev plan_520248_RLPQ : Prop := ChainTheory.CompositeMatter.Ch15.row_520248_RLPQ

abbrev plan_520663_RLTV : Prop := ChainTheory.CompositeMatter.Ch15.row_520663_RLTV

abbrev plan_524296_HPMR : Prop := ChainTheory.CompositeMatter.Ch14.row_524296_HPMR

theorem plan_531968_AMBL : type_of% ChainTheory.CompositeMatter.Ch15.row_531968_AMBL := ChainTheory.CompositeMatter.Ch15.row_531968_AMBL

opaque row_532997_RYTV : Prop

theorem row_533228_HYSK : ChainTheory.Open.cond_533228_HYSK -> type_of% ChainTheory.Data.D533228_HYSK.checks :=
  fun _ => ChainTheory.Data.D533228_HYSK.checks

theorem row_533815_LMBN : ChainTheory.Open.cond_533815_LMBN -> type_of% ChainTheory.Data.D533815_LMBN.checks :=
  fun _ => ChainTheory.Data.D533815_LMBN.checks

def wall_533842_HFSN_open : ChainTheory.OpenResult :=
  { address := 533842, stem := "HFSN", decidingClass := "EQHV", firstParting := "PARTING-NAMED", chapter := "5-4", statement := ChainTheory.Open.wall_533842_HFSN }

def wall_535309_BMCP_open : ChainTheory.OpenResult :=
  { address := 535309, stem := "BMCP", decidingClass := "EQBQ", firstParting := "PARTING-NAMED", chapter := "5-4", statement := ChainTheory.Open.wall_535309_BMCP }

end ChainTheory.Plan.P05.Ch4
