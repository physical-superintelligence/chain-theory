import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Discussion.Ch20
import ChainTheory.Foundations.Ch02
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10
import ChainTheory.StandardModel.Ch11

namespace ChainTheory.Plan.P02.Ch1

abbrev plan_512009_URPK : Prop := ChainTheory.StandardModel.Ch10.row_512009_URPK

abbrev plan_515868_OSPT : Prop := ChainTheory.Foundations.Ch02.row_515868_OSPT

abbrev plan_wall_519164_QFCL : Prop := ChainTheory.Discussion.Ch20.wall_519164_FRCO

abbrev plan_wall_519964_OBPS : Prop := ChainTheory.Discussion.Ch20.wall_519964_FORG

theorem plan_520172_PKTF : type_of% ChainTheory.Foundations.Ch02.row_520172_PKTF := ChainTheory.Foundations.Ch02.row_520172_PKTF

abbrev plan_520198_BSLB : Prop := ChainTheory.Foundations.Ch02.row_520198_BSLB

abbrev plan_521417_SSAO : Prop := ChainTheory.Foundations.Ch02.row_521417_SSAO

abbrev plan_wall_522090_FCMJ : Prop := ChainTheory.StandardModel.Ch11.wall_522090_EQFC

def plan_wall_525728_FCOS_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_525728_EQFP_open

def plan_wall_532127_HBPK_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_532127_EQHB_open

theorem plan_532679_NOSG : type_of% ChainTheory.Foundations.Ch02.row_532679_NOSG := ChainTheory.Foundations.Ch02.row_532679_NOSG

def wall_534634_CPWB_open : ChainTheory.OpenResult :=
  { address := 534634, stem := "CPWB", decidingClass := "EQAW", firstParting := "PARTING", chapter := "2-1", statement := ChainTheory.Open.wall_534634_CPWB }

def wall_534819_ELLB_open : ChainTheory.OpenResult :=
  { address := 534819, stem := "ELLB", decidingClass := "EQBO", firstParting := "FIRST-GENRE-NAMED", chapter := "2-1", statement := ChainTheory.Open.wall_534819_ELLB }

def wall_535335_EBRC_open : ChainTheory.OpenResult :=
  { address := 535335, stem := "EBRC", decidingClass := "EQFJ", firstParting := "FIRST-GENRE-NAMED", chapter := "2-1", statement := ChainTheory.Open.wall_535335_EBRC }

def wall_535787_ALCP_open : ChainTheory.OpenResult :=
  { address := 535787, stem := "ALCP", decidingClass := "EQAE", firstParting := "PARTING", chapter := "2-1", statement := ChainTheory.Open.wall_535787_ALCP }

end ChainTheory.Plan.P02.Ch1
