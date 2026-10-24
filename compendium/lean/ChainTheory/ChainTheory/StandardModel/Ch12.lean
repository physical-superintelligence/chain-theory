import AlphaDerivation
import ChainTheory.Data.D524722_MOTC
import ChainTheory.Data.D524826_DHLP
import ChainTheory.Data.D525309_LBHL
import ChainTheory.Data.D525464_MDTS
import ChainTheory.Data.D525911_QLHL
import ChainTheory.Data.D526310_FPAR
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.Data.D526513_MPJW
import ChainTheory.Data.D526564_TLWN
import ChainTheory.Data.D527937_LJBP
import ChainTheory.Kernel.D527992_ESRL
import ChainTheory.ConditionUnions
import ChainTheory.Data.D528827_XSSF
import ChainTheory.Data.D528961_LHAM
import ChainTheory.Data.D529072_HGHL
import ChainTheory.Data.D531107_FDIS
import ChainTheory.Data.D532153_ENBG
import ChainTheory.Data.D532262_STZC

set_option maxRecDepth 100000

namespace ChainTheory.StandardModel.Ch12

opaque Corollary_1 : Prop

opaque row_515736_BCHR : Prop

opaque row_520483_JRPU : Prop

opaque row_520535_REBF : Prop

opaque row_520561_CMSQ : Prop

opaque row_520822_NRJS : Prop

opaque row_521233_MRSO : Prop

opaque row_521732_RNDL : Prop

opaque row_521758_TWDS : Prop

opaque row_522243_QRSK : Prop

opaque row_522607_FRCF : Prop

opaque row_522656_HDIE : Prop

opaque row_523074_RRFC : Prop

opaque row_523668_OFCS : Prop

opaque wall_521835_EQHC : Prop

opaque wall_521937_UNJD : Prop

opaque wall_522115_EQHD : Prop

opaque wall_522448_EQMU : Prop

end ChainTheory.StandardModel.Ch12

namespace ChainTheory.StandardModel.Ch12

opaque wall_524587_EQOS : Prop

def wall_524587_EQOS_open : ChainTheory.OpenResult :=
  { address := 524587, stem := "ORCB", decidingClass := "EQOS", firstParting := "posed", chapter := "ch12", statement := wall_524587_EQOS }

theorem row_524722_MOTC : type_of% ChainTheory.Data.D524722_MOTC.checks :=
  ChainTheory.Data.D524722_MOTC.checks

theorem row_524826_DHLP : type_of% ChainTheory.Data.D524826_DHLP.checks :=
  ChainTheory.Data.D524826_DHLP.checks

abbrev cond_524905_HMOA : Prop := ChainTheory.Discussion.Landed93.cond_524905_HMOA

abbrev row_524905_HMOA : Prop := ChainTheory.Discussion.Landed93.row_524905_HMOA

abbrev cond_525153_HXDS : Prop := ChainTheory.Discussion.Landed93.cond_525153_HXDS

abbrev row_525153_HXDS : Prop := ChainTheory.Discussion.Landed93.row_525153_HXDS

theorem row_525309_LBHL : type_of% ChainTheory.Data.D525309_LBHL.checks :=
  ChainTheory.Data.D525309_LBHL.checks

theorem row_525464_MDTS : type_of% ChainTheory.Data.D525464_MDTS.checks :=
  ChainTheory.Data.D525464_MDTS.checks

theorem row_525911_QLHL : type_of% ChainTheory.Data.D525911_QLHL.checks :=
  ChainTheory.Data.D525911_QLHL.checks

def wall_526071_EQKN_open : ChainTheory.OpenResult :=
  { address := 526071, stem := "KDSO", decidingClass := "EQKN", firstParting := "parted", chapter := "ch12", statement := ChainTheory.Discussion.Landed93.wall_526071_EQKN }

theorem row_526310_FPAR : type_of% ChainTheory.Data.D526310_FPAR.checks :=
  ChainTheory.Data.D526310_FPAR.checks

def wall_526362_EQKD_open : ChainTheory.OpenResult :=
  { address := 526362, stem := "DDUK", decidingClass := "EQKD", firstParting := "departs", chapter := "ch12", statement := ChainTheory.Discussion.Landed93.wall_526362_EQKD }

