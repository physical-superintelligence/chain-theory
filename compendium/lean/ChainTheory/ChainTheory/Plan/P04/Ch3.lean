import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch08
import ChainTheory.Foundations.Ch02
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10
import ChainTheory.StandardModel.Ch11

namespace ChainTheory.Plan.P04.Ch3

abbrev plan_510284_FGFC : Prop := ChainTheory.Foundations.Ch02.row_510284_FGFC

abbrev plan_wall_517818_CFRG : Prop := ChainTheory.Discussion.Ch20.wall_517818_ANAU

abbrev plan_wall_519674_RSM2 : Prop := ChainTheory.Discussion.Ch20.wall_519674_ROST

abbrev plan_520041_CRLK : Prop := ChainTheory.StandardModel.Ch10.row_520041_CRLK

abbrev plan_520509_CCGR : Prop := ChainTheory.StandardModel.Ch10.row_520509_CCGR

abbrev plan_wall_520848_RSOM : Prop := ChainTheory.Discussion.Ch20.wall_520848_ROSU

abbrev plan_wall_522064_RSCF : Prop := ChainTheory.StandardModel.Ch11.wall_522064_EQRS

abbrev plan_wall_522346_RSRN : Prop := ChainTheory.StandardModel.Ch11.wall_522346_EQRO

abbrev plan_wall_522996_RJIW : Prop := ChainTheory.StandardModel.Ch11.wall_522996_EQRJ

abbrev plan_wall_523126_CRGO : Prop := ChainTheory.Fields.Ch08.wall_523126_EQCR

def plan_wall_524509_ROEC_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_524509_EQRP_open

def plan_wall_524666_LCOG_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_524666_EQLG_open

def plan_wall_524800_ROED_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_524800_EQRP_open

def plan_wall_525041_LCOH_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_525041_EQLG_open

def plan_wall_525097_RBWO_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_525097_EQRB_open

def plan_wall_525179_SRCE_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_525179_EQCR_open

def plan_wall_525568_BOCS_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch08.wall_525568_EQBC_open

def plan_wall_529753_RCSK_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_529753_EQRK_open

def plan_wall_530378_RCQ2_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_530378_EQRA_open

theorem plan_530896_UHLF : type_of% ChainTheory.StandardModel.Ch11.row_530896_UHLF := ChainTheory.StandardModel.Ch11.row_530896_UHLF

def wall_533075_RCH2_open : ChainTheory.OpenResult :=
  { address := 533075, stem := "RCH2", decidingClass := "EQRI", firstParting := "FACE-B-NAMED", chapter := "4-3", statement := ChainTheory.Open.wall_533075_RCH2 }

def wall_533098_CLRY_open : ChainTheory.OpenResult :=
  { address := 533098, stem := "CLRY", decidingClass := "EQEE", firstParting := "FACE-B-NAMED", chapter := "4-3", statement := ChainTheory.Open.wall_533098_CLRY }

def wall_536028_RCSY_open : ChainTheory.OpenResult :=
  { address := 536028, stem := "RCSY", decidingClass := "EQUC", firstParting := "FACE-B-NAMED", chapter := "4-3", statement := ChainTheory.Open.wall_536028_RCSY }

end ChainTheory.Plan.P04.Ch3
