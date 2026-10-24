import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D535008_DEFM
import ChainTheory.Discussion.Ch20
import ChainTheory.Foundations.Ch04
import ChainTheory.Foundations.Ch05
import ChainTheory.Gravity.Ch18
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P04.Ch8

abbrev plan_516262_JCM2 : Prop := ChainTheory.Foundations.Ch05.row_516262_JCM2

abbrev plan_wall_516623_SCMV : Prop := ChainTheory.Discussion.Ch20.wall_516623_CONW

abbrev plan_516674_EMBR : Prop := ChainTheory.Foundations.Ch05.row_516674_EMBR

abbrev plan_516775_CFTC : Prop := ChainTheory.Foundations.Ch05.row_516775_CFTC

abbrev plan_wall_516903_TRCM : Prop := ChainTheory.Discussion.Ch20.wall_516903_CONX

abbrev plan_518804_COLK : Prop := ChainTheory.Foundations.Ch04.row_518804_COLK

theorem plan_518830_MDFN : type_of% ChainTheory.Foundations.Ch05.row_518830_MDFN := ChainTheory.Foundations.Ch05.row_518830_MDFN

abbrev plan_wall_521366_CNCV : Prop := ChainTheory.Discussion.Ch20.wall_521366_IFFC

abbrev plan_521860_CAAC : Prop := ChainTheory.Foundations.Ch05.row_521860_CAAC

def plan_wall_526948_LNUM_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_526948_LNUM_open

theorem plan_526972_NRGE : type_of% ChainTheory.Foundations.Ch05.row_526972_NRGE := ChainTheory.Foundations.Ch05.row_526972_NRGE

theorem plan_527909_NVCI : type_of% ChainTheory.Foundations.Ch05.row_527909_NVCI := ChainTheory.Foundations.Ch05.row_527909_NVCI

def plan_wall_530040_CKER_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_530040_EQDK_open

def plan_wall_530450_KSKC_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_530450_EQDL_open

def plan_wall_530687_KCL3_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_530687_EQKE_open

def plan_wall_531471_KCL4_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_531471_EQKF_open

def plan_wall_531812_MDRC_open : ChainTheory.OpenResult := ChainTheory.Gravity.Ch18.wall_531812_EQDW_open

def plan_wall_531890_KPLC_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_531890_EQKP_open

def plan_wall_532101_CCSK_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch05.wall_532101_EQTL_open

def wall_533494_MPCF_open : ChainTheory.OpenResult :=
  { address := 533494, stem := "MPCF", decidingClass := "EQFN", firstParting := "PARTING", chapter := "4-8", statement := ChainTheory.Open.wall_533494_MPCF }

def wall_534158_KIDN_open : ChainTheory.OpenResult :=
  { address := 534158, stem := "KIDN", decidingClass := "EQKG", firstParting := "REMAINDER-NAMED", chapter := "4-8", statement := ChainTheory.Open.wall_534158_KIDN }

def wall_534396_BCNC_open : ChainTheory.OpenResult :=
  { address := 534396, stem := "BCNC", decidingClass := "EQEQ", firstParting := "PARTS", chapter := "4-8", statement := ChainTheory.Open.wall_534396_BCNC }

theorem row_535008_DEFM : ChainTheory.Open.cond_535008_DEFM -> type_of% ChainTheory.Data.D535008_DEFM.checks :=
  fun _ => ChainTheory.Data.D535008_DEFM.checks

end ChainTheory.Plan.P04.Ch8