end ChainTheory.StandardModel.Ch12

namespace ChainTheory.StandardModel.Ch12

theorem row_526513_MPJW : type_of% ChainTheory.Data.D526513_MPJW.checks :=
  ChainTheory.Data.D526513_MPJW.checks

theorem row_526564_TLWN : type_of% ChainTheory.Data.D526564_TLWN.checks :=
  ChainTheory.Data.D526564_TLWN.checks

opaque wall_527078_EQLJ : Prop

def wall_527078_EQLJ_open : ChainTheory.OpenResult :=
  { address := 527078, stem := "LJRK", decidingClass := "EQLJ", firstParting := "undefined", chapter := "ch12", statement := wall_527078_EQLJ }

theorem row_527937_LJBP : type_of% ChainTheory.Data.D527937_LJBP.checks :=
  ChainTheory.Data.D527937_LJBP.checks

theorem row_527992_ESRL : type_of% ChainTheory.Kernel.D527992_ESRL.checks :=
  ChainTheory.Kernel.D527992_ESRL.checks

opaque wall_528231_DSSM : Prop

def wall_528231_DSSM_open : ChainTheory.OpenResult :=
  { address := 528231, stem := "DSSM", decidingClass := "-", firstParting := "-", chapter := "ch12", statement := wall_528231_DSSM }

end ChainTheory.StandardModel.Ch12

namespace ChainTheory.StandardModel.Ch12

opaque wall_528370_EQEX : Prop

def wall_528370_EQEX_open : ChainTheory.OpenResult :=
  { address := 528370, stem := "XOSE", decidingClass := "EQEX", firstParting := "-", chapter := "ch12", statement := wall_528370_EQEX }

opaque cond_528690_VOFW : Prop

opaque claim_528690_VOFW : Prop

abbrev row_528690_VOFW : Prop := cond_528690_VOFW -> claim_528690_VOFW

theorem row_528690_VOFW_union_census : ChainTheory.ConditionUnions.union_528690_VOFW.members.length = 0 /\ ChainTheory.ConditionUnions.union_528690_VOFW.exceedsLetter = false := by decide

opaque wall_528745_EQLL : Prop

def wall_528745_EQLL_open : ChainTheory.OpenResult :=
  { address := 528745, stem := "LLOR", decidingClass := "EQLL", firstParting := "parting", chapter := "ch12", statement := wall_528745_EQLL }

opaque cond_528827_XSSF : Prop

theorem row_528827_XSSF : cond_528827_XSSF -> type_of% ChainTheory.Data.D528827_XSSF.checks :=
  fun _ => ChainTheory.Data.D528827_XSSF.checks

theorem row_528827_XSSF_union_census : ChainTheory.ConditionUnions.union_528827_XSSF.members.length = 10 /\ ChainTheory.ConditionUnions.union_528827_XSSF.exceedsLetter = true := by decide

opaque cond_528961_LHAM : Prop

theorem row_528961_LHAM : cond_528961_LHAM -> type_of% ChainTheory.Data.D528961_LHAM.checks :=
  fun _ => ChainTheory.Data.D528961_LHAM.checks

theorem row_528961_LHAM_union_census : ChainTheory.ConditionUnions.union_528961_LHAM.members.length = 1 /\ ChainTheory.ConditionUnions.union_528961_LHAM.exceedsLetter = true := by decide

opaque cond_529072_HGHL : Prop

theorem row_529072_HGHL : cond_529072_HGHL -> type_of% ChainTheory.Data.D529072_HGHL.checks :=
  fun _ => ChainTheory.Data.D529072_HGHL.checks

theorem row_529072_HGHL_union_census : ChainTheory.ConditionUnions.union_529072_HGHL.members.length = 3 /\ ChainTheory.ConditionUnions.union_529072_HGHL.exceedsLetter = true := by decide

opaque wall_529407_EQMF : Prop

def wall_529407_EQMF_open : ChainTheory.OpenResult :=
  { address := 529407, stem := "MUSP", decidingClass := "EQMF", firstParting := "parting", chapter := "ch12", statement := wall_529407_EQMF }

opaque wall_529542_EQLO : Prop

def wall_529542_EQLO_open : ChainTheory.OpenResult :=
  { address := 529542, stem := "ENLG", decidingClass := "EQLO", firstParting := "first-lepton-parting-named", chapter := "ch12", statement := wall_529542_EQLO }

opaque wall_529937_EQMP : Prop

def wall_529937_EQMP_open : ChainTheory.OpenResult :=
  { address := 529937, stem := "MUPH", decidingClass := "EQMP", firstParting := "parting", chapter := "ch12", statement := wall_529937_EQMP }

opaque wall_530144_EQHO : Prop

def wall_530144_EQHO_open : ChainTheory.OpenResult :=
  { address := 530144, stem := "HGO2", decidingClass := "EQHO", firstParting := "-", chapter := "ch12", statement := wall_530144_EQHO }

opaque cond_531107_FDIS : Prop

theorem row_531107_FDIS : cond_531107_FDIS -> type_of% ChainTheory.Data.D531107_FDIS.checks :=
  fun _ => ChainTheory.Data.D531107_FDIS.checks

theorem row_531107_FDIS_union_census : ChainTheory.ConditionUnions.union_531107_FDIS.members.length = 5 /\ ChainTheory.ConditionUnions.union_531107_FDIS.exceedsLetter = true := by decide

opaque wall_531159_EQRH : Prop

def wall_531159_EQRH_open : ChainTheory.OpenResult :=
  { address := 531159, stem := "GPRR", decidingClass := "EQRH", firstParting := "arithmetic-alone", chapter := "ch12", statement := wall_531159_EQRH }

opaque wall_531576_EQTJ : Prop

def wall_531576_EQTJ_open : ChainTheory.OpenResult :=
  { address := 531576, stem := "SCTJ", decidingClass := "EQTJ", firstParting := "parting", chapter := "ch12", statement := wall_531576_EQTJ }

opaque wall_531602_EQEY : Prop

def wall_531602_EQEY_open : ChainTheory.OpenResult :=
  { address := 531602, stem := "EXMH", decidingClass := "EQEY", firstParting := "parting", chapter := "ch12", statement := wall_531602_EQEY }

opaque cond_532153_ENBG : Prop

theorem row_532153_ENBG : cond_532153_ENBG -> type_of% ChainTheory.Data.D532153_ENBG.checks :=
  fun _ => ChainTheory.Data.D532153_ENBG.checks

theorem row_532153_ENBG_union_census : ChainTheory.ConditionUnions.union_532153_ENBG.members.length = 12 /\ ChainTheory.ConditionUnions.union_532153_ENBG.exceedsLetter = true := by decide

opaque cond_532262_STZC : Prop

theorem row_532262_STZC : cond_532262_STZC -> type_of% ChainTheory.Data.D532262_STZC.checks :=
  fun _ => ChainTheory.Data.D532262_STZC.checks

theorem row_532262_STZC_union_census : ChainTheory.ConditionUnions.union_532262_STZC.members.length = 7 /\ ChainTheory.ConditionUnions.union_532262_STZC.exceedsLetter = true := by decide

opaque wall_532447_EQAV : Prop

def wall_532447_EQAV_open : ChainTheory.OpenResult :=
  { address := 532447, stem := "ATSV", decidingClass := "EQAV", firstParting := "parting", chapter := "ch12", statement := wall_532447_EQAV }

opaque wall_532524_EQHK : Prop

def wall_532524_EQHK_open : ChainTheory.OpenResult :=
  { address := 532524, stem := "ATHG", decidingClass := "EQHK", firstParting := "first-parting-named", chapter := "ch12", statement := wall_532524_EQHK }

opaque wall_532550_EQEA : Prop

def wall_532550_EQEA_open : ChainTheory.OpenResult :=
  { address := 532550, stem := "DRDS", decidingClass := "EQEA", firstParting := "first-parting-named", chapter := "ch12", statement := wall_532550_EQEA }

end ChainTheory.StandardModel.Ch12
