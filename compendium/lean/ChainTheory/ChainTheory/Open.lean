import ChainTheory.CompositeMatter.Ch14
import ChainTheory.CompositeMatter.Ch15
import ChainTheory.CompositeMatter.Ch16
import ChainTheory.CompositeMatter.Ch17
import ChainTheory.ConditionUnions
import ChainTheory.Discussion.Appendices
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch06
import ChainTheory.Fields.Ch07
import ChainTheory.Fields.Ch08
import ChainTheory.Fields.Ch09
import ChainTheory.Foundations.Ch01
import ChainTheory.Foundations.Ch02
import ChainTheory.Foundations.Ch03
import ChainTheory.Foundations.Ch04
import ChainTheory.Foundations.Ch05
import ChainTheory.Foundations.Measurement
import ChainTheory.Gravity.Ch18
import ChainTheory.Gravity.Ch19
import ChainTheory.InformationComputation.Landed93
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10
import ChainTheory.StandardModel.Ch11
import ChainTheory.StandardModel.Ch12
import ChainTheory.StandardModel.Ch13
import ChainTheory.Thermodynamics.Landed93

set_option maxRecDepth 100000

namespace ChainTheory.Open

inductive OpenKind where
  | wall | conditional | reading
deriving Repr, DecidableEq

inductive CensusStatus where
  | open | reposed | superseded | beyond | none
deriving Repr, DecidableEq

structure OpenDeclaration where
  address : Nat
  stem : String
  kind : OpenKind
  status : CensusStatus
  decidingClass : String
  letter : String
  chapter : String
  edition : Nat
  statement : Prop

opaque cond_503180_ULPR : Prop

def cond_503180_ULPR_open : OpenDeclaration :=
  { address := 503180, stem := "ULPR", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-2", edition := 7, statement := cond_503180_ULPR }

opaque cond_504521_RSBD : Prop

def cond_504521_RSBD_open : OpenDeclaration :=
  { address := 504521, stem := "RSBD", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-3", edition := 7, statement := cond_504521_RSBD }

opaque cond_507228_TWCN : Prop

def cond_507228_TWCN_open : OpenDeclaration :=
  { address := 507228, stem := "TWCN", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-1", edition := 7, statement := cond_507228_TWCN }

opaque cond_510035_TKDP : Prop

def cond_510035_TKDP_open : OpenDeclaration :=
  { address := 510035, stem := "TKDP", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-1", edition := 7, statement := cond_510035_TKDP }

opaque cond_515504_JSAS : Prop

def cond_515504_JSAS_open : OpenDeclaration :=
  { address := 515504, stem := "JSAS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "6-3", edition := 7, statement := cond_515504_JSAS }

opaque cond_515843_ARS2 : Prop

def cond_515843_ARS2_open : OpenDeclaration :=
  { address := 515843, stem := "ARS2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-6", edition := 7, statement := cond_515843_ARS2 }

opaque cond_516104_PFD2 : Prop

def cond_516104_PFD2_open : OpenDeclaration :=
  { address := 516104, stem := "PFD2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "12-4", edition := 7, statement := cond_516104_PFD2 }

opaque cond_516262_JCM2 : Prop

def cond_516262_JCM2_open : OpenDeclaration :=
  { address := 516262, stem := "JCM2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-8", edition := 7, statement := cond_516262_JCM2 }

opaque cond_516343_UWC2 : Prop

def cond_516343_UWC2_open : OpenDeclaration :=
  { address := 516343, stem := "UWC2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-5", edition := 7, statement := cond_516343_UWC2 }

abbrev wall_516623_SCMV : Prop := ChainTheory.Discussion.Ch20.wall_516623_CONW

def wall_516623_SCMV_open : OpenDeclaration :=
  { address := 516623, stem := "SCMV", kind := .wall, status := .superseded, decidingClass := "CONW", letter := "-", chapter := "4-8", edition := 6, statement := wall_516623_SCMV }

abbrev wall_516650_ORXS : Prop := ChainTheory.Discussion.Ch20.wall_516650_EXCM

def wall_516650_ORXS_open : OpenDeclaration :=
  { address := 516650, stem := "ORXS", kind := .wall, status := .superseded, decidingClass := "EXCM", letter := "-", chapter := "1-4", edition := 6, statement := wall_516650_ORXS }

opaque cond_516700_CPAS : Prop

def cond_516700_CPAS_open : OpenDeclaration :=
  { address := 516700, stem := "CPAS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-6", edition := 7, statement := cond_516700_CPAS }

opaque cond_516775_CFTC : Prop

def cond_516775_CFTC_open : OpenDeclaration :=
  { address := 516775, stem := "CFTC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-8", edition := 7, statement := cond_516775_CFTC }

abbrev wall_516828_PSCM : Prop := ChainTheory.Discussion.Ch20.wall_516828_RPRF

def wall_516828_PSCM_open : OpenDeclaration :=
  { address := 516828, stem := "PSCM", kind := .wall, status := .superseded, decidingClass := "RPRF", letter := "-", chapter := "5-7", edition := 6, statement := wall_516828_PSCM }

abbrev wall_516854_PVRD : Prop := ChainTheory.Discussion.Ch20.wall_516854_ORNV

def wall_516854_PVRD_open : OpenDeclaration :=
  { address := 516854, stem := "PVRD", kind := .wall, status := .superseded, decidingClass := "ORNV", letter := "-", chapter := "3-6", edition := 6, statement := wall_516854_PVRD }

abbrev wall_516903_TRCM : Prop := ChainTheory.Discussion.Ch20.wall_516903_CONX

def wall_516903_TRCM_open : OpenDeclaration :=
  { address := 516903, stem := "TRCM", kind := .wall, status := .superseded, decidingClass := "CONX", letter := "-", chapter := "4-8", edition := 6, statement := wall_516903_TRCM }

abbrev wall_516930_NCC2 : Prop := ChainTheory.Discussion.Ch20.wall_516930_CT

def wall_516930_NCC2_open : OpenDeclaration :=
  { address := 516930, stem := "NCC2", kind := .wall, status := .none, decidingClass := "CT", letter := "-", chapter := "13-2", edition := 6, statement := wall_516930_NCC2 }

abbrev wall_516990_CRPH : Prop := ChainTheory.Discussion.Ch20.wall_516990_FORE

def wall_516990_CRPH_open : OpenDeclaration :=
  { address := 516990, stem := "CRPH", kind := .wall, status := .superseded, decidingClass := "FORE", letter := "-", chapter := "3-6", edition := 6, statement := wall_516990_CRPH }

abbrev wall_517016_MGFC : Prop := ChainTheory.Discussion.Ch20.wall_517016_ZERQ

def wall_517016_MGFC_open : OpenDeclaration :=
  { address := 517016, stem := "MGFC", kind := .wall, status := .superseded, decidingClass := "ZERQ", letter := "-", chapter := "1-2", edition := 6, statement := wall_517016_MGFC }

abbrev wall_517119_IDC2 : Prop := ChainTheory.Discussion.Ch20.wall_517119_RULG

def wall_517119_IDC2_open : OpenDeclaration :=
  { address := 517119, stem := "IDC2", kind := .wall, status := .open, decidingClass := "RULG", letter := "-", chapter := "4-12", edition := 6, statement := wall_517119_IDC2 }

abbrev wall_517145_CHSC : Prop := ChainTheory.Discussion.Ch20.wall_517145_MASU

def wall_517145_CHSC_open : OpenDeclaration :=
  { address := 517145, stem := "CHSC", kind := .wall, status := .superseded, decidingClass := "MASU", letter := "-", chapter := "2-7", edition := 6, statement := wall_517145_CHSC }

opaque cond_517173_SPMV : Prop

def cond_517173_SPMV_open : OpenDeclaration :=
  { address := 517173, stem := "SPMV", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-5", edition := 7, statement := cond_517173_SPMV }

opaque cond_517200_CEND : Prop

def cond_517200_CEND_open : OpenDeclaration :=
  { address := 517200, stem := "CEND", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-6", edition := 7, statement := cond_517200_CEND }

abbrev wall_517250_RLAP : Prop := ChainTheory.Discussion.Ch20.wall_517250_CMPT

def wall_517250_RLAP_open : OpenDeclaration :=
  { address := 517250, stem := "RLAP", kind := .wall, status := .superseded, decidingClass := "CMPT", letter := "-", chapter := "1-3", edition := 6, statement := wall_517250_RLAP }

abbrev wall_517276_ORRB : Prop := ChainTheory.Discussion.Ch20.wall_517276_BODB

def wall_517276_ORRB_open : OpenDeclaration :=
  { address := 517276, stem := "ORRB", kind := .wall, status := .superseded, decidingClass := "BODB", letter := "-", chapter := "1-4", edition := 6, statement := wall_517276_ORRB }

abbrev wall_517326_DLCA : Prop := ChainTheory.Discussion.Ch20.wall_517326_FRSV

def wall_517326_DLCA_open : OpenDeclaration :=
  { address := 517326, stem := "DLCA", kind := .wall, status := .superseded, decidingClass := "FRSV", letter := "-", chapter := "6-1", edition := 6, statement := wall_517326_DLCA }

abbrev wall_517351 : Prop := ChainTheory.Discussion.Ch20.wall_517351_CTSL

def wall_517351_open : OpenDeclaration :=
  { address := 517351, stem := "", kind := .wall, status := .none, decidingClass := "-", letter := "-", chapter := "13-2", edition := 6, statement := wall_517351 }

abbrev wall_517380 : Prop := ChainTheory.Discussion.Ch20.wall_517380_NORN

def wall_517380_open : OpenDeclaration :=
  { address := 517380, stem := "", kind := .wall, status := .none, decidingClass := "-", letter := "-", chapter := "7-9", edition := 6, statement := wall_517380 }

abbrev wall_517407_HDBD : Prop := ChainTheory.Discussion.Ch20.wall_517407_CMPT

def wall_517407_HDBD_open : OpenDeclaration :=
  { address := 517407, stem := "HDBD", kind := .wall, status := .superseded, decidingClass := "CMPT", letter := "-", chapter := "7-1", edition := 6, statement := wall_517407_HDBD }

abbrev wall_517460_CHS2 : Prop := ChainTheory.Discussion.Ch20.wall_517460_EMBS

def wall_517460_CHS2_open : OpenDeclaration :=
  { address := 517460, stem := "CHS2", kind := .wall, status := .superseded, decidingClass := "EMBS", letter := "-", chapter := "2-7", edition := 6, statement := wall_517460_CHS2 }

abbrev wall_517488_CROP : Prop := ChainTheory.Discussion.Ch20.wall_517488_PLAC

def wall_517488_CROP_open : OpenDeclaration :=
  { address := 517488, stem := "CROP", kind := .wall, status := .superseded, decidingClass := "PLAC", letter := "-", chapter := "5-1", edition := 6, statement := wall_517488_CROP }

abbrev wall_517513_HFBD : Prop := ChainTheory.Discussion.Ch20.wall_517513_MASV

def wall_517513_HFBD_open : OpenDeclaration :=
  { address := 517513, stem := "HFBD", kind := .wall, status := .superseded, decidingClass := "MASV", letter := "-", chapter := "7-1", edition := 6, statement := wall_517513_HFBD }

abbrev wall_517590_OACD : Prop := ChainTheory.Discussion.Ch20.wall_517590_DISD

def wall_517590_OACD_open : OpenDeclaration :=
  { address := 517590, stem := "OACD", kind := .wall, status := .superseded, decidingClass := "DISD", letter := "-", chapter := "1-1", edition := 6, statement := wall_517590_OACD }

abbrev wall_517615_CSPN : Prop := ChainTheory.Discussion.Ch20.wall_517615_COMN

def wall_517615_CSPN_open : OpenDeclaration :=
  { address := 517615, stem := "CSPN", kind := .wall, status := .open, decidingClass := "COMN", letter := "-", chapter := "4-9", edition := 6, statement := wall_517615_CSPN }

abbrev wall_517641_LFCF : Prop := ChainTheory.Discussion.Ch20.wall_517641_MOVH

def wall_517641_LFCF_open : OpenDeclaration :=
  { address := 517641, stem := "LFCF", kind := .wall, status := .superseded, decidingClass := "MOVH", letter := "-", chapter := "7-5", edition := 6, statement := wall_517641_LFCF }

abbrev wall_517666_BOOR : Prop := ChainTheory.Discussion.Ch20.wall_517666_MIXB

def wall_517666_BOOR_open : OpenDeclaration :=
  { address := 517666, stem := "BOOR", kind := .wall, status := .superseded, decidingClass := "MIXB", letter := "-", chapter := "3-4", edition := 6, statement := wall_517666_BOOR }

abbrev wall_517766_SKEY : Prop := ChainTheory.Discussion.Ch20.wall_517766_SEPS

def wall_517766_SKEY_open : OpenDeclaration :=
  { address := 517766, stem := "SKEY", kind := .wall, status := .superseded, decidingClass := "SEPS", letter := "-", chapter := "7-5", edition := 6, statement := wall_517766_SKEY }

abbrev wall_517818_CFRG : Prop := ChainTheory.Discussion.Ch20.wall_517818_ANAU

def wall_517818_CFRG_open : OpenDeclaration :=
  { address := 517818, stem := "CFRG", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "4-3", edition := 6, statement := wall_517818_CFRG }

abbrev wall_517843_PLMX : Prop := ChainTheory.Discussion.Ch20.wall_517843_UNIY

def wall_517843_PLMX_open : OpenDeclaration :=
  { address := 517843, stem := "PLMX", kind := .wall, status := .superseded, decidingClass := "UNIY", letter := "-", chapter := "7-9", edition := 6, statement := wall_517843_PLMX }

abbrev wall_517870_WTWT : Prop := ChainTheory.Discussion.Ch20.wall_517870_CMPY

def wall_517870_WTWT_open : OpenDeclaration :=
  { address := 517870, stem := "WTWT", kind := .wall, status := .superseded, decidingClass := "CMPY", letter := "-", chapter := "5-1", edition := 6, statement := wall_517870_WTWT }

abbrev wall_517895_RPCZ : Prop := ChainTheory.Discussion.Ch20.wall_517895_FORF

def wall_517895_RPCZ_open : OpenDeclaration :=
  { address := 517895, stem := "RPCZ", kind := .wall, status := .superseded, decidingClass := "FORF", letter := "-", chapter := "5-1", edition := 6, statement := wall_517895_RPCZ }

abbrev wall_518059_BTKR : Prop := ChainTheory.Discussion.Ch20.wall_518059_RATR

def wall_518059_BTKR_open : OpenDeclaration :=
  { address := 518059, stem := "BTKR", kind := .wall, status := .superseded, decidingClass := "RATR", letter := "-", chapter := "3-4", edition := 6, statement := wall_518059_BTKR }

abbrev wall_518084_CFMN : Prop := ChainTheory.Discussion.Ch20.wall_518084_MINL

def wall_518084_CFMN_open : OpenDeclaration :=
  { address := 518084, stem := "CFMN", kind := .wall, status := .superseded, decidingClass := "MINL", letter := "-", chapter := "5-1", edition := 6, statement := wall_518084_CFMN }

abbrev wall_518109_OACR : Prop := ChainTheory.Discussion.Ch20.wall_518109_ACTU

def wall_518109_OACR_open : OpenDeclaration :=
  { address := 518109, stem := "OACR", kind := .wall, status := .superseded, decidingClass := "ACTU", letter := "-", chapter := "1-1", edition := 6, statement := wall_518109_OACR }

abbrev wall_518134_ZTLR : Prop := ChainTheory.Discussion.Ch20.wall_518134_OFFD

def wall_518134_ZTLR_open : OpenDeclaration :=
  { address := 518134, stem := "ZTLR", kind := .wall, status := .superseded, decidingClass := "OFFD", letter := "-", chapter := "4-11", edition := 6, statement := wall_518134_ZTLR }

abbrev wall_518186_SCDC : Prop := ChainTheory.Discussion.Ch20.wall_518186_BMLD

def wall_518186_SCDC_open : OpenDeclaration :=
  { address := 518186, stem := "SCDC", kind := .wall, status := .superseded, decidingClass := "BMLD", letter := "-", chapter := "9-7", edition := 6, statement := wall_518186_SCDC }

abbrev wall_518212_CLAF : Prop := ChainTheory.Discussion.Ch20.wall_518212_FORN

def wall_518212_CLAF_open : OpenDeclaration :=
  { address := 518212, stem := "CLAF", kind := .wall, status := .superseded, decidingClass := "FORN", letter := "-", chapter := "5-1", edition := 6, statement := wall_518212_CLAF }

abbrev wall_518237_RCSG : Prop := ChainTheory.Discussion.Ch20.wall_518237_CODD

def wall_518237_RCSG_open : OpenDeclaration :=
  { address := 518237, stem := "RCSG", kind := .wall, status := .superseded, decidingClass := "CODD", letter := "-", chapter := "3-6", edition := 6, statement := wall_518237_RCSG }

abbrev wall_518262_NNRD : Prop := ChainTheory.Discussion.Ch20.wall_518262_SPEF

def wall_518262_NNRD_open : OpenDeclaration :=
  { address := 518262, stem := "NNRD", kind := .wall, status := .open, decidingClass := "SPEF", letter := "-", chapter := "6-3", edition := 6, statement := wall_518262_NNRD }

abbrev wall_518289_STSK : Prop := ChainTheory.Discussion.Ch20.wall_518289_INJV

def wall_518289_STSK_open : OpenDeclaration :=
  { address := 518289, stem := "STSK", kind := .wall, status := .superseded, decidingClass := "INJV", letter := "-", chapter := "7-5", edition := 6, statement := wall_518289_STSK }

abbrev wall_518314_HPEF : Prop := ChainTheory.Discussion.Ch20.wall_518314_HUBH

def wall_518314_HPEF_open : OpenDeclaration :=
  { address := 518314, stem := "HPEF", kind := .wall, status := .superseded, decidingClass := "HUBH", letter := "-", chapter := "7-1", edition := 6, statement := wall_518314_HPEF }

abbrev wall_518339_MOAJ : Prop := ChainTheory.Discussion.Ch20.wall_518339_ADDV

def wall_518339_MOAJ_open : OpenDeclaration :=
  { address := 518339, stem := "MOAJ", kind := .wall, status := .superseded, decidingClass := "ADDV", letter := "-", chapter := "7-1", edition := 6, statement := wall_518339_MOAJ }

abbrev wall_518498_RTSR : Prop := ChainTheory.Discussion.Ch20.wall_518498_TIEV

def wall_518498_RTSR_open : OpenDeclaration :=
  { address := 518498, stem := "RTSR", kind := .wall, status := .superseded, decidingClass := "TIEV", letter := "-", chapter := "6-5", edition := 6, statement := wall_518498_RTSR }

abbrev wall_518523_SEDK : Prop := ChainTheory.Discussion.Ch20.wall_518523_STAW

def wall_518523_SEDK_open : OpenDeclaration :=
  { address := 518523, stem := "SEDK", kind := .wall, status := .superseded, decidingClass := "STAW", letter := "-", chapter := "6-3", edition := 6, statement := wall_518523_SEDK }

abbrev wall_518548_THBC : Prop := ChainTheory.Discussion.Ch20.wall_518548_REAF

def wall_518548_THBC_open : OpenDeclaration :=
  { address := 518548, stem := "THBC", kind := .wall, status := .superseded, decidingClass := "REAF", letter := "-", chapter := "5-7", edition := 6, statement := wall_518548_THBC }

abbrev wall_518601_CMFP : Prop := ChainTheory.Discussion.Ch20.wall_518601_POWS

def wall_518601_CMFP_open : OpenDeclaration :=
  { address := 518601, stem := "CMFP", kind := .wall, status := .superseded, decidingClass := "POWS", letter := "-", chapter := "7-1", edition := 6, statement := wall_518601_CMFP }

abbrev wall_518627_SKCS : Prop := ChainTheory.Discussion.Ch20.wall_518627_INJW

def wall_518627_SKCS_open : OpenDeclaration :=
  { address := 518627, stem := "SKCS", kind := .wall, status := .superseded, decidingClass := "INJW", letter := "-", chapter := "7-5", edition := 6, statement := wall_518627_SKCS }

abbrev wall_518652_DTCJ : Prop := ChainTheory.Discussion.Ch20.wall_518652_EXCU

def wall_518652_DTCJ_open : OpenDeclaration :=
  { address := 518652, stem := "DTCJ", kind := .wall, status := .open, decidingClass := "EXCU", letter := "-", chapter := "3-7", edition := 6, statement := wall_518652_DTCJ }

abbrev wall_518677_SUCM : Prop := ChainTheory.Discussion.Ch20.wall_518677_CODF

def wall_518677_SUCM_open : OpenDeclaration :=
  { address := 518677, stem := "SUCM", kind := .wall, status := .superseded, decidingClass := "CODF", letter := "-", chapter := "4-6", edition := 6, statement := wall_518677_SUCM }

abbrev wall_518702_NRCL : Prop := ChainTheory.Discussion.Ch20.wall_518702_PRIN

def wall_518702_NRCL_open : OpenDeclaration :=
  { address := 518702, stem := "NRCL", kind := .wall, status := .open, decidingClass := "PRIN", letter := "-", chapter := "5-1", edition := 6, statement := wall_518702_NRCL }

abbrev wall_518727_HERG : Prop := ChainTheory.Discussion.Ch20.wall_518727_RULI

def wall_518727_HERG_open : OpenDeclaration :=
  { address := 518727, stem := "HERG", kind := .wall, status := .superseded, decidingClass := "RULI", letter := "-", chapter := "7-1", edition := 6, statement := wall_518727_HERG }

opaque cond_518804_COLK : Prop

def cond_518804_COLK_open : OpenDeclaration :=
  { address := 518804, stem := "COLK", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-8", edition := 7, statement := cond_518804_COLK }

opaque cond_518830_MDFN : Prop

def cond_518830_MDFN_open : OpenDeclaration :=
  { address := 518830, stem := "MDFN", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-8", edition := 7, statement := cond_518830_MDFN }

abbrev wall_518958_CFTP : Prop := ChainTheory.Discussion.Ch20.wall_518958_WORF

def wall_518958_CFTP_open : OpenDeclaration :=
  { address := 518958, stem := "CFTP", kind := .wall, status := .superseded, decidingClass := "WORF", letter := "-", chapter := "5-1", edition := 6, statement := wall_518958_CFTP }

abbrev wall_519009_QRJR : Prop := ChainTheory.Discussion.Ch20.wall_519009_REGI

def wall_519009_QRJR_open : OpenDeclaration :=
  { address := 519009, stem := "QRJR", kind := .wall, status := .superseded, decidingClass := "REGI", letter := "-", chapter := "6-7", edition := 6, statement := wall_519009_QRJR }

abbrev wall_519035_SOEL : Prop := ChainTheory.Discussion.Ch20.wall_519035_SPIP

def wall_519035_SOEL_open : OpenDeclaration :=
  { address := 519035, stem := "SOEL", kind := .wall, status := .superseded, decidingClass := "SPIP", letter := "-", chapter := "3-5", edition := 6, statement := wall_519035_SOEL }

abbrev wall_519060_WPWC : Prop := ChainTheory.Discussion.Ch20.wall_519060_EQLW

def wall_519060_WPWC_open : OpenDeclaration :=
  { address := 519060, stem := "WPWC", kind := .wall, status := .superseded, decidingClass := "EQLW", letter := "-", chapter := "4-11", edition := 6, statement := wall_519060_WPWC }

abbrev wall_519086_MURR : Prop := ChainTheory.Discussion.Ch20.wall_519086_MULV

def wall_519086_MURR_open : OpenDeclaration :=
  { address := 519086, stem := "MURR", kind := .wall, status := .superseded, decidingClass := "MULV", letter := "-", chapter := "7-1", edition := 6, statement := wall_519086_MURR }

abbrev wall_519112_RTBF : Prop := ChainTheory.Discussion.Ch20.wall_519112_STAZ

def wall_519112_RTBF_open : OpenDeclaration :=
  { address := 519112, stem := "RTBF", kind := .wall, status := .superseded, decidingClass := "STAZ", letter := "-", chapter := "7-1", edition := 6, statement := wall_519112_RTBF }

abbrev wall_519164_QFCL : Prop := ChainTheory.Discussion.Ch20.wall_519164_FRCO

def wall_519164_QFCL_open : OpenDeclaration :=
  { address := 519164, stem := "QFCL", kind := .wall, status := .reposed, decidingClass := "FRCO", letter := "-", chapter := "2-1", edition := 6, statement := wall_519164_QFCL }

opaque cond_519215_MDEO : Prop

def cond_519215_MDEO_open : OpenDeclaration :=
  { address := 519215, stem := "MDEO", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-9", edition := 7, statement := cond_519215_MDEO }

abbrev wall_519345_HDKC : Prop := ChainTheory.Discussion.Ch20.wall_519345_RULJ

def wall_519345_HDKC_open : OpenDeclaration :=
  { address := 519345, stem := "HDKC", kind := .wall, status := .superseded, decidingClass := "RULJ", letter := "-", chapter := "7-1", edition := 6, statement := wall_519345_HDKC }

opaque cond_519396_PFRL : Prop

def cond_519396_PFRL_open : OpenDeclaration :=
  { address := 519396, stem := "PFRL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-6", edition := 7, statement := cond_519396_PFRL }

abbrev wall_519497_DSSP : Prop := ChainTheory.Discussion.Ch20.wall_519497_CLSJ

def wall_519497_DSSP_open : OpenDeclaration :=
  { address := 519497, stem := "DSSP", kind := .wall, status := .superseded, decidingClass := "CLSJ", letter := "-", chapter := "3-2", edition := 6, statement := wall_519497_DSSP }

abbrev wall_519574_GORN : Prop := ChainTheory.Discussion.Ch20.wall_519574_GAIP

def wall_519574_GORN_open : OpenDeclaration :=
  { address := 519574, stem := "GORN", kind := .wall, status := .superseded, decidingClass := "GAIP", letter := "-", chapter := "1-3", edition := 6, statement := wall_519574_GORN }

abbrev wall_519674_RSM2 : Prop := ChainTheory.Discussion.Ch20.wall_519674_ROST

def wall_519674_RSM2_open : OpenDeclaration :=
  { address := 519674, stem := "RSM2", kind := .wall, status := .superseded, decidingClass := "ROST", letter := "-", chapter := "4-3", edition := 6, statement := wall_519674_RSM2 }

abbrev wall_519857_GIWO : Prop := ChainTheory.Discussion.Ch20.wall_519857_GAIQ

def wall_519857_GIWO_open : OpenDeclaration :=
  { address := 519857, stem := "GIWO", kind := .wall, status := .superseded, decidingClass := "GAIQ", letter := "-", chapter := "1-3", edition := 6, statement := wall_519857_GIWO }

abbrev wall_519912_SAD2 : Prop := ChainTheory.Discussion.Ch20.wall_519912_AMPM

def wall_519912_SAD2_open : OpenDeclaration :=
  { address := 519912, stem := "SAD2", kind := .wall, status := .superseded, decidingClass := "AMPM", letter := "-", chapter := "3-5", edition := 6, statement := wall_519912_SAD2 }

abbrev wall_519964_OBPS : Prop := ChainTheory.Discussion.Ch20.wall_519964_FORG

def wall_519964_OBPS_open : OpenDeclaration :=
  { address := 519964, stem := "OBPS", kind := .wall, status := .superseded, decidingClass := "FORG", letter := "-", chapter := "2-1", edition := 6, statement := wall_519964_OBPS }

opaque cond_520041_CRLK : Prop

def cond_520041_CRLK_open : OpenDeclaration :=
  { address := 520041, stem := "CRLK", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-3", edition := 7, statement := cond_520041_CRLK }

opaque cond_520119_GWDC : Prop

def cond_520119_GWDC_open : OpenDeclaration :=
  { address := 520119, stem := "GWDC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-3", edition := 7, statement := cond_520119_GWDC }

abbrev wall_520224_SPSE : Prop := ChainTheory.Discussion.Ch20.wall_520224_CORV

def wall_520224_SPSE_open : OpenDeclaration :=
  { address := 520224, stem := "SPSE", kind := .wall, status := .reposed, decidingClass := "CORV", letter := "-", chapter := "4-6", edition := 6, statement := wall_520224_SPSE }

opaque cond_520248_RLPQ : Prop

def cond_520248_RLPQ_open : OpenDeclaration :=
  { address := 520248, stem := "RLPQ", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-4", edition := 7, statement := cond_520248_RLPQ }

abbrev wall_520274_HCSR : Prop := ChainTheory.Discussion.Ch20.wall_520274_CNTH

def wall_520274_HCSR_open : OpenDeclaration :=
  { address := 520274, stem := "HCSR", kind := .wall, status := .open, decidingClass := "CNTH", letter := "-", chapter := "7-1", edition := 6, statement := wall_520274_HCSR }

abbrev wall_520353_RMFD : Prop := ChainTheory.Discussion.Ch20.wall_520353_EQLZ

def wall_520353_RMFD_open : OpenDeclaration :=
  { address := 520353, stem := "RMFD", kind := .wall, status := .superseded, decidingClass := "EQLZ", letter := "-", chapter := "5-1", edition := 6, statement := wall_520353_RMFD }

abbrev wall_520379_CPCX : Prop := ChainTheory.Discussion.Ch20.wall_520379_PHAT

def wall_520379_CPCX_open : OpenDeclaration :=
  { address := 520379, stem := "CPCX", kind := .wall, status := .superseded, decidingClass := "PHAT", letter := "-", chapter := "3-6", edition := 6, statement := wall_520379_CPCX }

abbrev wall_520431_DSML : Prop := ChainTheory.Discussion.Ch20.wall_520431_LADE

def wall_520431_DSML_open : OpenDeclaration :=
  { address := 520431, stem := "DSML", kind := .wall, status := .superseded, decidingClass := "LADE", letter := "-", chapter := "7-1", edition := 6, statement := wall_520431_DSML }

opaque cond_520457_SKDM : Prop

def cond_520457_SKDM_open : OpenDeclaration :=
  { address := 520457, stem := "SKDM", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-5", edition := 7, statement := cond_520457_SKDM }

opaque cond_520663_RLTV : Prop

def cond_520663_RLTV_open : OpenDeclaration :=
  { address := 520663, stem := "RLTV", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-4", edition := 7, statement := cond_520663_RLTV }

abbrev wall_520715_CFMU : Prop := ChainTheory.Discussion.Ch20.wall_520715_FRCP

def wall_520715_CFMU_open : OpenDeclaration :=
  { address := 520715, stem := "CFMU", kind := .wall, status := .open, decidingClass := "FRCP", letter := "-", chapter := "5-1", edition := 6, statement := wall_520715_CFMU }

abbrev wall_520740_QRJS : Prop := ChainTheory.Discussion.Ch20.wall_520740_BOUN

def wall_520740_QRJS_open : OpenDeclaration :=
  { address := 520740, stem := "QRJS", kind := .wall, status := .superseded, decidingClass := "BOUN", letter := "-", chapter := "6-7", edition := 6, statement := wall_520740_QRJS }

abbrev wall_520766_HRSP : Prop := ChainTheory.Discussion.Ch20.wall_520766_CNTY

def wall_520766_HRSP_open : OpenDeclaration :=
  { address := 520766, stem := "HRSP", kind := .wall, status := .open, decidingClass := "CNTY", letter := "-", chapter := "7-1", edition := 6, statement := wall_520766_HRSP }

abbrev wall_520848_RSOM : Prop := ChainTheory.Discussion.Ch20.wall_520848_ROSU

def wall_520848_RSOM_open : OpenDeclaration :=
  { address := 520848, stem := "RSOM", kind := .wall, status := .superseded, decidingClass := "ROSU", letter := "-", chapter := "4-3", edition := 6, statement := wall_520848_RSOM }

abbrev wall_520925_SRXE : Prop := ChainTheory.Discussion.Ch20.wall_520925_SLOV

def wall_520925_SRXE_open : OpenDeclaration :=
  { address := 520925, stem := "SRXE", kind := .wall, status := .reposed, decidingClass := "SLOV", letter := "-", chapter := "4-6", edition := 6, statement := wall_520925_SRXE }

abbrev wall_520950_BCVL : Prop := ChainTheory.Discussion.Ch20.wall_520950_BNDC

def wall_520950_BCVL_open : OpenDeclaration :=
  { address := 520950, stem := "BCVL", kind := .wall, status := .superseded, decidingClass := "BNDC", letter := "-", chapter := "10-1", edition := 6, statement := wall_520950_BCVL }

abbrev wall_520975_CRTN : Prop := ChainTheory.Discussion.Ch20.wall_520975_CNSW

def wall_520975_CRTN_open : OpenDeclaration :=
  { address := 520975, stem := "CRTN", kind := .wall, status := .superseded, decidingClass := "CNSW", letter := "-", chapter := "4-5", edition := 6, statement := wall_520975_CRTN }

opaque cond_521130_RAEO : Prop

def cond_521130_RAEO_open : OpenDeclaration :=
  { address := 521130, stem := "RAEO", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-7", edition := 7, statement := cond_521130_RAEO }

abbrev wall_521182_ESGN : Prop := ChainTheory.Discussion.Ch20.wall_521182_GENZ

def wall_521182_ESGN_open : OpenDeclaration :=
  { address := 521182, stem := "ESGN", kind := .wall, status := .superseded, decidingClass := "GENZ", letter := "-", chapter := "2-6", edition := 6, statement := wall_521182_ESGN }

abbrev wall_521208_STOD : Prop := ChainTheory.Discussion.Ch20.wall_521208_IFFS

def wall_521208_STOD_open : OpenDeclaration :=
  { address := 521208, stem := "STOD", kind := .wall, status := .superseded, decidingClass := "IFFS", letter := "-", chapter := "2-5", edition := 6, statement := wall_521208_STOD }

abbrev wall_521285_SPRE : Prop := ChainTheory.Discussion.Ch20.wall_521285_EIGN

def wall_521285_SPRE_open : OpenDeclaration :=
  { address := 521285, stem := "SPRE", kind := .wall, status := .reposed, decidingClass := "EIGN", letter := "-", chapter := "4-6", edition := 6, statement := wall_521285_SPRE }

abbrev wall_521366_CNCV : Prop := ChainTheory.Discussion.Ch20.wall_521366_IFFC

def wall_521366_CNCV_open : OpenDeclaration :=
  { address := 521366, stem := "CNCV", kind := .wall, status := .superseded, decidingClass := "IFFC", letter := "-", chapter := "4-8", edition := 6, statement := wall_521366_CNCV }

opaque cond_521443_WDCL : Prop

def cond_521443_WDCL_open : OpenDeclaration :=
  { address := 521443, stem := "WDCL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-10", edition := 7, statement := cond_521443_WDCL }

abbrev wall_521469_CCEN : Prop := ChainTheory.Discussion.Ch20.wall_521469_DIMO

def wall_521469_CCEN_open : OpenDeclaration :=
  { address := 521469, stem := "CCEN", kind := .wall, status := .superseded, decidingClass := "DIMO", letter := "-", chapter := "4-9", edition := 6, statement := wall_521469_CCEN }

abbrev wall_521656_BCTJ : Prop := ChainTheory.CompositeMatter.Ch15.wall_521656_BINF

def wall_521656_BCTJ_open : OpenDeclaration :=
  { address := 521656, stem := "BCTJ", kind := .wall, status := .superseded, decidingClass := "BINF", letter := "-", chapter := "8-6", edition := 6, statement := wall_521656_BCTJ }

abbrev wall_521682_SEPQ : Prop := ChainTheory.Fields.Ch07.wall_521682_FIXE

def wall_521682_SEPQ_open : OpenDeclaration :=
  { address := 521682, stem := "SEPQ", kind := .wall, status := .reposed, decidingClass := "FIXE", letter := "-", chapter := "4-6", edition := 6, statement := wall_521682_SEPQ }

abbrev wall_521707_SDWP : Prop := ChainTheory.Foundations.Ch02.wall_521707_IFFD

def wall_521707_SDWP_open : OpenDeclaration :=
  { address := 521707, stem := "SDWP", kind := .wall, status := .superseded, decidingClass := "IFFD", letter := "-", chapter := "2-5", edition := 6, statement := wall_521707_SDWP }

opaque cond_521732_RNDL : Prop

def cond_521732_RNDL_open : OpenDeclaration :=
  { address := 521732, stem := "RNDL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-1", edition := 7, statement := cond_521732_RNDL }

opaque cond_521758_TWDS : Prop

def cond_521758_TWDS_open : OpenDeclaration :=
  { address := 521758, stem := "TWDS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "9-5", edition := 7, statement := cond_521758_TWDS }

abbrev wall_521784_WWRB : Prop := ChainTheory.Fields.Ch07.wall_521784_EQFL

def wall_521784_WWRB_open : OpenDeclaration :=
  { address := 521784, stem := "WWRB", kind := .wall, status := .open, decidingClass := "EQFL", letter := "-", chapter := "12-6", edition := 6, statement := wall_521784_WWRB }

abbrev wall_521809_FRPK : Prop := ChainTheory.Fields.Ch07.wall_521809_EQFR

def wall_521809_FRPK_open : OpenDeclaration :=
  { address := 521809, stem := "FRPK", kind := .wall, status := .superseded, decidingClass := "EQFR", letter := "-", chapter := "5-1", edition := 6, statement := wall_521809_FRPK }

abbrev wall_521835_HDSR : Prop := ChainTheory.StandardModel.Ch12.wall_521835_EQHC

def wall_521835_HDSR_open : OpenDeclaration :=
  { address := 521835, stem := "HDSR", kind := .wall, status := .superseded, decidingClass := "EQHC", letter := "-", chapter := "7-1", edition := 6, statement := wall_521835_HDSR }

opaque cond_521860_CAAC : Prop

def cond_521860_CAAC_open : OpenDeclaration :=
  { address := 521860, stem := "CAAC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-8", edition := 7, statement := cond_521860_CAAC }

opaque cond_521886_SOZT : Prop

def cond_521886_SOZT_open : OpenDeclaration :=
  { address := 521886, stem := "SOZT", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-6", edition := 7, statement := cond_521886_SOZT }

abbrev wall_521937_MUOT : Prop := ChainTheory.StandardModel.Ch12.wall_521937_UNJD

def wall_521937_MUOT_open : OpenDeclaration :=
  { address := 521937, stem := "MUOT", kind := .wall, status := .superseded, decidingClass := "UNJD", letter := "-", chapter := "7-1", edition := 6, statement := wall_521937_MUOT }

opaque cond_521989_DCRS : Prop

def cond_521989_DCRS_open : OpenDeclaration :=
  { address := 521989, stem := "DCRS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "3-5", edition := 7, statement := cond_521989_DCRS }

opaque cond_522015_RAOB : Prop

def cond_522015_RAOB_open : OpenDeclaration :=
  { address := 522015, stem := "RAOB", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-7", edition := 7, statement := cond_522015_RAOB }

abbrev wall_522064_RSCF : Prop := ChainTheory.StandardModel.Ch11.wall_522064_EQRS

def wall_522064_RSCF_open : OpenDeclaration :=
  { address := 522064, stem := "RSCF", kind := .wall, status := .superseded, decidingClass := "EQRS", letter := "-", chapter := "4-3", edition := 6, statement := wall_522064_RSCF }

abbrev wall_522090_FCMJ : Prop := ChainTheory.StandardModel.Ch11.wall_522090_EQFC

def wall_522090_FCMJ_open : OpenDeclaration :=
  { address := 522090, stem := "FCMJ", kind := .wall, status := .reposed, decidingClass := "EQFC", letter := "-", chapter := "2-1", edition := 6, statement := wall_522090_FCMJ }

abbrev wall_522115_HSDM : Prop := ChainTheory.StandardModel.Ch12.wall_522115_EQHD

def wall_522115_HSDM_open : OpenDeclaration :=
  { address := 522115, stem := "HSDM", kind := .wall, status := .superseded, decidingClass := "EQHD", letter := "-", chapter := "7-1", edition := 6, statement := wall_522115_HSDM }

abbrev wall_522140_SPKB : Prop := ChainTheory.Fields.Ch07.wall_522140_EQKB

def wall_522140_SPKB_open : OpenDeclaration :=
  { address := 522140, stem := "SPKB", kind := .wall, status := .reposed, decidingClass := "EQKB", letter := "-", chapter := "4-6", edition := 6, statement := wall_522140_SPKB }

abbrev wall_522165_BOTV : Prop := ChainTheory.Foundations.Ch03.wall_522165_BOOS

def wall_522165_BOTV_open : OpenDeclaration :=
  { address := 522165, stem := "BOTV", kind := .wall, status := .superseded, decidingClass := "BOOS", letter := "-", chapter := "3-4", edition := 6, statement := wall_522165_BOTV }

opaque cond_522217_SMZT : Prop

def cond_522217_SMZT_open : OpenDeclaration :=
  { address := 522217, stem := "SMZT", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-7", edition := 7, statement := cond_522217_SMZT }

abbrev wall_522294_DACS : Prop := ChainTheory.Foundations.Ch05.wall_522294_EQDA

def wall_522294_DACS_open : OpenDeclaration :=
  { address := 522294, stem := "DACS", kind := .wall, status := .superseded, decidingClass := "EQDA", letter := "-", chapter := "9-7", edition := 6, statement := wall_522294_DACS }

abbrev wall_522320_BCTV : Prop := ChainTheory.CompositeMatter.Ch15.wall_522320_CRSA

def wall_522320_BCTV_open : OpenDeclaration :=
  { address := 522320, stem := "BCTV", kind := .wall, status := .superseded, decidingClass := "CRSA", letter := "-", chapter := "8-6", edition := 6, statement := wall_522320_BCTV }

abbrev wall_522346_RSRN : Prop := ChainTheory.StandardModel.Ch11.wall_522346_EQRO

def wall_522346_RSRN_open : OpenDeclaration :=
  { address := 522346, stem := "RSRN", kind := .wall, status := .superseded, decidingClass := "EQRO", letter := "-", chapter := "4-3", edition := 6, statement := wall_522346_RSRN }

abbrev wall_522397_SEWD : Prop := ChainTheory.Fields.Ch07.wall_522397_WASN

def wall_522397_SEWD_open : OpenDeclaration :=
  { address := 522397, stem := "SEWD", kind := .wall, status := .reposed, decidingClass := "WASN", letter := "-", chapter := "4-6", edition := 6, statement := wall_522397_SEWD }

abbrev wall_522448_MUCS : Prop := ChainTheory.StandardModel.Ch12.wall_522448_EQMU

def wall_522448_MUCS_open : OpenDeclaration :=
  { address := 522448, stem := "MUCS", kind := .wall, status := .superseded, decidingClass := "EQMU", letter := "-", chapter := "7-1", edition := 6, statement := wall_522448_MUCS }

opaque cond_522474_GQDS : Prop

def cond_522474_GQDS_open : OpenDeclaration :=
  { address := 522474, stem := "GQDS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-5", edition := 7, statement := cond_522474_GQDS }

abbrev wall_522500_IPMF : Prop := ChainTheory.Foundations.Ch01.wall_522500_EQPH

def wall_522500_IPMF_open : OpenDeclaration :=
  { address := 522500, stem := "IPMF", kind := .wall, status := .superseded, decidingClass := "EQPH", letter := "-", chapter := "5-1", edition := 6, statement := wall_522500_IPMF }

abbrev wall_522556_FNRC : Prop := ChainTheory.StandardModel.Ch13.wall_522556_SELS

def wall_522556_FNRC_open : OpenDeclaration :=
  { address := 522556, stem := "FNRC", kind := .wall, status := .superseded, decidingClass := "SELS", letter := "-", chapter := "6-7", edition := 6, statement := wall_522556_FNRC }

opaque cond_522607_FRCF : Prop

def cond_522607_FRCF_open : OpenDeclaration :=
  { address := 522607, stem := "FRCF", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "6-7", edition := 7, statement := cond_522607_FRCF }

abbrev wall_522682_BEJB : Prop := ChainTheory.CompositeMatter.Ch15.wall_522682_EQBF

def wall_522682_BEJB_open : OpenDeclaration :=
  { address := 522682, stem := "BEJB", kind := .wall, status := .superseded, decidingClass := "EQBF", letter := "-", chapter := "8-6", edition := 6, statement := wall_522682_BEJB }

opaque cond_522708_FFRO : Prop

def cond_522708_FFRO_open : OpenDeclaration :=
  { address := 522708, stem := "FFRO", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-6", edition := 7, statement := cond_522708_FFRO }

abbrev wall_522787_SRDD : Prop := ChainTheory.Foundations.Ch05.wall_522787_EQDC

def wall_522787_SRDD_open : OpenDeclaration :=
  { address := 522787, stem := "SRDD", kind := .wall, status := .superseded, decidingClass := "EQDC", letter := "-", chapter := "6-1", edition := 6, statement := wall_522787_SRDD }

abbrev wall_522970_SKDC : Prop := ChainTheory.Foundations.Ch05.wall_522970_EQSK

def wall_522970_SKDC_open : OpenDeclaration :=
  { address := 522970, stem := "SKDC", kind := .wall, status := .open, decidingClass := "EQSK", letter := "-", chapter := "6-1", edition := 6, statement := wall_522970_SKDC }

abbrev wall_522996_RJIW : Prop := ChainTheory.StandardModel.Ch11.wall_522996_EQRJ

def wall_522996_RJIW_open : OpenDeclaration :=
  { address := 522996, stem := "RJIW", kind := .wall, status := .superseded, decidingClass := "EQRJ", letter := "-", chapter := "4-3", edition := 6, statement := wall_522996_RJIW }

abbrev wall_523126_CRGO : Prop := ChainTheory.Fields.Ch08.wall_523126_EQCR

def wall_523126_CRGO_open : OpenDeclaration :=
  { address := 523126, stem := "CRGO", kind := .wall, status := .reposed, decidingClass := "EQCR", letter := "-", chapter := "4-3", edition := 6, statement := wall_523126_CRGO }

abbrev wall_523152_QFSU : Prop := ChainTheory.StandardModel.Ch13.wall_523152_EQFS

def wall_523152_QFSU_open : OpenDeclaration :=
  { address := 523152, stem := "QFSU", kind := .wall, status := .superseded, decidingClass := "EQFS", letter := "-", chapter := "6-7", edition := 6, statement := wall_523152_QFSU }

abbrev wall_523177_DGCG : Prop := ChainTheory.CompositeMatter.Ch16.wall_523177_EQDG

def wall_523177_DGCG_open : OpenDeclaration :=
  { address := 523177, stem := "DGCG", kind := .wall, status := .superseded, decidingClass := "EQDG", letter := "-", chapter := "8-1", edition := 6, statement := wall_523177_DGCG }

opaque cond_523203_AMSP : Prop

def cond_523203_AMSP_open : OpenDeclaration :=
  { address := 523203, stem := "AMSP", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-2", edition := 7, statement := cond_523203_AMSP }

abbrev wall_523229_LSSE : Prop := ChainTheory.Fields.Ch07.wall_523229_EQSE

def wall_523229_LSSE_open : OpenDeclaration :=
  { address := 523229, stem := "LSSE", kind := .wall, status := .reposed, decidingClass := "EQSE", letter := "-", chapter := "4-6", edition := 6, statement := wall_523229_LSSE }

opaque cond_523306_SOZM : Prop

def cond_523306_SOZM_open : OpenDeclaration :=
  { address := 523306, stem := "SOZM", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-6", edition := 7, statement := cond_523306_SOZM }

abbrev wall_523332_FECF : Prop := ChainTheory.Gravity.Ch18.wall_523332_EQFE

def wall_523332_FECF_open : OpenDeclaration :=
  { address := 523332, stem := "FECF", kind := .wall, status := .open, decidingClass := "EQFE", letter := "-", chapter := "9-2", edition := 6, statement := wall_523332_FECF }

abbrev wall_523516_MCFO : Prop := ChainTheory.StandardModel.Ch13.wall_523516_EQMO

def wall_523516_MCFO_open : OpenDeclaration :=
  { address := 523516, stem := "MCFO", kind := .wall, status := .reposed, decidingClass := "EQMO", letter := "-", chapter := "7-9", edition := 6, statement := wall_523516_MCFO }

abbrev wall_523542_NCFK : Prop := ChainTheory.StandardModel.Ch13.wall_523542_EQNC

def wall_523542_NCFK_open : OpenDeclaration :=
  { address := 523542, stem := "NCFK", kind := .wall, status := .none, decidingClass := "EQNC", letter := "-", chapter := "7-9", edition := 6, statement := wall_523542_NCFK }

opaque cond_523567_CRUS : Prop

def cond_523567_CRUS_open : OpenDeclaration :=
  { address := 523567, stem := "CRUS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "8-2", edition := 7, statement := cond_523567_CRUS }

opaque cond_523593_CCDD : Prop

def cond_523593_CCDD_open : OpenDeclaration :=
  { address := 523593, stem := "CCDD", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-4", edition := 7, statement := cond_523593_CCDD }

abbrev wall_523642_PWRS : Prop := ChainTheory.CompositeMatter.Ch17.wall_523642_EQPW

def wall_523642_PWRS_open : OpenDeclaration :=
  { address := 523642, stem := "PWRS", kind := .wall, status := .open, decidingClass := "EQPW", letter := "-", chapter := "1-5", edition := 6, statement := wall_523642_PWRS }

abbrev wall_523694_RCOB : Prop := ChainTheory.StandardModel.Ch10.wall_523694_EQRC

def wall_523694_RCOB_open : OpenDeclaration :=
  { address := 523694, stem := "RCOB", kind := .wall, status := .open, decidingClass := "EQRC", letter := "-", chapter := "1-1", edition := 6, statement := wall_523694_RCOB }

opaque cond_523746_CCAS : Prop

def cond_523746_CCAS_open : OpenDeclaration :=
  { address := 523746, stem := "CCAS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 7, statement := cond_523746_CCAS }

opaque cond_523802_ORCG : Prop

def cond_523802_ORCG_open : OpenDeclaration :=
  { address := 523802, stem := "ORCG", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-6", edition := 7, statement := cond_523802_ORCG }

opaque cond_523854_CFTS : Prop

def cond_523854_CFTS_open : OpenDeclaration :=
  { address := 523854, stem := "CFTS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 7, statement := cond_523854_CFTS }

abbrev wall_523880_CESS : Prop := ChainTheory.Fields.Ch07.wall_523880_EQCU

def wall_523880_CESS_open : OpenDeclaration :=
  { address := 523880, stem := "CESS", kind := .wall, status := .superseded, decidingClass := "EQCU", letter := "-", chapter := "5-1", edition := 6, statement := wall_523880_CESS }

opaque cond_523963_CSKC : Prop

def cond_523963_CSKC_open : OpenDeclaration :=
  { address := 523963, stem := "CSKC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 7, statement := cond_523963_CSKC }

opaque cond_523989_LNAL : Prop

def cond_523989_LNAL_open : OpenDeclaration :=
  { address := 523989, stem := "LNAL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 7, statement := cond_523989_LNAL }

opaque cond_524038_ORKC : Prop

def cond_524038_ORKC_open : OpenDeclaration :=
  { address := 524038, stem := "ORKC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-1", edition := 7, statement := cond_524038_ORKC }

opaque cond_524064_WSWC : Prop

def cond_524064_WSWC_open : OpenDeclaration :=
  { address := 524064, stem := "WSWC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-10", edition := 7, statement := cond_524064_WSWC }

abbrev wall_524193_KCUM : Prop := ChainTheory.StandardModel.Ch11.wall_524193_EQKC

def wall_524193_KCUM_open : OpenDeclaration :=
  { address := 524193, stem := "KCUM", kind := .wall, status := .superseded, decidingClass := "EQKC", letter := "-", chapter := "1-5", edition := 6, statement := wall_524193_KCUM }

opaque cond_524322_LDRQ : Prop

def cond_524322_LDRQ_open : OpenDeclaration :=
  { address := 524322, stem := "LDRQ", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 7, statement := cond_524322_LDRQ }

abbrev wall_524457_BSRC : Prop := ChainTheory.Fields.Ch09.wall_524457_EQBS

def wall_524457_BSRC_open : OpenDeclaration :=
  { address := 524457, stem := "BSRC", kind := .wall, status := .reposed, decidingClass := "EQBS", letter := "-", chapter := "5-7", edition := 6, statement := wall_524457_BSRC }

abbrev wall_524483_UQED : Prop := ChainTheory.Foundations.Ch05.wall_524483_UQED

def wall_524483_UQED_open : OpenDeclaration :=
  { address := 524483, stem := "UQED", kind := .wall, status := .reposed, decidingClass := "-", letter := "-", chapter := "4-5", edition := 6, statement := wall_524483_UQED }

abbrev wall_524509_ROEC : Prop := ChainTheory.StandardModel.Ch11.wall_524509_EQRP

def wall_524509_ROEC_open : OpenDeclaration :=
  { address := 524509, stem := "ROEC", kind := .wall, status := .reposed, decidingClass := "EQRP", letter := "parting", chapter := "4-3", edition := 6, statement := wall_524509_ROEC }

abbrev wall_524587_ORCB : Prop := ChainTheory.StandardModel.Ch12.wall_524587_EQOS

def wall_524587_ORCB_open : OpenDeclaration :=
  { address := 524587, stem := "ORCB", kind := .wall, status := .superseded, decidingClass := "EQOS", letter := "posed", chapter := "7-1", edition := 6, statement := wall_524587_ORCB }

abbrev cond_524640_RDSG : Prop := ChainTheory.StandardModel.Ch11.cond_524640_RDSG

def cond_524640_RDSG_open : OpenDeclaration :=
  { address := 524640, stem := "RDSG", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-2", edition := 6, statement := cond_524640_RDSG }

abbrev wall_524666_LCOG : Prop := ChainTheory.StandardModel.Ch11.wall_524666_EQLG

def wall_524666_LCOG_open : OpenDeclaration :=
  { address := 524666, stem := "LCOG", kind := .wall, status := .superseded, decidingClass := "EQLG", letter := "parting", chapter := "4-3", edition := 6, statement := wall_524666_LCOG }

abbrev cond_524692_SLPP : Prop := ChainTheory.Discussion.Appendices.cond_524692_SLPP

def cond_524692_SLPP_open : OpenDeclaration :=
  { address := 524692, stem := "SLPP", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "13-4", edition := 6, statement := cond_524692_SLPP }

abbrev wall_524774_NWRJ : Prop := ChainTheory.Discussion.Landed93.wall_524774_EQNW

def wall_524774_NWRJ_open : OpenDeclaration :=
  { address := 524774, stem := "NWRJ", kind := .wall, status := .superseded, decidingClass := "EQNW", letter := "web-excluded", chapter := "8-6", edition := 6, statement := wall_524774_NWRJ }

abbrev wall_524800_ROED : Prop := ChainTheory.Discussion.Landed93.wall_524800_EQRP

def wall_524800_ROED_open : OpenDeclaration :=
  { address := 524800, stem := "ROED", kind := .wall, status := .reposed, decidingClass := "EQRP", letter := "parting", chapter := "4-3", edition := 6, statement := wall_524800_ROED }

opaque cond_524905_HMOA : Prop

def cond_524905_HMOA_open : OpenDeclaration :=
  { address := 524905, stem := "HMOA", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-7", edition := 7, statement := cond_524905_HMOA }

abbrev wall_524989_DAMR : Prop := ChainTheory.Discussion.Landed93.wall_524989_EQDB

def wall_524989_DAMR_open : OpenDeclaration :=
  { address := 524989, stem := "DAMR", kind := .wall, status := .reposed, decidingClass := "EQDB", letter := "deuteron-readings-parting", chapter := "8-6", edition := 6, statement := wall_524989_DAMR }

abbrev wall_525015_SOES : Prop := ChainTheory.Discussion.Landed93.wall_525015_EQSQ

def wall_525015_SOES_open : OpenDeclaration :=
  { address := 525015, stem := "SOES", kind := .wall, status := .superseded, decidingClass := "EQSQ", letter := "star-parting", chapter := "6-3", edition := 6, statement := wall_525015_SOES }

abbrev wall_525041_LCOH : Prop := ChainTheory.Discussion.Landed93.wall_525041_EQLG

def wall_525041_LCOH_open : OpenDeclaration :=
  { address := 525041, stem := "LCOH", kind := .wall, status := .superseded, decidingClass := "EQLG", letter := "parting", chapter := "4-3", edition := 6, statement := wall_525041_LCOH }

abbrev wall_525097_RBWO : Prop := ChainTheory.Discussion.Landed93.wall_525097_EQRB

def wall_525097_RBWO_open : OpenDeclaration :=
  { address := 525097, stem := "RBWO", kind := .wall, status := .superseded, decidingClass := "EQRB", letter := "-", chapter := "4-3", edition := 6, statement := wall_525097_RBWO }

opaque cond_525153_HXDS : Prop

def cond_525153_HXDS_open : OpenDeclaration :=
  { address := 525153, stem := "HXDS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-7", edition := 7, statement := cond_525153_HXDS }

abbrev wall_525179_SRCE : Prop := ChainTheory.Discussion.Landed93.wall_525179_EQCR

def wall_525179_SRCE_open : OpenDeclaration :=
  { address := 525179, stem := "SRCE", kind := .wall, status := .superseded, decidingClass := "EQCR", letter := "parting", chapter := "4-3", edition := 6, statement := wall_525179_SRCE }

abbrev wall_525283_DGRV : Prop := ChainTheory.Discussion.Landed93.wall_525283_EQDH

def wall_525283_DGRV_open : OpenDeclaration :=
  { address := 525283, stem := "DGRV", kind := .wall, status := .reposed, decidingClass := "EQDH", letter := "-", chapter := "9-4", edition := 6, statement := wall_525283_DGRV }

abbrev wall_525388_FRIC : Prop := ChainTheory.Discussion.Landed93.wall_525388_EQFT

def wall_525388_FRIC_open : OpenDeclaration :=
  { address := 525388, stem := "FRIC", kind := .wall, status := .superseded, decidingClass := "EQFT", letter := "-", chapter := "9-3", edition := 6, statement := wall_525388_FRIC }

abbrev wall_525568_BOCS : Prop := ChainTheory.Discussion.Landed93.wall_525568_EQBC

def wall_525568_BOCS_open : OpenDeclaration :=
  { address := 525568, stem := "BOCS", kind := .wall, status := .reposed, decidingClass := "EQBC", letter := "parting", chapter := "4-3", edition := 6, statement := wall_525568_BOCS }

abbrev wall_525594_SFRO : Prop := ChainTheory.Discussion.Landed93.wall_525594_EQOT

def wall_525594_SFRO_open : OpenDeclaration :=
  { address := 525594, stem := "SFRO", kind := .wall, status := .open, decidingClass := "EQOT", letter := "parted", chapter := "3-2", edition := 6, statement := wall_525594_SFRO }

abbrev wall_525702_SROI : Prop := ChainTheory.Discussion.Landed93.wall_525702_EQIS

def wall_525702_SROI_open : OpenDeclaration :=
  { address := 525702, stem := "SROI", kind := .wall, status := .reposed, decidingClass := "EQIS", letter := "parting", chapter := "4-4", edition := 6, statement := wall_525702_SROI }

abbrev wall_525728_FCOS : Prop := ChainTheory.Discussion.Landed93.wall_525728_EQFP

def wall_525728_FCOS_open : OpenDeclaration :=
  { address := 525728, stem := "FCOS", kind := .wall, status := .open, decidingClass := "EQFP", letter := "parting", chapter := "2-1", edition := 6, statement := wall_525728_FCOS }

opaque cond_525754_SCAC : Prop

def cond_525754_SCAC_open : OpenDeclaration :=
  { address := 525754, stem := "SCAC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-7", edition := 7, statement := cond_525754_SCAC }

abbrev wall_525807_PMGH : Prop := ChainTheory.Discussion.Landed93.wall_525807_EQMG

def wall_525807_PMGH_open : OpenDeclaration :=
  { address := 525807, stem := "PMGH", kind := .wall, status := .superseded, decidingClass := "EQMG", letter := "-", chapter := "8-1", edition := 6, statement := wall_525807_PMGH }

abbrev wall_525833_TSTC : Prop := ChainTheory.Thermodynamics.Landed93.wall_525833_EQTS

def wall_525833_TSTC_open : OpenDeclaration :=
  { address := 525833, stem := "TSTC", kind := .wall, status := .superseded, decidingClass := "EQTS", letter := "-", chapter := "10-2", edition := 6, statement := wall_525833_TSTC }

abbrev wall_525858_QCUF : Prop := ChainTheory.Discussion.Landed93.wall_525858_EQQC

def wall_525858_QCUF_open : OpenDeclaration :=
  { address := 525858, stem := "QCUF", kind := .wall, status := .reposed, decidingClass := "EQQC", letter := "parting", chapter := "6-7", edition := 6, statement := wall_525858_QCUF }

abbrev wall_525884_CDFO : Prop := ChainTheory.Discussion.Landed93.wall_525884_EQCH

def wall_525884_CDFO_open : OpenDeclaration :=
  { address := 525884, stem := "CDFO", kind := .wall, status := .superseded, decidingClass := "EQCH", letter := "-", chapter := "5-8", edition := 6, statement := wall_525884_CDFO }

abbrev wall_525937_DSDM : Prop := ChainTheory.Discussion.Landed93.wall_525937_EQDN

def wall_525937_DSDM_open : OpenDeclaration :=
  { address := 525937, stem := "DSDM", kind := .wall, status := .reposed, decidingClass := "EQDN", letter := "parting", chapter := "6-6", edition := 6, statement := wall_525937_DSDM }

abbrev wall_526071_KDSO : Prop := ChainTheory.Discussion.Landed93.wall_526071_EQKN

def wall_526071_KDSO_open : OpenDeclaration :=
  { address := 526071, stem := "KDSO", kind := .wall, status := .open, decidingClass := "EQKN", letter := "parted", chapter := "7-6", edition := 6, statement := wall_526071_KDSO }

abbrev wall_526096_PRFB : Prop := ChainTheory.Discussion.Landed93.wall_526096_EQPR

def wall_526096_PRFB_open : OpenDeclaration :=
  { address := 526096, stem := "PRFB", kind := .wall, status := .superseded, decidingClass := "EQPR", letter := "parting", chapter := "11-6", edition := 6, statement := wall_526096_PRFB }

abbrev wall_526122_MJWA : Prop := ChainTheory.Discussion.Landed93.wall_526122_EQAJ

def wall_526122_MJWA_open : OpenDeclaration :=
  { address := 526122, stem := "MJWA", kind := .wall, status := .superseded, decidingClass := "EQAJ", letter := "parting", chapter := "5-2", edition := 6, statement := wall_526122_MJWA }

abbrev wall_526234_VKSD : Prop := ChainTheory.Discussion.Landed93.wall_526234_VKSD

def wall_526234_VKSD_open : OpenDeclaration :=
  { address := 526234, stem := "VKSD", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "1-2", edition := 6, statement := wall_526234_VKSD }

abbrev wall_526287_ACAL : Prop := ChainTheory.Discussion.Landed93.wall_526287_ACAL

def wall_526287_ACAL_open : OpenDeclaration :=
  { address := 526287, stem := "ACAL", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "1-1", edition := 6, statement := wall_526287_ACAL }

abbrev wall_526336_WRGE : Prop := ChainTheory.Discussion.Landed93.wall_526336_EQWE

def wall_526336_WRGE_open : OpenDeclaration :=
  { address := 526336, stem := "WRGE", kind := .wall, status := .reposed, decidingClass := "EQWE", letter := "-", chapter := "7-5", edition := 6, statement := wall_526336_WRGE }

abbrev wall_526362_DDUK : Prop := ChainTheory.Discussion.Landed93.wall_526362_EQKD

def wall_526362_DDUK_open : OpenDeclaration :=
  { address := 526362, stem := "DDUK", kind := .wall, status := .open, decidingClass := "EQKD", letter := "departs", chapter := "7-6", edition := 6, statement := wall_526362_DDUK }

abbrev wall_526387_FVAC : Prop := ChainTheory.Discussion.Landed93.wall_526387_FVAC

def wall_526387_FVAC_open : OpenDeclaration :=
  { address := 526387, stem := "FVAC", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "1-2", edition := 6, statement := wall_526387_FVAC }

abbrev wall_526414_ORAC : Prop := ChainTheory.Discussion.Landed93.wall_526414_ORAC

def wall_526414_ORAC_open : OpenDeclaration :=
  { address := 526414, stem := "ORAC", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "1-4", edition := 6, statement := wall_526414_ORAC }

abbrev wall_526437_CFPK : Prop := ChainTheory.Discussion.Landed93.wall_526437_CFPK

def wall_526437_CFPK_open : OpenDeclaration :=
  { address := 526437, stem := "CFPK", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "1-5", edition := 6, statement := wall_526437_CFPK }

abbrev wall_526460_RACC : Prop := ChainTheory.Discussion.Landed93.wall_526460_RACC

def wall_526460_RACC_open : OpenDeclaration :=
  { address := 526460, stem := "RACC", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "1-1", edition := 6, statement := wall_526460_RACC }

abbrev wall_526589_NUON : Prop := ChainTheory.StandardModel.Ch13.wall_526589_NUON

def wall_526589_NUON_open : OpenDeclaration :=
  { address := 526589, stem := "NUON", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "7-8", edition := 6, statement := wall_526589_NUON }

abbrev wall_526667_HPAQ : Prop := ChainTheory.StandardModel.Ch11.wall_526667_HPAQ

def wall_526667_HPAQ_open : OpenDeclaration :=
  { address := 526667, stem := "HPAQ", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "7-2", edition := 6, statement := wall_526667_HPAQ }

abbrev wall_526692_TSJB : Prop := ChainTheory.Thermodynamics.Landed93.wall_526692_EQTB

def wall_526692_TSJB_open : OpenDeclaration :=
  { address := 526692, stem := "TSJB", kind := .wall, status := .superseded, decidingClass := "EQTB", letter := "-", chapter := "10-2", edition := 6, statement := wall_526692_TSJB }

abbrev wall_526717_EALW : Prop := ChainTheory.StandardModel.Ch11.wall_526717_LETU

def wall_526717_EALW_open : OpenDeclaration :=
  { address := 526717, stem := "EALW", kind := .wall, status := .superseded, decidingClass := "LETU", letter := "-", chapter := "1-5", edition := 6, statement := wall_526717_EALW }

abbrev wall_526741_TWJS : Prop := ChainTheory.StandardModel.Ch11.wall_526741_TWJS

def wall_526741_TWJS_open : OpenDeclaration :=
  { address := 526741, stem := "TWJS", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "1-5", edition := 6, statement := wall_526741_TWJS }

abbrev wall_526765_PTHD : Prop := ChainTheory.Gravity.Ch18.wall_526765_PTHD

def wall_526765_PTHD_open : OpenDeclaration :=
  { address := 526765, stem := "PTHD", kind := .wall, status := .reposed, decidingClass := "-", letter := "-", chapter := "9-4", edition := 6, statement := wall_526765_PTHD }

abbrev cond_526788_SLL3 : Prop := ChainTheory.Discussion.Appendices.cond_526788_SLL3

def cond_526788_SLL3_open : OpenDeclaration :=
  { address := 526788, stem := "SLL3", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "13-4", edition := 6, statement := cond_526788_SLL3 }

abbrev cond_526818_LDRR : Prop := ChainTheory.Discussion.Appendices.cond_526818_LDRR

def cond_526818_LDRR_open : OpenDeclaration :=
  { address := 526818, stem := "LDRR", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 6, statement := cond_526818_LDRR }

abbrev wall_526844_RPRG : Prop := ChainTheory.Fields.Ch09.wall_526844_EQRX

def wall_526844_RPRG_open : OpenDeclaration :=
  { address := 526844, stem := "RPRG", kind := .wall, status := .open, decidingClass := "EQRX", letter := "-", chapter := "5-7", edition := 6, statement := wall_526844_RPRG }

abbrev wall_526896_HLPN : Prop := ChainTheory.StandardModel.Ch13.wall_526896_HLPN

def wall_526896_HLPN_open : OpenDeclaration :=
  { address := 526896, stem := "HLPN", kind := .wall, status := .none, decidingClass := "-", letter := "-", chapter := "7-8", edition := 6, statement := wall_526896_HLPN }

abbrev wall_526922_RIMP : Prop := ChainTheory.StandardModel.Ch11.wall_526922_RIMP

def wall_526922_RIMP_open : OpenDeclaration :=
  { address := 526922, stem := "RIMP", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "1-5", edition := 6, statement := wall_526922_RIMP }

abbrev wall_526948_LNUM : Prop := ChainTheory.Foundations.Ch05.wall_526948_LNUM

def wall_526948_LNUM_open : OpenDeclaration :=
  { address := 526948, stem := "LNUM", kind := .wall, status := .reposed, decidingClass := "-", letter := "-", chapter := "4-8", edition := 6, statement := wall_526948_LNUM }

abbrev cond_527022_OOTR : Prop := ChainTheory.StandardModel.Ch11.cond_527022_OOTR

def cond_527022_OOTR_open : OpenDeclaration :=
  { address := 527022, stem := "OOTR", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-2", edition := 6, statement := cond_527022_OOTR }

abbrev wall_527078_LJRK : Prop := ChainTheory.StandardModel.Ch12.wall_527078_EQLJ

def wall_527078_LJRK_open : OpenDeclaration :=
  { address := 527078, stem := "LJRK", kind := .wall, status := .superseded, decidingClass := "EQLJ", letter := "undefined", chapter := "7-2", edition := 6, statement := wall_527078_LJRK }

abbrev wall_527131_PQCS : Prop := ChainTheory.Foundations.Ch05.wall_527131_PQCS

def wall_527131_PQCS_open : OpenDeclaration :=
  { address := 527131, stem := "PQCS", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "3-5", edition := 6, statement := wall_527131_PQCS }

abbrev cond_527320_DRPN : Prop := ChainTheory.Discussion.Appendices.cond_527320_DRPN

def cond_527320_DRPN_open : OpenDeclaration :=
  { address := 527320, stem := "DRPN", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 6, statement := cond_527320_DRPN }

abbrev wall_527346_SRBC : Prop := ChainTheory.CompositeMatter.Ch14.wall_527346_EQSS

def wall_527346_SRBC_open : OpenDeclaration :=
  { address := 527346, stem := "SRBC", kind := .wall, status := .open, decidingClass := "EQSS", letter := "parting", chapter := "6-5", edition := 6, statement := wall_527346_SRBC }

abbrev wall_527426_QMSX : Prop := ChainTheory.Foundations.Ch02.wall_527426_EQSX

def wall_527426_QMSX_open : OpenDeclaration :=
  { address := 527426, stem := "QMSX", kind := .wall, status := .reposed, decidingClass := "EQSX", letter := "-", chapter := "2-9", edition := 6, statement := wall_527426_QMSX }

abbrev wall_527483_DFNM : Prop := ChainTheory.StandardModel.Ch13.wall_527483_DFNM

def wall_527483_DFNM_open : OpenDeclaration :=
  { address := 527483, stem := "DFNM", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "7-8", edition := 6, statement := wall_527483_DFNM }

abbrev wall_527508_TEPS : Prop := ChainTheory.Foundations.Ch04.wall_527508_EQSH

def wall_527508_TEPS_open : OpenDeclaration :=
  { address := 527508, stem := "TEPS", kind := .wall, status := .open, decidingClass := "EQSH", letter := "-", chapter := "2-6", edition := 6, statement := wall_527508_TEPS }

abbrev wall_527537_OVCM : Prop := ChainTheory.StandardModel.Ch11.wall_527537_EQMV

def wall_527537_OVCM_open : OpenDeclaration :=
  { address := 527537, stem := "OVCM", kind := .wall, status := .superseded, decidingClass := "EQMV", letter := "-", chapter := "1-4", edition := 6, statement := wall_527537_OVCM }

abbrev wall_527563_CSBP : Prop := ChainTheory.Fields.Ch09.wall_527563_EQCB

def wall_527563_CSBP_open : OpenDeclaration :=
  { address := 527563, stem := "CSBP", kind := .wall, status := .open, decidingClass := "EQCB", letter := "-", chapter := "5-7", edition := 6, statement := wall_527563_CSBP }

abbrev wall_527590_MPON : Prop := ChainTheory.StandardModel.Ch13.wall_527590_MPON

def wall_527590_MPON_open : OpenDeclaration :=
  { address := 527590, stem := "MPON", kind := .wall, status := .none, decidingClass := "-", letter := "-", chapter := "7-9", edition := 6, statement := wall_527590_MPON }

abbrev cond_527615_SLL4 : Prop := ChainTheory.Discussion.Appendices.cond_527615_SLL4

def cond_527615_SLL4_open : OpenDeclaration :=
  { address := 527615, stem := "SLL4", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "13-4", edition := 6, statement := cond_527615_SLL4 }

abbrev wall_527804_TSQA : Prop := ChainTheory.Foundations.Ch04.wall_527804_TSQA

def wall_527804_TSQA_open : OpenDeclaration :=
  { address := 527804, stem := "TSQA", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "1-4", edition := 6, statement := wall_527804_TSQA }

abbrev wall_527827_RXCO : Prop := ChainTheory.Fields.Ch09.wall_527827_EQCY

def wall_527827_RXCO_open : OpenDeclaration :=
  { address := 527827, stem := "RXCO", kind := .wall, status := .reposed, decidingClass := "EQCY", letter := "-", chapter := "5-7", edition := 6, statement := wall_527827_RXCO }

abbrev wall_527854_WFSC : Prop := ChainTheory.Foundations.Ch02.wall_527854_EQWF

def wall_527854_WFSC_open : OpenDeclaration :=
  { address := 527854, stem := "WFSC", kind := .wall, status := .open, decidingClass := "EQWF", letter := "-", chapter := "2-8", edition := 6, statement := wall_527854_WFSC }

abbrev wall_527882_PPHF : Prop := ChainTheory.StandardModel.Ch11.wall_527882_EQPP

def wall_527882_PPHF_open : OpenDeclaration :=
  { address := 527882, stem := "PPHF", kind := .wall, status := .superseded, decidingClass := "EQPP", letter := "-", chapter := "5-8", edition := 6, statement := wall_527882_PPHF }

abbrev wall_528018_SGOP : Prop := ChainTheory.Foundations.Ch04.wall_528018_EQSU

def wall_528018_SGOP_open : OpenDeclaration :=
  { address := 528018, stem := "SGOP", kind := .wall, status := .superseded, decidingClass := "EQSU", letter := "-", chapter := "2-6", edition := 6, statement := wall_528018_SGOP }

abbrev wall_528045_PMAF : Prop := ChainTheory.StandardModel.Ch11.wall_528045_CT

def wall_528045_PMAF_open : OpenDeclaration :=
  { address := 528045, stem := "PMAF", kind := .wall, status := .open, decidingClass := "CT", letter := "-", chapter := "1-4", edition := 6, statement := wall_528045_PMAF }

abbrev wall_528125_ADCL : Prop := ChainTheory.Foundations.Ch02.wall_528125_EQAD

def wall_528125_ADCL_open : OpenDeclaration :=
  { address := 528125, stem := "ADCL", kind := .wall, status := .open, decidingClass := "EQAD", letter := "-", chapter := "12-5", edition := 6, statement := wall_528125_ADCL }

abbrev wall_528180_POVC : Prop := ChainTheory.Foundations.Measurement.wall_528180_EQPV

def wall_528180_POVC_open : OpenDeclaration :=
  { address := 528180, stem := "POVC", kind := .wall, status := .reposed, decidingClass := "EQPV", letter := "-", chapter := "2-4", edition := 6, statement := wall_528180_POVC }

abbrev wall_528205_EWOB : Prop := ChainTheory.CompositeMatter.Ch17.wall_528205_EQBE

def wall_528205_EWOB_open : OpenDeclaration :=
  { address := 528205, stem := "EWOB", kind := .wall, status := .reposed, decidingClass := "EQBE", letter := "undecided", chapter := "8-6", edition := 6, statement := wall_528205_EWOB }

abbrev wall_528231_DSSM : Prop := ChainTheory.StandardModel.Ch12.wall_528231_DSSM

def wall_528231_DSSM_open : OpenDeclaration :=
  { address := 528231, stem := "DSSM", kind := .wall, status := .superseded, decidingClass := "-", letter := "-", chapter := "7-3", edition := 6, statement := wall_528231_DSSM }

abbrev wall_528258_GSKC : Prop := ChainTheory.StandardModel.Ch11.wall_528258_EQCK

def wall_528258_GSKC_open : OpenDeclaration :=
  { address := 528258, stem := "GSKC", kind := .wall, status := .superseded, decidingClass := "EQCK", letter := "-", chapter := "1-5", edition := 6, statement := wall_528258_GSKC }

abbrev wall_528316_RWON : Prop := ChainTheory.InformationComputation.Landed93.wall_528316_EQRZ

def wall_528316_RWON_open : OpenDeclaration :=
  { address := 528316, stem := "RWON", kind := .wall, status := .open, decidingClass := "EQRZ", letter := "-", chapter := "1-5", edition := 6, statement := wall_528316_RWON }

abbrev wall_528370_XOSE : Prop := ChainTheory.StandardModel.Ch12.wall_528370_EQEX

def wall_528370_XOSE_open : OpenDeclaration :=
  { address := 528370, stem := "XOSE", kind := .wall, status := .superseded, decidingClass := "EQEX", letter := "-", chapter := "7-3", edition := 6, statement := wall_528370_XOSE }

abbrev cond_528421_TISK : Prop := ChainTheory.StandardModel.Ch11.cond_528421_TISK

def cond_528421_TISK_open : OpenDeclaration :=
  { address := 528421, stem := "TISK", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "13-4", edition := 6, statement := cond_528421_TISK }

abbrev wall_528448_OFAU : Prop := ChainTheory.Foundations.Ch01.wall_528448_EQOG

def wall_528448_OFAU_open : OpenDeclaration :=
  { address := 528448, stem := "OFAU", kind := .wall, status := .open, decidingClass := "EQOG", letter := "-", chapter := "4-7", edition := 6, statement := wall_528448_OFAU }

abbrev cond_528475_DURA : Prop := ChainTheory.Foundations.Ch02.cond_528475_DURA

def cond_528475_DURA_open : OpenDeclaration :=
  { address := 528475, stem := "DURA", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "12-5", edition := 6, statement := cond_528475_DURA }

abbrev wall_528502_ESOS : Prop := ChainTheory.CompositeMatter.Ch17.wall_528502_ESOS

def wall_528502_ESOS_open : OpenDeclaration :=
  { address := 528502, stem := "ESOS", kind := .wall, status := .reposed, decidingClass := "-", letter := "-", chapter := "8-6", edition := 6, statement := wall_528502_ESOS }

abbrev wall_528529_ODFX : Prop := ChainTheory.Fields.Ch06.wall_528529_EQOD

def wall_528529_ODFX_open : OpenDeclaration :=
  { address := 528529, stem := "ODFX", kind := .wall, status := .superseded, decidingClass := "EQOD", letter := "parting", chapter := "7-1", edition := 6, statement := wall_528529_ODFX }

abbrev wall_528583_SRLJ : Prop := ChainTheory.CompositeMatter.Ch14.wall_528583_EQJS

def wall_528583_SRLJ_open : OpenDeclaration :=
  { address := 528583, stem := "SRLJ", kind := .wall, status := .superseded, decidingClass := "EQJS", letter := "first-clause-fails", chapter := "6-3", edition := 6, statement := wall_528583_SRLJ }

abbrev wall_528610_OLPS : Prop := ChainTheory.CompositeMatter.Ch14.wall_528610_EQON

def wall_528610_OLPS_open : OpenDeclaration :=
  { address := 528610, stem := "OLPS", kind := .wall, status := .reposed, decidingClass := "EQON", letter := "parting", chapter := "6-4", edition := 6, statement := wall_528610_OLPS }

abbrev wall_528637_OSRE : Prop := ChainTheory.CompositeMatter.Ch17.wall_528637_EQES

def wall_528637_OSRE_open : OpenDeclaration :=
  { address := 528637, stem := "OSRE", kind := .wall, status := .open, decidingClass := "EQES", letter := "undecided", chapter := "8-6", edition := 6, statement := wall_528637_OSRE }

abbrev wall_528664_EOPR : Prop := ChainTheory.Foundations.Measurement.wall_528664_EQEP

def wall_528664_EOPR_open : OpenDeclaration :=
  { address := 528664, stem := "EOPR", kind := .wall, status := .reposed, decidingClass := "EQEP", letter := "-", chapter := "2-4", edition := 6, statement := wall_528664_EOPR }

abbrev cond_528690_VOFW : Prop := ChainTheory.StandardModel.Ch12.cond_528690_VOFW

def cond_528690_VOFW_open : OpenDeclaration :=
  { address := 528690, stem := "VOFW", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-7", edition := 6, statement := cond_528690_VOFW }

abbrev wall_528718_PRWF : Prop := ChainTheory.InformationComputation.Landed93.wall_528718_EQPX

def wall_528718_PRWF_open : OpenDeclaration :=
  { address := 528718, stem := "PRWF", kind := .wall, status := .reposed, decidingClass := "EQPX", letter := "-", chapter := "1-5", edition := 6, statement := wall_528718_PRWF }

abbrev wall_528745_LLOR : Prop := ChainTheory.StandardModel.Ch12.wall_528745_EQLL

def wall_528745_LLOR_open : OpenDeclaration :=
  { address := 528745, stem := "LLOR", kind := .wall, status := .superseded, decidingClass := "EQLL", letter := "parting", chapter := "7-2", edition := 6, statement := wall_528745_LLOR }

abbrev cond_528772_QEHL : Prop := ChainTheory.StandardModel.Ch11.cond_528772_QEHL

def cond_528772_QEHL_open : OpenDeclaration :=
  { address := 528772, stem := "QEHL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-2", edition := 6, statement := cond_528772_QEHL }

abbrev wall_528799_HPTW : Prop := ChainTheory.CompositeMatter.Ch14.wall_528799_EQHR

def wall_528799_HPTW_open : OpenDeclaration :=
  { address := 528799, stem := "HPTW", kind := .wall, status := .reposed, decidingClass := "EQHR", letter := "first-parting-named", chapter := "7-2", edition := 6, statement := wall_528799_HPTW }

abbrev cond_528827_XSSF : Prop := ChainTheory.StandardModel.Ch12.cond_528827_XSSF

def cond_528827_XSSF_open : OpenDeclaration :=
  { address := 528827, stem := "XSSF", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-3", edition := 6, statement := cond_528827_XSSF }

abbrev cond_528854_FFNW : Prop := ChainTheory.Foundations.Ch02.cond_528854_FFNW

def cond_528854_FFNW_open : OpenDeclaration :=
  { address := 528854, stem := "FFNW", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-8", edition := 6, statement := cond_528854_FFNW }

abbrev cond_528882_LTGO : Prop := ChainTheory.Fields.Ch08.cond_528882_LTGO

def cond_528882_LTGO_open : OpenDeclaration :=
  { address := 528882, stem := "LTGO", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-2", edition := 6, statement := cond_528882_LTGO }

abbrev wall_528934_CGFP : Prop := ChainTheory.StandardModel.Ch11.wall_528934_EQFW

def wall_528934_CGFP_open : OpenDeclaration :=
  { address := 528934, stem := "CGFP", kind := .wall, status := .superseded, decidingClass := "EQFW", letter := "-", chapter := "1-5", edition := 6, statement := wall_528934_CGFP }

abbrev cond_528961_LHAM : Prop := ChainTheory.StandardModel.Ch12.cond_528961_LHAM

def cond_528961_LHAM_open : OpenDeclaration :=
  { address := 528961, stem := "LHAM", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-2", edition := 6, statement := cond_528961_LHAM }

abbrev wall_528988_TPCK : Prop := ChainTheory.InformationComputation.Landed93.wall_528988_EQPY

def wall_528988_TPCK_open : OpenDeclaration :=
  { address := 528988, stem := "TPCK", kind := .wall, status := .open, decidingClass := "EQPY", letter := "-", chapter := "1-5", edition := 6, statement := wall_528988_TPCK }

abbrev cond_529015_YOGC : Prop := ChainTheory.Foundations.Ch04.cond_529015_YOGC

def cond_529015_YOGC_open : OpenDeclaration :=
  { address := 529015, stem := "YOGC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "12-6", edition := 6, statement := cond_529015_YOGC }

abbrev cond_529072_HGHL : Prop := ChainTheory.StandardModel.Ch12.cond_529072_HGHL

def cond_529072_HGHL_open : OpenDeclaration :=
  { address := 529072, stem := "HGHL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-7", edition := 6, statement := cond_529072_HGHL }

abbrev cond_529099_LSRC : Prop := ChainTheory.StandardModel.Ch11.cond_529099_LSRC

def cond_529099_LSRC_open : OpenDeclaration :=
  { address := 529099, stem := "LSRC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-5", edition := 6, statement := cond_529099_LSRC }

abbrev wall_529127_MIDS : Prop := ChainTheory.Fields.Ch07.wall_529127_EQSV

def wall_529127_MIDS_open : OpenDeclaration :=
  { address := 529127, stem := "MIDS", kind := .wall, status := .superseded, decidingClass := "EQSV", letter := "parting", chapter := "1-3", edition := 6, statement := wall_529127_MIDS }

abbrev wall_529186_ROTD : Prop := ChainTheory.Foundations.Ch05.wall_529186_EQRT

def wall_529186_ROTD_open : OpenDeclaration :=
  { address := 529186, stem := "ROTD", kind := .wall, status := .reposed, decidingClass := "EQRT", letter := "-", chapter := "12-6", edition := 6, statement := wall_529186_ROTD }

abbrev cond_529240_WPLN : Prop := ChainTheory.StandardModel.Ch10.cond_529240_WPLN

def cond_529240_WPLN_open : OpenDeclaration :=
  { address := 529240, stem := "WPLN", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 6, statement := cond_529240_WPLN }

abbrev wall_529292_RCHS : Prop := ChainTheory.CompositeMatter.Ch14.wall_529292_EQRD

def wall_529292_RCHS_open : OpenDeclaration :=
  { address := 529292, stem := "RCHS", kind := .wall, status := .superseded, decidingClass := "EQRD", letter := "unreachable-named", chapter := "1-5", edition := 6, statement := wall_529292_RCHS }

abbrev wall_529319_CGB2 : Prop := ChainTheory.StandardModel.Ch11.wall_529319_EQCZ

def wall_529319_CGB2_open : OpenDeclaration :=
  { address := 529319, stem := "CGB2", kind := .wall, status := .superseded, decidingClass := "EQCZ", letter := "-", chapter := "1-5", edition := 6, statement := wall_529319_CGB2 }

abbrev cond_529377_SLL5 : Prop := ChainTheory.Discussion.Appendices.cond_529377_SLL5

def cond_529377_SLL5_open : OpenDeclaration :=
  { address := 529377, stem := "SLL5", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "13-4", edition := 6, statement := cond_529377_SLL5 }

abbrev wall_529407_MUSP : Prop := ChainTheory.StandardModel.Ch12.wall_529407_EQMF

def wall_529407_MUSP_open : OpenDeclaration :=
  { address := 529407, stem := "MUSP", kind := .wall, status := .superseded, decidingClass := "EQMF", letter := "parting", chapter := "1-6", edition := 6, statement := wall_529407_MUSP }

abbrev wall_529434_ACRP : Prop := ChainTheory.Fields.Ch06.wall_529434_EQPT

def wall_529434_ACRP_open : OpenDeclaration :=
  { address := 529434, stem := "ACRP", kind := .wall, status := .open, decidingClass := "EQPT", letter := "-", chapter := "2-7", edition := 6, statement := wall_529434_ACRP }

abbrev wall_529460_PSCN : Prop := ChainTheory.CompositeMatter.Ch14.wall_529460_EQPD

def wall_529460_PSCN_open : OpenDeclaration :=
  { address := 529460, stem := "PSCN", kind := .wall, status := .reposed, decidingClass := "EQPD", letter := "refuted-at-the-bounded-closures", chapter := "6-4", edition := 6, statement := wall_529460_PSCN }

abbrev wall_529488_ZDPH : Prop := ChainTheory.Gravity.Ch18.wall_529488_ZDPH

def wall_529488_ZDPH_open : OpenDeclaration :=
  { address := 529488, stem := "ZDPH", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "9-4", edition := 6, statement := wall_529488_ZDPH }

abbrev cond_529516_PJFC : Prop := ChainTheory.StandardModel.Ch11.cond_529516_PJFC

def cond_529516_PJFC_open : OpenDeclaration :=
  { address := 529516, stem := "PJFC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-8", edition := 6, statement := cond_529516_PJFC }

abbrev wall_529542_ENLG : Prop := ChainTheory.StandardModel.Ch12.wall_529542_EQLO

def wall_529542_ENLG_open : OpenDeclaration :=
  { address := 529542, stem := "ENLG", kind := .wall, status := .open, decidingClass := "EQLO", letter := "first-lepton-parting-named", chapter := "7-5", edition := 6, statement := wall_529542_ENLG }

abbrev wall_529569_WBLM : Prop := ChainTheory.Foundations.Measurement.wall_529569_EQMF

def wall_529569_WBLM_open : OpenDeclaration :=
  { address := 529569, stem := "WBLM", kind := .wall, status := .open, decidingClass := "EQMF", letter := "-", chapter := "7-8", edition := 6, statement := wall_529569_WBLM }

abbrev wall_529596_LOTS : Prop := ChainTheory.Fields.Ch07.wall_529596_EQSY

def wall_529596_LOTS_open : OpenDeclaration :=
  { address := 529596, stem := "LOTS", kind := .wall, status := .reposed, decidingClass := "EQSY", letter := "no-reading-equal", chapter := "4-6", edition := 6, statement := wall_529596_LOTS }

abbrev cond_529618_NSKC : Prop := ChainTheory.StandardModel.Ch13.cond_529618_NSKC

def cond_529618_NSKC_open : OpenDeclaration :=
  { address := 529618, stem := "NSKC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-8", edition := 6, statement := cond_529618_NSKC }

abbrev wall_529645_PINT : Prop := ChainTheory.Fields.Ch06.wall_529645_EQPI

def wall_529645_PINT_open : OpenDeclaration :=
  { address := 529645, stem := "PINT", kind := .wall, status := .open, decidingClass := "EQPI", letter := "first-entry-unkeyed", chapter := "2-7", edition := 6, statement := wall_529645_PINT }

abbrev wall_529671_GSKP : Prop := ChainTheory.CompositeMatter.Ch16.wall_529671_EQPG

def wall_529671_GSKP_open : OpenDeclaration :=
  { address := 529671, stem := "GSKP", kind := .wall, status := .open, decidingClass := "EQPG", letter := "-", chapter := "1-4", edition := 6, statement := wall_529671_GSKP }

abbrev wall_529699_LTPW : Prop := ChainTheory.CompositeMatter.Ch17.wall_529699_EQLV

def wall_529699_LTPW_open : OpenDeclaration :=
  { address := 529699, stem := "LTPW", kind := .wall, status := .superseded, decidingClass := "EQLV", letter := "-", chapter := "11-1", edition := 6, statement := wall_529699_LTPW }

abbrev wall_529726_TOPS : Prop := ChainTheory.Thermodynamics.Landed93.wall_529726_EQTP

def wall_529726_TOPS_open : OpenDeclaration :=
  { address := 529726, stem := "TOPS", kind := .wall, status := .superseded, decidingClass := "EQTP", letter := "-", chapter := "10-4", edition := 6, statement := wall_529726_TOPS }

abbrev wall_529753_RCSK : Prop := ChainTheory.StandardModel.Ch11.wall_529753_EQRK

def wall_529753_RCSK_open : OpenDeclaration :=
  { address := 529753, stem := "RCSK", kind := .wall, status := .reposed, decidingClass := "EQRK", letter := "-", chapter := "4-3", edition := 6, statement := wall_529753_RCSK }

abbrev wall_529777_CPH2 : Prop := ChainTheory.StandardModel.Ch13.wall_529777_EQDR

def wall_529777_CPH2_open : OpenDeclaration :=
  { address := 529777, stem := "CPH2", kind := .wall, status := .superseded, decidingClass := "EQDR", letter := "-", chapter := "12-6", edition := 6, statement := wall_529777_CPH2 }

abbrev wall_529830_HWRT : Prop := ChainTheory.Foundations.Measurement.wall_529830_EQHW

def wall_529830_HWRT_open : OpenDeclaration :=
  { address := 529830, stem := "HWRT", kind := .wall, status := .open, decidingClass := "EQHW", letter := "-", chapter := "12-6", edition := 6, statement := wall_529830_HWRT }

abbrev wall_529856_SSPW : Prop := ChainTheory.CompositeMatter.Ch14.wall_529856_EQSV

def wall_529856_SSPW_open : OpenDeclaration :=
  { address := 529856, stem := "SSPW", kind := .wall, status := .open, decidingClass := "EQSV", letter := "unstopped-or-parting", chapter := "6-4", edition := 6, statement := wall_529856_SSPW }

abbrev wall_529911_IRCC : Prop := ChainTheory.InformationComputation.Landed93.wall_529911_EQIR

def wall_529911_IRCC_open : OpenDeclaration :=
  { address := 529911, stem := "IRCC", kind := .wall, status := .reposed, decidingClass := "EQIR", letter := "-", chapter := "1-4", edition := 6, statement := wall_529911_IRCC }

abbrev wall_529937_MUPH : Prop := ChainTheory.StandardModel.Ch12.wall_529937_EQMP

def wall_529937_MUPH_open : OpenDeclaration :=
  { address := 529937, stem := "MUPH", kind := .wall, status := .superseded, decidingClass := "EQMP", letter := "parting", chapter := "1-6", edition := 6, statement := wall_529937_MUPH }

abbrev wall_529964_ASQW : Prop := ChainTheory.Fields.Ch09.wall_529964_EQWA

def wall_529964_ASQW_open : OpenDeclaration :=
  { address := 529964, stem := "ASQW", kind := .wall, status := .reposed, decidingClass := "EQWA", letter := "refused", chapter := "7-10", edition := 6, statement := wall_529964_ASQW }

abbrev wall_529990_NTPE : Prop := ChainTheory.Thermodynamics.Landed93.wall_529990_EQTR

def wall_529990_NTPE_open : OpenDeclaration :=
  { address := 529990, stem := "NTPE", kind := .wall, status := .superseded, decidingClass := "EQTR", letter := "-", chapter := "10-7", edition := 6, statement := wall_529990_NTPE }

abbrev wall_530040_CKER : Prop := ChainTheory.Foundations.Ch05.wall_530040_EQDK

def wall_530040_CKER_open : OpenDeclaration :=
  { address := 530040, stem := "CKER", kind := .wall, status := .reposed, decidingClass := "EQDK", letter := "-", chapter := "4-8", edition := 6, statement := wall_530040_CKER }

abbrev cond_530067_HRCP : Prop := ChainTheory.StandardModel.Ch13.cond_530067_HRCP

def cond_530067_HRCP_open : OpenDeclaration :=
  { address := 530067, stem := "HRCP", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "12-6", edition := 6, statement := cond_530067_HRCP }

abbrev wall_530092_KSAT : Prop := ChainTheory.StandardModel.Ch11.wall_530092_EQKU

def wall_530092_KSAT_open : OpenDeclaration :=
  { address := 530092, stem := "KSAT", kind := .wall, status := .reposed, decidingClass := "EQKU", letter := "unstopped-or-refused-named", chapter := "1-5", edition := 6, statement := wall_530092_KSAT }

abbrev wall_530120_NURL : Prop := ChainTheory.StandardModel.Ch13.wall_530120_NURL

def wall_530120_NURL_open : OpenDeclaration :=
  { address := 530120, stem := "NURL", kind := .wall, status := .none, decidingClass := "-", letter := "-", chapter := "7-8", edition := 6, statement := wall_530120_NURL }

abbrev wall_530144_HGO2 : Prop := ChainTheory.StandardModel.Ch12.wall_530144_EQHO

def wall_530144_HGO2_open : OpenDeclaration :=
  { address := 530144, stem := "HGO2", kind := .wall, status := .open, decidingClass := "EQHO", letter := "-", chapter := "4-7", edition := 6, statement := wall_530144_HGO2 }

abbrev wall_530171_UO2N : Prop := ChainTheory.StandardModel.Ch13.wall_530171_UO2N

def wall_530171_UO2N_open : OpenDeclaration :=
  { address := 530171, stem := "UO2N", kind := .wall, status := .none, decidingClass := "-", letter := "-", chapter := "7-8", edition := 6, statement := wall_530171_UO2N }

abbrev wall_530222_BMEQ : Prop := ChainTheory.Foundations.Ch02.wall_530222_EQBM

def wall_530222_BMEQ_open : OpenDeclaration :=
  { address := 530222, stem := "BMEQ", kind := .wall, status := .open, decidingClass := "EQBM", letter := "face-b", chapter := "1-3", edition := 6, statement := wall_530222_BMEQ }

abbrev cond_530247_TOP2 : Prop := ChainTheory.Thermodynamics.Landed93.cond_530247_TOP2

def cond_530247_TOP2_open : OpenDeclaration :=
  { address := 530247, stem := "TOP2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "10-4", edition := 6, statement := cond_530247_TOP2 }

abbrev wall_530300_SRAO : Prop := ChainTheory.Fields.Ch07.wall_530300_EQSA

def wall_530300_SRAO_open : OpenDeclaration :=
  { address := 530300, stem := "SRAO", kind := .wall, status := .open, decidingClass := "EQSA", letter := "parting", chapter := "4-6", edition := 6, statement := wall_530300_SRAO }

abbrev wall_530326_WKST : Prop := ChainTheory.Fields.Ch09.wall_530326_EQWK

def wall_530326_WKST_open : OpenDeclaration :=
  { address := 530326, stem := "WKST", kind := .wall, status := .open, decidingClass := "EQWK", letter := "uncarried", chapter := "7-10", edition := 6, statement := wall_530326_WKST }

abbrev wall_530352_DCHB : Prop := ChainTheory.StandardModel.Ch11.wall_530352_EQBD

def wall_530352_DCHB_open : OpenDeclaration :=
  { address := 530352, stem := "DCHB", kind := .wall, status := .open, decidingClass := "EQBD", letter := "-", chapter := "1-5", edition := 6, statement := wall_530352_DCHB }

abbrev wall_530378_RCQ2 : Prop := ChainTheory.StandardModel.Ch11.wall_530378_EQRA

def wall_530378_RCQ2_open : OpenDeclaration :=
  { address := 530378, stem := "RCQ2", kind := .wall, status := .open, decidingClass := "EQRA", letter := "-", chapter := "4-3", edition := 6, statement := wall_530378_RCQ2 }

abbrev wall_530402_TNMG : Prop := ChainTheory.InformationComputation.Landed93.wall_530402_EQGT

def wall_530402_TNMG_open : OpenDeclaration :=
  { address := 530402, stem := "TNMG", kind := .wall, status := .reposed, decidingClass := "EQGT", letter := "-", chapter := "12-2", edition := 6, statement := wall_530402_TNMG }

abbrev cond_530426_UB4H : Prop := ChainTheory.Foundations.Ch05.cond_530426_UB4H

def cond_530426_UB4H_open : OpenDeclaration :=
  { address := 530426, stem := "UB4H", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-2", edition := 6, statement := cond_530426_UB4H }

abbrev wall_530450_KSKC : Prop := ChainTheory.Foundations.Ch05.wall_530450_EQDL

def wall_530450_KSKC_open : OpenDeclaration :=
  { address := 530450, stem := "KSKC", kind := .wall, status := .reposed, decidingClass := "EQDL", letter := "-", chapter := "4-8", edition := 6, statement := wall_530450_KSKC }

abbrev cond_530477_LWE3 : Prop := ChainTheory.CompositeMatter.Ch17.cond_530477_LWE3

def cond_530477_LWE3_open : OpenDeclaration :=
  { address := 530477, stem := "LWE3", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "11-1", edition := 6, statement := cond_530477_LWE3 }

abbrev wall_530558_SWVK : Prop := ChainTheory.StandardModel.Ch11.wall_530558_EQKW

def wall_530558_SWVK_open : OpenDeclaration :=
  { address := 530558, stem := "SWVK", kind := .wall, status := .open, decidingClass := "EQKW", letter := "unstopped-named", chapter := "1-5", edition := 6, statement := wall_530558_SWVK }

abbrev cond_530584_ENT2 : Prop := ChainTheory.Thermodynamics.Landed93.cond_530584_ENT2

def cond_530584_ENT2_open : OpenDeclaration :=
  { address := 530584, stem := "ENT2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "10-7", edition := 6, statement := cond_530584_ENT2 }

abbrev cond_530610_PCHS : Prop := ChainTheory.CompositeMatter.Ch17.cond_530610_PCHS

def cond_530610_PCHS_open : OpenDeclaration :=
  { address := 530610, stem := "PCHS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "11-3", edition := 6, statement := cond_530610_PCHS }

abbrev wall_530636_CWKE : Prop := ChainTheory.Foundations.Ch05.wall_530636_EQDE

def wall_530636_CWKE_open : OpenDeclaration :=
  { address := 530636, stem := "CWKE", kind := .wall, status := .reposed, decidingClass := "EQDE", letter := "face-b-named", chapter := "4-5", edition := 6, statement := wall_530636_CWKE }

abbrev wall_530661_NDSC : Prop := ChainTheory.CompositeMatter.Ch15.wall_530661_EQSD

def wall_530661_NDSC_open : OpenDeclaration :=
  { address := 530661, stem := "NDSC", kind := .wall, status := .reposed, decidingClass := "EQSD", letter := "first-refusal-named", chapter := "11-3", edition := 6, statement := wall_530661_NDSC }

abbrev wall_530687_KCL3 : Prop := ChainTheory.Foundations.Ch05.wall_530687_EQKE

def wall_530687_KCL3_open : OpenDeclaration :=
  { address := 530687, stem := "KCL3", kind := .wall, status := .reposed, decidingClass := "EQKE", letter := "-", chapter := "4-8", edition := 6, statement := wall_530687_KCL3 }

abbrev wall_530714_SSP2 : Prop := ChainTheory.CompositeMatter.Ch14.wall_530714_EQSZ

def wall_530714_SSP2_open : OpenDeclaration :=
  { address := 530714, stem := "SSP2", kind := .wall, status := .open, decidingClass := "EQSZ", letter := "undecided-at-depth-three", chapter := "1-5", edition := 6, statement := wall_530714_SSP2 }

abbrev wall_530742_ERMF : Prop := ChainTheory.CompositeMatter.Ch17.wall_530742_EQFM

def wall_530742_ERMF_open : OpenDeclaration :=
  { address := 530742, stem := "ERMF", kind := .wall, status := .superseded, decidingClass := "EQFM", letter := "first-n-named", chapter := "11-3", edition := 6, statement := wall_530742_ERMF }

abbrev wall_530768_SA2T : Prop := ChainTheory.Gravity.Ch18.wall_530768_EQHS

def wall_530768_SA2T_open : OpenDeclaration :=
  { address := 530768, stem := "SA2T", kind := .wall, status := .open, decidingClass := "EQHS", letter := "unstopped-or-refused-named", chapter := "9-3", edition := 6, statement := wall_530768_SA2T }

abbrev wall_530796_ISMS : Prop := ChainTheory.Foundations.Ch05.wall_530796_EQIT

def wall_530796_ISMS_open : OpenDeclaration :=
  { address := 530796, stem := "ISMS", kind := .wall, status := .open, decidingClass := "EQIT", letter := "face-b-named", chapter := "4-4", edition := 6, statement := wall_530796_ISMS }

abbrev wall_530818_MXPH : Prop := ChainTheory.StandardModel.Ch13.wall_530818_EQNX

def wall_530818_MXPH_open : OpenDeclaration :=
  { address := 530818, stem := "MXPH", kind := .wall, status := .open, decidingClass := "EQNX", letter := "face-b-named", chapter := "7-9", edition := 6, statement := wall_530818_MXPH }

abbrev wall_530870_SCG3 : Prop := ChainTheory.Fields.Ch09.wall_530870_EQSI

def wall_530870_SCG3_open : OpenDeclaration :=
  { address := 530870, stem := "SCG3", kind := .wall, status := .open, decidingClass := "EQSI", letter := "face-b-named", chapter := "6-2", edition := 6, statement := wall_530870_SCG3 }

abbrev cond_530896_UHLF : Prop := ChainTheory.StandardModel.Ch11.cond_530896_UHLF

def cond_530896_UHLF_open : OpenDeclaration :=
  { address := 530896, stem := "UHLF", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "4-3", edition := 6, statement := cond_530896_UHLF }

abbrev wall_530919_WK2C : Prop := ChainTheory.Foundations.Ch05.wall_530919_EQDF

def wall_530919_WK2C_open : OpenDeclaration :=
  { address := 530919, stem := "WK2C", kind := .wall, status := .reposed, decidingClass := "EQDF", letter := "face-b-named", chapter := "4-5", edition := 6, statement := wall_530919_WK2C }

abbrev wall_530941_FPWP : Prop := ChainTheory.CompositeMatter.Ch14.wall_530941_EQPF

def wall_530941_FPWP_open : OpenDeclaration :=
  { address := 530941, stem := "FPWP", kind := .wall, status := .open, decidingClass := "EQPF", letter := "parting-named", chapter := "6-4", edition := 6, statement := wall_530941_FPWP }

abbrev wall_530968_OT2E : Prop := ChainTheory.CompositeMatter.Ch17.wall_530968_EQET

def wall_530968_OT2E_open : OpenDeclaration :=
  { address := 530968, stem := "OT2E", kind := .wall, status := .open, decidingClass := "EQET", letter := "parting-named", chapter := "8-7", edition := 6, statement := wall_530968_OT2E }

abbrev cond_531081_GPOE : Prop := ChainTheory.Fields.Ch07.cond_531081_GPOE

def cond_531081_GPOE_open : OpenDeclaration :=
  { address := 531081, stem := "GPOE", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-3", edition := 6, statement := cond_531081_GPOE }

abbrev cond_531107_FDIS : Prop := ChainTheory.StandardModel.Ch12.cond_531107_FDIS

def cond_531107_FDIS_open : OpenDeclaration :=
  { address := 531107, stem := "FDIS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-3", edition := 6, statement := cond_531107_FDIS }

abbrev wall_531133_DIMC : Prop := ChainTheory.Foundations.Ch03.wall_531133_EQDU

def wall_531133_DIMC_open : OpenDeclaration :=
  { address := 531133, stem := "DIMC", kind := .wall, status := .open, decidingClass := "EQDU", letter := "-", chapter := "1-6", edition := 6, statement := wall_531133_DIMC }

abbrev wall_531159_GPRR : Prop := ChainTheory.StandardModel.Ch12.wall_531159_EQRH

def wall_531159_GPRR_open : OpenDeclaration :=
  { address := 531159, stem := "GPRR", kind := .wall, status := .open, decidingClass := "EQRH", letter := "arithmetic-alone", chapter := "1-6", edition := 6, statement := wall_531159_GPRR }

abbrev wall_531184_NUDK : Prop := ChainTheory.StandardModel.Ch13.wall_531184_EQNB

def wall_531184_NUDK_open : OpenDeclaration :=
  { address := 531184, stem := "NUDK", kind := .wall, status := .open, decidingClass := "EQNB", letter := "-", chapter := "9-7", edition := 6, statement := wall_531184_NUDK }

abbrev wall_531210_CRCE : Prop := ChainTheory.StandardModel.Ch11.wall_531210_EQEC

def wall_531210_CRCE_open : OpenDeclaration :=
  { address := 531210, stem := "CRCE", kind := .wall, status := .open, decidingClass := "EQEC", letter := "unforced", chapter := "6-5", edition := 6, statement := wall_531210_CRCE }

abbrev wall_531236_BLSA : Prop := ChainTheory.StandardModel.Ch11.wall_531236_EQBL

def wall_531236_BLSA_open : OpenDeclaration :=
  { address := 531236, stem := "BLSA", kind := .wall, status := .open, decidingClass := "EQBL", letter := "sinks-elsewhere-or-among-many", chapter := "6-5", edition := 6, statement := wall_531236_BLSA }

abbrev wall_531263_SDEB : Prop := ChainTheory.Foundations.Ch05.wall_531263_EQSJ

def wall_531263_SDEB_open : OpenDeclaration :=
  { address := 531263, stem := "SDEB", kind := .wall, status := .open, decidingClass := "EQSJ", letter := "face-b-named", chapter := "4-5", edition := 6, statement := wall_531263_SDEB }

abbrev wall_531285_USMR : Prop := ChainTheory.CompositeMatter.Ch16.wall_531285_USMR

def wall_531285_USMR_open : OpenDeclaration :=
  { address := 531285, stem := "USMR", kind := .wall, status := .open, decidingClass := "-", letter := "-", chapter := "7-4", edition := 6, statement := wall_531285_USMR }

abbrev wall_531312_HADL : Prop := ChainTheory.CompositeMatter.Ch14.wall_531312_EQHN

def wall_531312_HADL_open : OpenDeclaration :=
  { address := 531312, stem := "HADL", kind := .wall, status := .open, decidingClass := "EQHN", letter := "within-the-null", chapter := "6-5", edition := 6, statement := wall_531312_HADL }

abbrev wall_531338_OLLK : Prop := ChainTheory.StandardModel.Ch11.wall_531338_EQOO

def wall_531338_OLLK_open : OpenDeclaration :=
  { address := 531338, stem := "OLLK", kind := .wall, status := .reposed, decidingClass := "EQOO", letter := "parting", chapter := "6-5", edition := 6, statement := wall_531338_OLLK }

abbrev wall_531364_HADM : Prop := ChainTheory.InformationComputation.Landed93.wall_531364_EQHJ

def wall_531364_HADM_open : OpenDeclaration :=
  { address := 531364, stem := "HADM", kind := .wall, status := .open, decidingClass := "EQHJ", letter := "-", chapter := "12-3", edition := 6, statement := wall_531364_HADM }

abbrev wall_531448_OSAD : Prop := ChainTheory.Fields.Ch07.wall_531448_EQOX

def wall_531448_OSAD_open : OpenDeclaration :=
  { address := 531448, stem := "OSAD", kind := .wall, status := .open, decidingClass := "EQOX", letter := "face-b-named", chapter := "4-6", edition := 6, statement := wall_531448_OSAD }

abbrev wall_531471_KCL4 : Prop := ChainTheory.Foundations.Ch05.wall_531471_EQKF

def wall_531471_KCL4_open : OpenDeclaration :=
  { address := 531471, stem := "KCL4", kind := .wall, status := .open, decidingClass := "EQKF", letter := "-", chapter := "4-8", edition := 6, statement := wall_531471_KCL4 }

abbrev wall_531497_PRO2 : Prop := ChainTheory.CompositeMatter.Ch16.wall_531497_EQPU

def wall_531497_PRO2_open : OpenDeclaration :=
  { address := 531497, stem := "PRO2", kind := .wall, status := .open, decidingClass := "EQPU", letter := "parts-at-the-first-cell", chapter := "8-3", edition := 6, statement := wall_531497_PRO2 }

abbrev cond_531550_SSDI : Prop := ChainTheory.Fields.Ch06.cond_531550_SSDI

def cond_531550_SSDI_open : OpenDeclaration :=
  { address := 531550, stem := "SSDI", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-6", edition := 6, statement := cond_531550_SSDI }

abbrev wall_531576_SCTJ : Prop := ChainTheory.StandardModel.Ch12.wall_531576_EQTJ

def wall_531576_SCTJ_open : OpenDeclaration :=
  { address := 531576, stem := "SCTJ", kind := .wall, status := .open, decidingClass := "EQTJ", letter := "parting", chapter := "7-3", edition := 6, statement := wall_531576_SCTJ }

abbrev wall_531602_EXMH : Prop := ChainTheory.StandardModel.Ch12.wall_531602_EQEY

def wall_531602_EXMH_open : OpenDeclaration :=
  { address := 531602, stem := "EXMH", kind := .wall, status := .open, decidingClass := "EQEY", letter := "parting", chapter := "7-3", edition := 6, statement := wall_531602_EXMH }

abbrev wall_531628_GENJ : Prop := ChainTheory.Fields.Ch08.wall_531628_EQGN

def wall_531628_GENJ_open : OpenDeclaration :=
  { address := 531628, stem := "GENJ", kind := .wall, status := .open, decidingClass := "EQGN", letter := "first-parting-named", chapter := "6-2", edition := 6, statement := wall_531628_GENJ }

abbrev cond_531654_DPIN : Prop := ChainTheory.Gravity.Ch18.cond_531654_DPIN

def cond_531654_DPIN_open : OpenDeclaration :=
  { address := 531654, stem := "DPIN", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "9-4", edition := 6, statement := cond_531654_DPIN }

abbrev cond_531680_PHTR : Prop := ChainTheory.Thermodynamics.Landed93.cond_531680_PHTR

def cond_531680_PHTR_open : OpenDeclaration :=
  { address := 531680, stem := "PHTR", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "10-5", edition := 6, statement := cond_531680_PHTR }

abbrev cond_531706_MUG2 : Prop := ChainTheory.Fields.Ch09.cond_531706_MUG2

def cond_531706_MUG2_open : OpenDeclaration :=
  { address := 531706, stem := "MUG2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-3", edition := 6, statement := cond_531706_MUG2 }

abbrev wall_531812_MDRC : Prop := ChainTheory.Gravity.Ch18.wall_531812_EQDW

def wall_531812_MDRC_open : OpenDeclaration :=
  { address := 531812, stem := "MDRC", kind := .wall, status := .open, decidingClass := "EQDW", letter := "-", chapter := "4-8", edition := 6, statement := wall_531812_MDRC }

abbrev wall_531838_DTR2 : Prop := ChainTheory.Gravity.Ch18.wall_531838_EQDJ

def wall_531838_DTR2_open : OpenDeclaration :=
  { address := 531838, stem := "DTR2", kind := .wall, status := .open, decidingClass := "EQDJ", letter := "-", chapter := "3-7", edition := 6, statement := wall_531838_DTR2 }

abbrev wall_531864_PTBL : Prop := ChainTheory.CompositeMatter.Ch15.wall_531864_EQPU

def wall_531864_PTBL_open : OpenDeclaration :=
  { address := 531864, stem := "PTBL", kind := .wall, status := .open, decidingClass := "EQPU", letter := "no-change-or-refused", chapter := "11-5", edition := 6, statement := wall_531864_PTBL }

abbrev wall_531890_KPLC : Prop := ChainTheory.Foundations.Ch05.wall_531890_EQKP

def wall_531890_KPLC_open : OpenDeclaration :=
  { address := 531890, stem := "KPLC", kind := .wall, status := .beyond, decidingClass := "EQKP", letter := "-", chapter := "4-8", edition := 6, statement := wall_531890_KPLC }

abbrev wall_531916_UNKN : Prop := ChainTheory.Foundations.Ch01.wall_531916_EQUN

def wall_531916_UNKN_open : OpenDeclaration :=
  { address := 531916, stem := "UNKN", kind := .wall, status := .beyond, decidingClass := "EQUN", letter := "-", chapter := "1-1", edition := 6, statement := wall_531916_UNKN }

abbrev cond_531968_AMBL : Prop := ChainTheory.CompositeMatter.Ch15.cond_531968_AMBL

def cond_531968_AMBL_open : OpenDeclaration :=
  { address := 531968, stem := "AMBL", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-4", edition := 6, statement := cond_531968_AMBL }

abbrev wall_531995_DPTM : Prop := ChainTheory.Gravity.Ch18.wall_531995_EQDW

def wall_531995_DPTM_open : OpenDeclaration :=
  { address := 531995, stem := "DPTM", kind := .wall, status := .beyond, decidingClass := "EQDW", letter := "unstopped-at-the-raised-budget", chapter := "9-3", edition := 6, statement := wall_531995_DPTM }

abbrev cond_532023_DST2 : Prop := ChainTheory.Foundations.Ch01.cond_532023_DST2

def cond_532023_DST2_open : OpenDeclaration :=
  { address := 532023, stem := "DST2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "10-4", edition := 6, statement := cond_532023_DST2 }

abbrev cond_532049_DIM1 : Prop := ChainTheory.Foundations.Ch01.cond_532049_DIM1

def cond_532049_DIM1_open : OpenDeclaration :=
  { address := 532049, stem := "DIM1", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-1", edition := 6, statement := cond_532049_DIM1 }

abbrev cond_532075_LGDS : Prop := ChainTheory.StandardModel.Ch11.cond_532075_LGDS

def cond_532075_LGDS_open : OpenDeclaration :=
  { address := 532075, stem := "LGDS", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-3", edition := 6, statement := cond_532075_LGDS }

abbrev wall_532101_CCSK : Prop := ChainTheory.Foundations.Ch05.wall_532101_EQTL

def wall_532101_CCSK_open : OpenDeclaration :=
  { address := 532101, stem := "CCSK", kind := .wall, status := .beyond, decidingClass := "EQTL", letter := "-", chapter := "4-8", edition := 6, statement := wall_532101_CCSK }

abbrev wall_532127_HBPK : Prop := ChainTheory.StandardModel.Ch11.wall_532127_EQHB

def wall_532127_HBPK_open : OpenDeclaration :=
  { address := 532127, stem := "HBPK", kind := .wall, status := .beyond, decidingClass := "EQHB", letter := "first-standing-named", chapter := "2-1", edition := 6, statement := wall_532127_HBPK }

abbrev cond_532153_ENBG : Prop := ChainTheory.StandardModel.Ch12.cond_532153_ENBG

def cond_532153_ENBG_open : OpenDeclaration :=
  { address := 532153, stem := "ENBG", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-5", edition := 6, statement := cond_532153_ENBG }

abbrev wall_532206_ISCD : Prop := ChainTheory.Foundations.Ch05.wall_532206_EQDZ

def wall_532206_ISCD_open : OpenDeclaration :=
  { address := 532206, stem := "ISCD", kind := .wall, status := .beyond, decidingClass := "EQDZ", letter := "-", chapter := "3-6", edition := 6, statement := wall_532206_ISCD }

abbrev cond_532262_STZC : Prop := ChainTheory.StandardModel.Ch12.cond_532262_STZC

def cond_532262_STZC_open : OpenDeclaration :=
  { address := 532262, stem := "STZC", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "7-3", edition := 6, statement := cond_532262_STZC }

abbrev wall_532315_MDE2 : Prop := ChainTheory.Foundations.Ch04.wall_532315_EQML

def wall_532315_MDE2_open : OpenDeclaration :=
  { address := 532315, stem := "MDE2", kind := .wall, status := .beyond, decidingClass := "EQML", letter := "-", chapter := "1-4", edition := 6, statement := wall_532315_MDE2 }

abbrev wall_532341_CBEO : Prop := ChainTheory.CompositeMatter.Ch14.wall_532341_EQCB

def wall_532341_CBEO_open : OpenDeclaration :=
  { address := 532341, stem := "CBEO", kind := .wall, status := .beyond, decidingClass := "EQCB", letter := "parts-at-a-named-clause", chapter := "6-1", edition := 6, statement := wall_532341_CBEO }

abbrev wall_532368_OPCB : Prop := ChainTheory.CompositeMatter.Ch14.wall_532368_EQOP

def wall_532368_OPCB_open : OpenDeclaration :=
  { address := 532368, stem := "OPCB", kind := .wall, status := .beyond, decidingClass := "EQOP", letter := "first-parting-named", chapter := "6-4", edition := 6, statement := wall_532368_OPCB }

abbrev wall_532421_SLT3 : Prop := ChainTheory.Fields.Ch07.wall_532421_EQTV

def wall_532421_SLT3_open : OpenDeclaration :=
  { address := 532421, stem := "SLT3", kind := .wall, status := .beyond, decidingClass := "EQTV", letter := "parting-at-the-invariant-part", chapter := "4-6", edition := 6, statement := wall_532421_SLT3 }

abbrev wall_532447_ATSV : Prop := ChainTheory.StandardModel.Ch12.wall_532447_EQAV

def wall_532447_ATSV_open : OpenDeclaration :=
  { address := 532447, stem := "ATSV", kind := .wall, status := .beyond, decidingClass := "EQAV", letter := "parting", chapter := "1-5", edition := 6, statement := wall_532447_ATSV }

abbrev wall_532473_GNC2 : Prop := ChainTheory.Fields.Ch08.wall_532473_EQGC

def wall_532473_GNC2_open : OpenDeclaration :=
  { address := 532473, stem := "GNC2", kind := .wall, status := .beyond, decidingClass := "EQGC", letter := "outside-at", chapter := "1-5", edition := 6, statement := wall_532473_GNC2 }

abbrev cond_532499_HPK2 : Prop := ChainTheory.StandardModel.Ch11.cond_532499_HPK2

def cond_532499_HPK2_open : OpenDeclaration :=
  { address := 532499, stem := "HPK2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "1-4", edition := 6, statement := cond_532499_HPK2 }

abbrev wall_532524_ATHG : Prop := ChainTheory.StandardModel.Ch12.wall_532524_EQHK

def wall_532524_ATHG_open : OpenDeclaration :=
  { address := 532524, stem := "ATHG", kind := .wall, status := .beyond, decidingClass := "EQHK", letter := "first-parting-named", chapter := "4-7", edition := 6, statement := wall_532524_ATHG }

abbrev wall_532550_DRDS : Prop := ChainTheory.StandardModel.Ch12.wall_532550_EQEA

def wall_532550_DRDS_open : OpenDeclaration :=
  { address := 532550, stem := "DRDS", kind := .wall, status := .beyond, decidingClass := "EQEA", letter := "first-parting-named", chapter := "7-1", edition := 6, statement := wall_532550_DRDS }

abbrev cond_532576_LDR5 : Prop := ChainTheory.Discussion.Appendices.cond_532576_LDR5

def cond_532576_LDR5_open : OpenDeclaration :=
  { address := 532576, stem := "LDR5", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "5-1", edition := 6, statement := cond_532576_LDR5 }

abbrev wall_532655_DGC4 : Prop := ChainTheory.CompositeMatter.Ch16.wall_532655_DGC4

def wall_532655_DGC4_open : OpenDeclaration :=
  { address := 532655, stem := "DGC4", kind := .wall, status := .beyond, decidingClass := "-", letter := "-", chapter := "8-1", edition := 6, statement := wall_532655_DGC4 }

abbrev cond_532679_NOSG : Prop := ChainTheory.Foundations.Ch02.cond_532679_NOSG

def cond_532679_NOSG_open : OpenDeclaration :=
  { address := 532679, stem := "NOSG", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-1", edition := 6, statement := cond_532679_NOSG }

opaque cond_532705_CUTK : Prop

def cond_532705_CUTK_open : OpenDeclaration :=
  { address := 532705, stem := "CUTK", kind := .conditional, status := .none, decidingClass := "EQEK", letter := "EQUAL", chapter := "1-5", edition := 7, statement := cond_532705_CUTK }

opaque cond_532731_DKMT : Prop

def cond_532731_DKMT_open : OpenDeclaration :=
  { address := 532731, stem := "DKMT", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "9-5", edition := 7, statement := cond_532731_DKMT }

opaque wall_532757_DRLR : Prop

def wall_532757_DRLR_open : OpenDeclaration :=
  { address := 532757, stem := "DRLR", kind := .wall, status := .beyond, decidingClass := "EQRM", letter := "FIRST-PARTING-NAMED", chapter := "1-3", edition := 7, statement := wall_532757_DRLR }

opaque wall_532783_DRPF : Prop

def wall_532783_DRPF_open : OpenDeclaration :=
  { address := 532783, stem := "DRPF", kind := .wall, status := .beyond, decidingClass := "-", letter := "FIRST-HUB-PARTING-NAMED", chapter := "7-1", edition := 7, statement := wall_532783_DRPF }

opaque wall_532809_OPC2 : Prop

def wall_532809_OPC2_open : OpenDeclaration :=
  { address := 532809, stem := "OPC2", kind := .wall, status := .beyond, decidingClass := "EQOE", letter := "FIRST-PARTING-NAMED", chapter := "5-8", edition := 7, statement := wall_532809_OPC2 }

opaque wall_532835_RGSC : Prop

def wall_532835_RGSC_open : OpenDeclaration :=
  { address := 532835, stem := "RGSC", kind := .wall, status := .beyond, decidingClass := "EQTC", letter := "FACE-B-NAMED", chapter := "6-4", edition := 7, statement := wall_532835_RGSC }

opaque cond_532861_GRP3 : Prop

def cond_532861_GRP3_open : OpenDeclaration :=
  { address := 532861, stem := "GRP3", kind := .conditional, status := .none, decidingClass := "EQGW", letter := "ORDERED", chapter := "3-7", edition := 7, statement := cond_532861_GRP3 }

opaque wall_532917_SPMC : Prop

def wall_532917_SPMC_open : OpenDeclaration :=
  { address := 532917, stem := "SPMC", kind := .wall, status := .beyond, decidingClass := "EQTC", letter := "PARTING", chapter := "7-11", edition := 7, statement := wall_532917_SPMC }

opaque cond_532943_RTOP : Prop

def cond_532943_RTOP_open : OpenDeclaration :=
  { address := 532943, stem := "RTOP", kind := .conditional, status := .none, decidingClass := "EQPN", letter := "EQUAL-AT-EVERY-CELL", chapter := "8-3", edition := 7, statement := cond_532943_RTOP }

opaque wall_532970_RNG2 : Prop

def wall_532970_RNG2_open : OpenDeclaration :=
  { address := 532970, stem := "RNG2", kind := .wall, status := .beyond, decidingClass := "EQRN", letter := "PARTING-NAMED", chapter := "5-7", edition := 7, statement := wall_532970_RNG2 }

opaque cond_532997_RYTV : Prop

def cond_532997_RYTV_open : OpenDeclaration :=
  { address := 532997, stem := "RYTV", kind := .conditional, status := .none, decidingClass := "-", letter := "THEOREM", chapter := "5-4", edition := 7, statement := cond_532997_RYTV }

opaque cond_533023_TD2S : Prop

def cond_533023_TD2S_open : OpenDeclaration :=
  { address := 533023, stem := "TD2S", kind := .conditional, status := .none, decidingClass := "EQTD", letter := "THEOREM", chapter := "3-5", edition := 7, statement := cond_533023_TD2S }

opaque wall_533049_OFAC : Prop

def wall_533049_OFAC_open : OpenDeclaration :=
  { address := 533049, stem := "OFAC", kind := .wall, status := .beyond, decidingClass := "EQOH", letter := "UNION-NAMED", chapter := "4-11", edition := 7, statement := wall_533049_OFAC }

opaque wall_533075_RCH2 : Prop

def wall_533075_RCH2_open : OpenDeclaration :=
  { address := 533075, stem := "RCH2", kind := .wall, status := .beyond, decidingClass := "EQRI", letter := "FACE-B-NAMED", chapter := "4-3", edition := 7, statement := wall_533075_RCH2 }

opaque wall_533098_CLRY : Prop

def wall_533098_CLRY_open : OpenDeclaration :=
  { address := 533098, stem := "CLRY", kind := .wall, status := .beyond, decidingClass := "EQEE", letter := "FACE-B-NAMED", chapter := "4-3", edition := 7, statement := wall_533098_CLRY }

opaque cond_533123_QUIN : Prop

def cond_533123_QUIN_open : OpenDeclaration :=
  { address := 533123, stem := "QUIN", kind := .conditional, status := .none, decidingClass := "EQQN", letter := "REACHES-AT-NO-NEW-RADICAND", chapter := "6-9", edition := 7, statement := cond_533123_QUIN }

opaque cond_533150_DRM2 : Prop

def cond_533150_DRM2_open : OpenDeclaration :=
  { address := 533150, stem := "DRM2", kind := .conditional, status := .none, decidingClass := "EQEU", letter := "THEOREM-AT-EVERY-NON-SINK", chapter := "8-2", edition := 7, statement := cond_533150_DRM2 }

opaque wall_533177_FSO2 : Prop

def wall_533177_FSO2_open : OpenDeclaration :=
  { address := 533177, stem := "FSO2", kind := .wall, status := .beyond, decidingClass := "EQFZ", letter := "UNDISCHARGED", chapter := "1-3", edition := 7, statement := wall_533177_FSO2 }

opaque cond_533228_HYSK : Prop

def cond_533228_HYSK_open : OpenDeclaration :=
  { address := 533228, stem := "HYSK", kind := .conditional, status := .none, decidingClass := "EQHY", letter := "EQUAL", chapter := "5-4", edition := 7, statement := cond_533228_HYSK }

opaque wall_533254_TRKS : Prop

def wall_533254_TRKS_open : OpenDeclaration :=
  { address := 533254, stem := "TRKS", kind := .wall, status := .beyond, decidingClass := "EQTG", letter := "PARTING", chapter := "7-3", edition := 7, statement := wall_533254_TRKS }

opaque wall_533280_N2PI : Prop

def wall_533280_N2PI_open : OpenDeclaration :=
  { address := 533280, stem := "N2PI", kind := .wall, status := .beyond, decidingClass := "EQPO", letter := "PARTING-NAMED", chapter := "2-7", edition := 7, statement := wall_533280_N2PI }

opaque wall_533307_GRMT : Prop

def wall_533307_GRMT_open : OpenDeclaration :=
  { address := 533307, stem := "GRMT", kind := .wall, status := .beyond, decidingClass := "EQGM", letter := "FIRST-PARTING-NAMED", chapter := "9-10", edition := 7, statement := wall_533307_GRMT }

opaque cond_533333_SGO2 : Prop

def cond_533333_SGO2_open : OpenDeclaration :=
  { address := 533333, stem := "SGO2", kind := .conditional, status := .none, decidingClass := "-", letter := "-", chapter := "2-6", edition := 7, statement := cond_533333_SGO2 }

opaque wall_533392_RDLW : Prop

def wall_533392_RDLW_open : OpenDeclaration :=
  { address := 533392, stem := "RDLW", kind := .wall, status := .beyond, decidingClass := "EQTG", letter := "PARTING", chapter := "1-3", edition := 7, statement := wall_533392_RDLW }

opaque wall_533418_TMSC : Prop

def wall_533418_TMSC_open : OpenDeclaration :=
  { address := 533418, stem := "TMSC", kind := .wall, status := .beyond, decidingClass := "EQTN", letter := "FIRST-PARTING-NAMED", chapter := "1-5", edition := 7, statement := wall_533418_TMSC }

opaque cond_533444_OSA3 : Prop

def cond_533444_OSA3_open : OpenDeclaration :=
  { address := 533444, stem := "OSA3", kind := .conditional, status := .none, decidingClass := "EQOY", letter := "FACE-A-MET", chapter := "4-6", edition := 7, statement := cond_533444_OSA3 }

opaque cond_533468_DNGH : Prop

def cond_533468_DNGH_open : OpenDeclaration :=
  { address := 533468, stem := "DNGH", kind := .conditional, status := .none, decidingClass := "EQHU", letter := "RESIDUE", chapter := "12-3", edition := 7, statement := cond_533468_DNGH }

opaque wall_533494_MPCF : Prop

def wall_533494_MPCF_open : OpenDeclaration :=
  { address := 533494, stem := "MPCF", kind := .wall, status := .beyond, decidingClass := "EQFN", letter := "PARTING", chapter := "4-8", edition := 7, statement := wall_533494_MPCF }

opaque cond_533520_CLS2 : Prop

def cond_533520_CLS2_open : OpenDeclaration :=
  { address := 533520, stem := "CLS2", kind := .conditional, status := .none, decidingClass := "EQZD", letter := "CLASSICAL", chapter := "1-6", edition := 7, statement := cond_533520_CLS2 }

opaque cond_533546_BRCH : Prop

def cond_533546_BRCH_open : OpenDeclaration :=
  { address := 533546, stem := "BRCH", kind := .conditional, status := .none, decidingClass := "EQBR", letter := "THEOREM-AT-EVERY-MULTI-CHANNEL-NON-SINK", chapter := "8-2", edition := 7, statement := cond_533546_BRCH }

opaque wall_533573_RSP2 : Prop

def wall_533573_RSP2_open : OpenDeclaration :=
  { address := 533573, stem := "RSP2", kind := .wall, status := .beyond, decidingClass := "EQPZ", letter := "FIRST-PARTING-LINK-NAMED", chapter := "6-4", edition := 7, statement := wall_533573_RSP2 }

opaque wall_533599_BETD : Prop

def wall_533599_BETD_open : OpenDeclaration :=
  { address := 533599, stem := "BETD", kind := .wall, status := .beyond, decidingClass := "EQBH", letter := "PARTS-AT-THE-ARM", chapter := "8-1", edition := 7, statement := wall_533599_BETD }

opaque wall_533626_HLRF : Prop

def wall_533626_HLRF_open : OpenDeclaration :=
  { address := 533626, stem := "HLRF", kind := .wall, status := .beyond, decidingClass := "EQHU", letter := "BEYOND-THE-NAMING-CLAUSE", chapter := "4-6", edition := 7, statement := wall_533626_HLRF }

opaque cond_533706_LFHR : Prop

def cond_533706_LFHR_open : OpenDeclaration :=
  { address := 533706, stem := "LFHR", kind := .conditional, status := .none, decidingClass := "EQMR", letter := "FORCED-AT-EVERY-NON-SINK", chapter := "8-4", edition := 7, statement := cond_533706_LFHR }

opaque wall_533733_BOSW : Prop

def wall_533733_BOSW_open : OpenDeclaration :=
  { address := 533733, stem := "BOSW", kind := .wall, status := .beyond, decidingClass := "EQBW", letter := "PARTS-AT-A-CARRIER-SINK-OF-RECORD", chapter := "8-5", edition := 7, statement := wall_533733_BOSW }

opaque wall_533760_ALPD : Prop

def wall_533760_ALPD_open : OpenDeclaration :=
  { address := 533760, stem := "ALPD", kind := .wall, status := .beyond, decidingClass := "EQAL", letter := "RELEASED-AT-NO-WEB-OF-RECORD", chapter := "8-1", edition := 7, statement := wall_533760_ALPD }

opaque cond_533787_IMBH : Prop

def cond_533787_IMBH_open : OpenDeclaration :=
  { address := 533787, stem := "IMBH", kind := .conditional, status := .none, decidingClass := "EQHV", letter := "OUTPUT-AT-THE-BOUND", chapter := "9-3", edition := 7, statement := cond_533787_IMBH }

opaque cond_533815_LMBN : Prop

def cond_533815_LMBN_open : OpenDeclaration :=
  { address := 533815, stem := "LMBN", kind := .conditional, status := .none, decidingClass := "EQMR", letter := "ONE-CELL", chapter := "5-4", edition := 7, statement := cond_533815_LMBN }

opaque wall_533842_HFSN : Prop

def wall_533842_HFSN_open : OpenDeclaration :=
  { address := 533842, stem := "HFSN", kind := .wall, status := .beyond, decidingClass := "EQHV", letter := "PARTING-NAMED", chapter := "5-4", edition := 7, statement := wall_533842_HFSN }

opaque cond_533868_MXAS : Prop

def cond_533868_MXAS_open : OpenDeclaration :=
  { address := 533868, stem := "MXAS", kind := .conditional, status := .none, decidingClass := "EQNZ", letter := "FACE-A-BASIS", chapter := "7-5", edition := 7, statement := cond_533868_MXAS }

opaque cond_533893_HLGR : Prop

def cond_533893_HLGR_open : OpenDeclaration :=
  { address := 533893, stem := "HLGR", kind := .conditional, status := .none, decidingClass := "EQHA", letter := "EQUAL-THE-MASS-LAW", chapter := "4-7", edition := 7, statement := cond_533893_HLGR }

opaque cond_533919_TST4 : Prop

def cond_533919_TST4_open : OpenDeclaration :=
  { address := 533919, stem := "TST4", kind := .conditional, status := .none, decidingClass := "EQTH", letter := "DISSOLVED", chapter := "7-11", edition := 7, statement := cond_533919_TST4 }

opaque cond_533971_WMXR : Prop

def cond_533971_WMXR_open : OpenDeclaration :=
  { address := 533971, stem := "WMXR", kind := .conditional, status := .none, decidingClass := "EQWM", letter := "ONE-STRUCTURE", chapter := "7-10", edition := 7, statement := cond_533971_WMXR }

opaque wall_533997_VBS2 : Prop

def wall_533997_VBS2_open : OpenDeclaration :=
  { address := 533997, stem := "VBS2", kind := .wall, status := .beyond, decidingClass := "EQVB", letter := "PARTING", chapter := "1-5", edition := 7, statement := wall_533997_VBS2 }

opaque wall_534023_NOET : Prop

def wall_534023_NOET_open : OpenDeclaration :=
  { address := 534023, stem := "NOET", kind := .wall, status := .beyond, decidingClass := "EQNP", letter := "PARTING", chapter := "4-9", edition := 7, statement := wall_534023_NOET }

opaque wall_534049_LCC2 : Prop

def wall_534049_LCC2_open : OpenDeclaration :=
  { address := 534049, stem := "LCC2", kind := .wall, status := .beyond, decidingClass := "EKLC", letter := "PREMISE-STANDS", chapter := "3-8", edition := 7, statement := wall_534049_LCC2 }

opaque wall_534075_SIDX : Prop

def wall_534075_SIDX_open : OpenDeclaration :=
  { address := 534075, stem := "SIDX", kind := .wall, status := .beyond, decidingClass := "EQTO", letter := "PARTING", chapter := "6-9", edition := 7, statement := wall_534075_SIDX }

opaque wall_534101_BMRH : Prop

def wall_534101_BMRH_open : OpenDeclaration :=
  { address := 534101, stem := "BMRH", kind := .wall, status := .beyond, decidingClass := "EQHA", letter := "PARTING-NAMED", chapter := "6-9", edition := 7, statement := wall_534101_BMRH }

opaque cond_534128_LL6S : Prop

def cond_534128_LL6S_open : OpenDeclaration :=
  { address := 534128, stem := "LL6S", kind := .conditional, status := .none, decidingClass := "STAND", letter := "STANDALONE", chapter := "13-4", edition := 7, statement := cond_534128_LL6S }

opaque wall_534158_KIDN : Prop

def wall_534158_KIDN_open : OpenDeclaration :=
  { address := 534158, stem := "KIDN", kind := .wall, status := .beyond, decidingClass := "EQKG", letter := "REMAINDER-NAMED", chapter := "4-8", edition := 7, statement := wall_534158_KIDN }

opaque wall_534184_EHWF : Prop

def wall_534184_EHWF_open : OpenDeclaration :=
  { address := 534184, stem := "EHWF", kind := .wall, status := .beyond, decidingClass := "EQFG", letter := "FIRST-PARTING-NAMED", chapter := "9-3", edition := 7, statement := wall_534184_EHWF }

opaque wall_534210_FERL : Prop

def wall_534210_FERL_open : OpenDeclaration :=
  { address := 534210, stem := "FERL", kind := .wall, status := .beyond, decidingClass := "EQFB", letter := "FIRST-PARTING-NAMED", chapter := "6-9", edition := 7, statement := wall_534210_FERL }

opaque wall_534237_SJWM : Prop

def wall_534237_SJWM_open : OpenDeclaration :=
  { address := 534237, stem := "SJWM", kind := .wall, status := .beyond, decidingClass := "EQNE", letter := "FIRST-PARTING-NAMED", chapter := "7-11", edition := 7, statement := wall_534237_SJWM }

opaque cond_534263_TSC2 : Prop

def cond_534263_TSC2_open : OpenDeclaration :=
  { address := 534263, stem := "TSC2", kind := .conditional, status := .none, decidingClass := "EQTQ", letter := "CARRIED", chapter := "7-11", edition := 7, statement := cond_534263_TSC2 }

opaque cond_534290_LOWD : Prop

def cond_534290_LOWD_open : OpenDeclaration :=
  { address := 534290, stem := "LOWD", kind := .conditional, status := .none, decidingClass := "EQND", letter := "FUNCTION-OF-THE-IN-LEGS", chapter := "7-11", edition := 7, statement := cond_534290_LOWD }

opaque wall_534317_RSWL : Prop

def wall_534317_RSWL_open : OpenDeclaration :=
  { address := 534317, stem := "RSWL", kind := .wall, status := .beyond, decidingClass := "EQTW", letter := "NONE-NAMED", chapter := "1-3", edition := 7, statement := wall_534317_RSWL }

opaque cond_534343_CRDU : Prop

def cond_534343_CRDU_open : OpenDeclaration :=
  { address := 534343, stem := "CRDU", kind := .conditional, status := .none, decidingClass := "EQEI", letter := "TRAVERSED", chapter := "1-5", edition := 7, statement := cond_534343_CRDU }

opaque cond_534369_ASYB : Prop

def cond_534369_ASYB_open : OpenDeclaration :=
  { address := 534369, stem := "ASYB", kind := .conditional, status := .none, decidingClass := "EQBA", letter := "EXCESS-AT-THE-READING-OF-RECORD", chapter := "8-4", edition := 7, statement := cond_534369_ASYB }

opaque wall_534396_BCNC : Prop

def wall_534396_BCNC_open : OpenDeclaration :=
  { address := 534396, stem := "BCNC", kind := .wall, status := .beyond, decidingClass := "EQEQ", letter := "PARTS", chapter := "4-8", edition := 7, statement := wall_534396_BCNC }

opaque cond_534449_SPM2 : Prop

def cond_534449_SPM2_open : OpenDeclaration :=
  { address := 534449, stem := "SPM2", kind := .conditional, status := .none, decidingClass := "EQS2", letter := "THEOREM", chapter := "1-6", edition := 7, statement := cond_534449_SPM2 }

opaque wall_534475_RSLW : Prop

def wall_534475_RSLW_open : OpenDeclaration :=
  { address := 534475, stem := "RSLW", kind := .wall, status := .beyond, decidingClass := "EQUL", letter := "PARTING-NAMED", chapter := "1-3", edition := 7, statement := wall_534475_RSLW }

opaque cond_534501_TRDR : Prop

def cond_534501_TRDR_open : OpenDeclaration :=
  { address := 534501, stem := "TRDR", kind := .conditional, status := .none, decidingClass := "EQJT", letter := "TRACE-OF-THE-IDENTITY", chapter := "7-1", edition := 7, statement := cond_534501_TRDR }

opaque wall_534528_WSOR : Prop

def wall_534528_WSOR_open : OpenDeclaration :=
  { address := 534528, stem := "WSOR", kind := .wall, status := .beyond, decidingClass := "EQOZ", letter := "PARTING", chapter := "1-3", edition := 7, statement := wall_534528_WSOR }

opaque cond_534608_ESOF : Prop

def cond_534608_ESOF_open : OpenDeclaration :=
  { address := 534608, stem := "ESOF", kind := .conditional, status := .none, decidingClass := "EQFH", letter := "FUNCTION", chapter := "7-3", edition := 7, statement := cond_534608_ESOF }

opaque wall_534634_CPWB : Prop

def wall_534634_CPWB_open : OpenDeclaration :=
  { address := 534634, stem := "CPWB", kind := .wall, status := .beyond, decidingClass := "EQAW", letter := "PARTING", chapter := "2-1", edition := 7, statement := wall_534634_CPWB }

opaque wall_534661_PLRS : Prop

def wall_534661_PLRS_open : OpenDeclaration :=
  { address := 534661, stem := "PLRS", kind := .wall, status := .beyond, decidingClass := "EQPA", letter := "FACE-B", chapter := "5-1", edition := 7, statement := wall_534661_PLRS }

opaque wall_534714_NSCU : Prop

def wall_534714_NSCU_open : OpenDeclaration :=
  { address := 534714, stem := "NSCU", kind := .wall, status := .beyond, decidingClass := "EQUV", letter := "PARTING", chapter := "5-6", edition := 7, statement := wall_534714_NSCU }

opaque wall_534740_SJFE : Prop

def wall_534740_SJFE_open : OpenDeclaration :=
  { address := 534740, stem := "SJFE", kind := .wall, status := .beyond, decidingClass := "EQEJ", letter := "PARTING", chapter := "6-3", edition := 7, statement := wall_534740_SJFE }

opaque wall_534793_LASC : Prop

def wall_534793_LASC_open : OpenDeclaration :=
  { address := 534793, stem := "LASC", kind := .wall, status := .beyond, decidingClass := "EQEM", letter := "FIRST-PARTING-NAMED", chapter := "1-6", edition := 7, statement := wall_534793_LASC }

opaque wall_534819_ELLB : Prop

def wall_534819_ELLB_open : OpenDeclaration :=
  { address := 534819, stem := "ELLB", kind := .wall, status := .beyond, decidingClass := "EQBO", letter := "FIRST-GENRE-NAMED", chapter := "2-1", edition := 7, statement := wall_534819_ELLB }

opaque wall_534900_PGNC : Prop

def wall_534900_PGNC_open : OpenDeclaration :=
  { address := 534900, stem := "PGNC", kind := .wall, status := .beyond, decidingClass := "EQGG", letter := "PARTING-AT-A-GENRE", chapter := "1-2", edition := 7, statement := wall_534900_PGNC }

opaque wall_534928_SMRP : Prop

def wall_534928_SMRP_open : OpenDeclaration :=
  { address := 534928, stem := "SMRP", kind := .wall, status := .beyond, decidingClass := "EQUM", letter := "STANDS-AT-EVERY-READING", chapter := "1-5", edition := 7, statement := wall_534928_SMRP }

opaque wall_534954_DCPL : Prop

def wall_534954_DCPL_open : OpenDeclaration :=
  { address := 534954, stem := "DCPL", kind := .wall, status := .beyond, decidingClass := "EQIC", letter := "COUPLED", chapter := "1-6", edition := 7, statement := wall_534954_DCPL }

opaque wall_534981_SFTP : Prop

def wall_534981_SFTP_open : OpenDeclaration :=
  { address := 534981, stem := "SFTP", kind := .wall, status := .beyond, decidingClass := "EQUF", letter := "FACE-B", chapter := "1-3", edition := 7, statement := wall_534981_SFTP }

opaque cond_535008_DEFM : Prop

def cond_535008_DEFM_open : OpenDeclaration :=
  { address := 535008, stem := "DEFM", kind := .conditional, status := .none, decidingClass := "EQNG", letter := "DEFINED", chapter := "4-8", edition := 7, statement := cond_535008_DEFM }

opaque cond_535091_HGDN : Prop

def cond_535091_HGDN_open : OpenDeclaration :=
  { address := 535091, stem := "HGDN", kind := .conditional, status := .none, decidingClass := "EQGG", letter := "EXPONENTIAL-TOWARD-THE-CAP", chapter := "1-3", edition := 7, statement := cond_535091_HGDN }

opaque wall_535118_EMWP : Prop

def wall_535118_EMWP_open : OpenDeclaration :=
  { address := 535118, stem := "EMWP", kind := .wall, status := .beyond, decidingClass := "EQQA", letter := "PARTING", chapter := "1-6", edition := 7, statement := wall_535118_EMWP }

opaque cond_535144_L6RS : Prop

def cond_535144_L6RS_open : OpenDeclaration :=
  { address := 535144, stem := "L6RS", kind := .conditional, status := .none, decidingClass := "-", letter := "STANDALONE", chapter := "13-4", edition := 7, statement := cond_535144_L6RS }

opaque cond_535202_HRNC : Prop

def cond_535202_HRNC_open : OpenDeclaration :=
  { address := 535202, stem := "HRNC", kind := .conditional, status := .none, decidingClass := "EQFI", letter := "INVARIANT-INTEGER-WINDING", chapter := "11-4", edition := 7, statement := cond_535202_HRNC }

opaque wall_535254_PRCA : Prop

def wall_535254_PRCA_open : OpenDeclaration :=
  { address := 535254, stem := "PRCA", kind := .wall, status := .beyond, decidingClass := "EQAP", letter := "PARTING", chapter := "6-4", edition := 7, statement := wall_535254_PRCA }

opaque wall_535281_RCLD : Prop

def wall_535281_RCLD_open : OpenDeclaration :=
  { address := 535281, stem := "RCLD", kind := .wall, status := .beyond, decidingClass := "EQNI", letter := "PARTING-AT-THE-CAP", chapter := "7-11", edition := 7, statement := wall_535281_RCLD }

opaque wall_535309_BMCP : Prop

def wall_535309_BMCP_open : OpenDeclaration :=
  { address := 535309, stem := "BMCP", kind := .wall, status := .beyond, decidingClass := "EQBQ", letter := "PARTING-NAMED", chapter := "5-4", edition := 7, statement := wall_535309_BMCP }

opaque wall_535335_EBRC : Prop

def wall_535335_EBRC_open : OpenDeclaration :=
  { address := 535335, stem := "EBRC", kind := .wall, status := .beyond, decidingClass := "EQFJ", letter := "FIRST-GENRE-NAMED", chapter := "2-1", edition := 7, statement := wall_535335_EBRC }

opaque cond_535439_OLDC : Prop

def cond_535439_OLDC_open : OpenDeclaration :=
  { address := 535439, stem := "OLDC", kind := .conditional, status := .none, decidingClass := "EQGO", letter := "DECOUPLED", chapter := "1-2", edition := 7, statement := cond_535439_OLDC }

opaque wall_535466_DCRA : Prop

def wall_535466_DCRA_open : OpenDeclaration :=
  { address := 535466, stem := "DCRA", kind := .wall, status := .beyond, decidingClass := "EQAA", letter := "PARTING", chapter := "7-11", edition := 7, statement := wall_535466_DCRA }

opaque cond_535494_OLSL : Prop

def cond_535494_OLSL_open : OpenDeclaration :=
  { address := 535494, stem := "OLSL", kind := .conditional, status := .none, decidingClass := "EQUO", letter := "FACE-A", chapter := "1-2", edition := 7, statement := cond_535494_OLSL }

opaque cond_535521_PRCI : Prop

def cond_535521_PRCI_open : OpenDeclaration :=
  { address := 535521, stem := "PRCI", kind := .conditional, status := .none, decidingClass := "EQJC", letter := "EQUAL", chapter := "1-3", edition := 7, statement := cond_535521_PRCI }

opaque cond_535548_LPSC : Prop

def cond_535548_LPSC_open : OpenDeclaration :=
  { address := 535548, stem := "LPSC", kind := .conditional, status := .none, decidingClass := "EQFK", letter := "ONE-PAIRING-NAMED", chapter := "9-2", edition := 7, statement := cond_535548_LPSC }

opaque cond_535706_DRP6 : Prop

def cond_535706_DRP6_open : OpenDeclaration :=
  { address := 535706, stem := "DRP6", kind := .conditional, status := .none, decidingClass := "EQIC", letter := "CLOSED", chapter := "5-1", edition := 7, statement := cond_535706_DRP6 }

opaque wall_535732_RDWP : Prop

def wall_535732_RDWP_open : OpenDeclaration :=
  { address := 535732, stem := "RDWP", kind := .wall, status := .beyond, decidingClass := "EQUE", letter := "PARTING-AT-THE-RULE", chapter := "1-3", edition := 7, statement := wall_535732_RDWP }

opaque wall_535761_MNTH : Prop

def wall_535761_MNTH_open : OpenDeclaration :=
  { address := 535761, stem := "MNTH", kind := .wall, status := .beyond, decidingClass := "EQMT", letter := "PARTING", chapter := "1-1", edition := 7, statement := wall_535761_MNTH }

opaque wall_535787_ALCP : Prop

def wall_535787_ALCP_open : OpenDeclaration :=
  { address := 535787, stem := "ALCP", kind := .wall, status := .beyond, decidingClass := "EQAE", letter := "PARTING", chapter := "2-1", edition := 7, statement := wall_535787_ALCP }

opaque wall_535866_RSAC : Prop

def wall_535866_RSAC_open : OpenDeclaration :=
  { address := 535866, stem := "RSAC", kind := .wall, status := .beyond, decidingClass := "EQUG", letter := "PARTING-AT-THE-STOP", chapter := "1-3", edition := 7, statement := wall_535866_RSAC }

opaque cond_535895_ASJN : Prop

def cond_535895_ASJN_open : OpenDeclaration :=
  { address := 535895, stem := "ASJN", kind := .conditional, status := .none, decidingClass := "EQAX", letter := "DEFINED-AT-THE-CAP-REGISTER", chapter := "6-4", edition := 7, statement := cond_535895_ASJN }

opaque wall_535921_ABRC : Prop

def wall_535921_ABRC_open : OpenDeclaration :=
  { address := 535921, stem := "ABRC", kind := .wall, status := .beyond, decidingClass := "EQAE", letter := "TRIVIAL", chapter := "1-3", edition := 7, statement := wall_535921_ABRC }

opaque cond_535947_DRP7 : Prop

def cond_535947_DRP7_open : OpenDeclaration :=
  { address := 535947, stem := "DRP7", kind := .conditional, status := .none, decidingClass := "EQFI", letter := "DEFINED", chapter := "5-1", edition := 7, statement := cond_535947_DRP7 }

opaque wall_536000_NDEB : Prop

def wall_536000_NDEB_open : OpenDeclaration :=
  { address := 536000, stem := "NDEB", kind := .wall, status := .none, decidingClass := "EQNN", letter := "PARTING", chapter := "13-7", edition := 7, statement := wall_536000_NDEB }

opaque wall_536028_RCSY : Prop

def wall_536028_RCSY_open : OpenDeclaration :=
  { address := 536028, stem := "RCSY", kind := .wall, status := .beyond, decidingClass := "EQUC", letter := "FACE-B-NAMED", chapter := "4-3", edition := 7, statement := wall_536028_RCSY }

opaque wall_536052_PRWG : Prop

def wall_536052_PRWG_open : OpenDeclaration :=
  { address := 536052, stem := "PRWG", kind := .wall, status := .beyond, decidingClass := "EQWH", letter := "PARTING", chapter := "5-1", edition := 7, statement := wall_536052_PRWG }

opaque wall_536108_SRBT : Prop

def wall_536108_SRBT_open : OpenDeclaration :=
  { address := 536108, stem := "SRBT", kind := .wall, status := .beyond, decidingClass := "EQUH", letter := "PARTING-NAMED", chapter := "7-3", edition := 7, statement := wall_536108_SRBT }

opaque wall_536136_FQPR : Prop

def wall_536136_FQPR_open : OpenDeclaration :=
  { address := 536136, stem := "FQPR", kind := .wall, status := .beyond, decidingClass := "EQGD", letter := "PRIMITIVE", chapter := "11-4", edition := 7, statement := wall_536136_FQPR }

opaque wall_536188_HGAU : Prop

def wall_536188_HGAU_open : OpenDeclaration :=
  { address := 536188, stem := "HGAU", kind := .wall, status := .beyond, decidingClass := "EQIH", letter := "NEITHER-FACE-NAMED", chapter := "4-7", edition := 7, statement := wall_536188_HGAU }

opaque wall_536241_MXSO : Prop

def wall_536241_MXSO_open : OpenDeclaration :=
  { address := 536241, stem := "MXSO", kind := .wall, status := .beyond, decidingClass := "EQOI", letter := "FACE-B-NAMED", chapter := "7-9", edition := 7, statement := wall_536241_MXSO }

opaque wall_536293_RBAC : Prop

def wall_536293_RBAC_open : OpenDeclaration :=
  { address := 536293, stem := "RBAC", kind := .wall, status := .beyond, decidingClass := "EQUP", letter := "CLAUSE-NAMED", chapter := "1-6", edition := 7, statement := wall_536293_RBAC }

opaque wall_536321_TDRN : Prop

def wall_536321_TDRN_open : OpenDeclaration :=
  { address := 536321, stem := "TDRN", kind := .wall, status := .beyond, decidingClass := "EQOI", letter := "PARTING-NAMED", chapter := "8-6", edition := 7, statement := wall_536321_TDRN }

opaque wall_536609_RDOW : Prop

def wall_536609_RDOW_open : OpenDeclaration :=
  { address := 536609, stem := "RDOW", kind := .wall, status := .beyond, decidingClass := "EQUQ", letter := "ATOM-NAMED", chapter := "1-1", edition := 7, statement := wall_536609_RDOW }

opaque wall_536664_SRDA : Prop

def wall_536664_SRDA_open : OpenDeclaration :=
  { address := 536664, stem := "SRDA", kind := .wall, status := .beyond, decidingClass := "EQUQ", letter := "RULES-PARTING-NAMED", chapter := "13-7", edition := 7, statement := wall_536664_SRDA }

opaque wall_536690_HWCW : Prop

def wall_536690_HWCW_open : OpenDeclaration :=
  { address := 536690, stem := "HWCW", kind := .wall, status := .beyond, decidingClass := "EQIW", letter := "PARTING-NAMED", chapter := "9-3", edition := 7, statement := wall_536690_HWCW }

structure ReadCountClause where
  clause : String
  name : String
  found : String
  at_ : String
  letter : String
  forcedBy : String
  alternatives : String
deriving Repr

def countOfARead : List ReadCountClause := [
  { clause := "D0", name := "WHOLE", found := "FOUND", at_ := "536301", letter := "WHOLE", forcedBy := "-", alternatives := "NONE" },
  { clause := "D1", name := "ENTRY-AT-A-DOCK", found := "FOUND", at_ := "536301", letter := "FORCED", forcedBy := "D1a;D1b;D1c", alternatives := "NONE" },
  { clause := "D2", name := "REACH-THROUGH-UNCAPPED", found := "FOUND", at_ := "536301", letter := "FORCED", forcedBy := "D2a;D2b;D2c;D2d;D2e", alternatives := "NONE" },
  { clause := "D3", name := "BODY-READ-ALONE", found := "FOUND", at_ := "536301", letter := "READING", forcedBy := "NONE", alternatives := "BODY:ADMITTED;SHARED:ADMITTED" },
  { clause := "D4", name := "UNCAPPED-AT-MEASURE", found := "FOUND", at_ := "536301", letter := "FORCED", forcedBy := "D4a;D4b;D4c;D4d", alternatives := "NONE" },
  { clause := "D5", name := "CAPPED-MET-AT-CAP-ONCE", found := "FOUND", at_ := "536301", letter := "FORCED", forcedBy := "D5a;D5b;D5c;D5d;D5e", alternatives := "NONE" },
  { clause := "D6", name := "PASSAGE-NEVER-COUNT", found := "FOUND", at_ := "536301", letter := "READING", forcedBy := "NONE", alternatives := "BOUND:ADMITTED;THROUGH:ADMITTED" }
]

opaque readCount_D3_BODY_READ_ALONE : Prop

def readCount_D3_BODY_READ_ALONE_open : OpenDeclaration :=
  { address := 536609, stem := "RDOW", kind := .reading, status := .none, decidingClass := "EQUQ", letter := "ATOM-NAMED", chapter := "1-1", edition := 7, statement := readCount_D3_BODY_READ_ALONE }

opaque readCount_D6_PASSAGE_NEVER_COUNT : Prop

def readCount_D6_PASSAGE_NEVER_COUNT_open : OpenDeclaration :=
  { address := 536609, stem := "RDOW", kind := .reading, status := .none, decidingClass := "EQUQ", letter := "ATOM-NAMED", chapter := "1-1", edition := 7, statement := readCount_D6_PASSAGE_NEVER_COUNT }

def census : List OpenDeclaration := [
  cond_503180_ULPR_open,
  cond_504521_RSBD_open,
  cond_507228_TWCN_open,
  cond_510035_TKDP_open,
  cond_515504_JSAS_open,
  cond_515843_ARS2_open,
  cond_516104_PFD2_open,
  cond_516262_JCM2_open,
  cond_516343_UWC2_open,
  wall_516623_SCMV_open,
  wall_516650_ORXS_open,
  cond_516700_CPAS_open,
  cond_516775_CFTC_open,
  wall_516828_PSCM_open,
  wall_516854_PVRD_open,
  wall_516903_TRCM_open,
  wall_516930_NCC2_open,
  wall_516990_CRPH_open,
  wall_517016_MGFC_open,
  wall_517119_IDC2_open,
  wall_517145_CHSC_open,
  cond_517173_SPMV_open,
  cond_517200_CEND_open,
  wall_517250_RLAP_open,
  wall_517276_ORRB_open,
  wall_517326_DLCA_open,
  wall_517351_open,
  wall_517380_open,
  wall_517407_HDBD_open,
  wall_517460_CHS2_open,
  wall_517488_CROP_open,
  wall_517513_HFBD_open,
  wall_517590_OACD_open,
  wall_517615_CSPN_open,
  wall_517641_LFCF_open,
  wall_517666_BOOR_open,
  wall_517766_SKEY_open,
  wall_517818_CFRG_open,
  wall_517843_PLMX_open,
  wall_517870_WTWT_open,
  wall_517895_RPCZ_open,
  wall_518059_BTKR_open,
  wall_518084_CFMN_open,
  wall_518109_OACR_open,
  wall_518134_ZTLR_open,
  wall_518186_SCDC_open,
  wall_518212_CLAF_open,
  wall_518237_RCSG_open,
  wall_518262_NNRD_open,
  wall_518289_STSK_open,
  wall_518314_HPEF_open,
  wall_518339_MOAJ_open,
  wall_518498_RTSR_open,
  wall_518523_SEDK_open,
  wall_518548_THBC_open,
  wall_518601_CMFP_open,
  wall_518627_SKCS_open,
  wall_518652_DTCJ_open,
  wall_518677_SUCM_open,
  wall_518702_NRCL_open,
  wall_518727_HERG_open,
  cond_518804_COLK_open,
  cond_518830_MDFN_open,
  wall_518958_CFTP_open,
  wall_519009_QRJR_open,
  wall_519035_SOEL_open,
  wall_519060_WPWC_open,
  wall_519086_MURR_open,
  wall_519112_RTBF_open,
  wall_519164_QFCL_open,
  cond_519215_MDEO_open,
  wall_519345_HDKC_open,
  cond_519396_PFRL_open,
  wall_519497_DSSP_open,
  wall_519574_GORN_open,
  wall_519674_RSM2_open,
  wall_519857_GIWO_open,
  wall_519912_SAD2_open,
  wall_519964_OBPS_open,
  cond_520041_CRLK_open,
  cond_520119_GWDC_open,
  wall_520224_SPSE_open,
  cond_520248_RLPQ_open,
  wall_520274_HCSR_open,
  wall_520353_RMFD_open,
  wall_520379_CPCX_open,
  wall_520431_DSML_open,
  cond_520457_SKDM_open,
  cond_520663_RLTV_open,
  wall_520715_CFMU_open,
  wall_520740_QRJS_open,
  wall_520766_HRSP_open,
  wall_520848_RSOM_open,
  wall_520925_SRXE_open,
  wall_520950_BCVL_open,
  wall_520975_CRTN_open,
  cond_521130_RAEO_open,
  wall_521182_ESGN_open,
  wall_521208_STOD_open,
  wall_521285_SPRE_open,
  wall_521366_CNCV_open,
  cond_521443_WDCL_open,
  wall_521469_CCEN_open,
  wall_521656_BCTJ_open,
  wall_521682_SEPQ_open,
  wall_521707_SDWP_open,
  cond_521732_RNDL_open,
  cond_521758_TWDS_open,
  wall_521784_WWRB_open,
  wall_521809_FRPK_open,
  wall_521835_HDSR_open,
  cond_521860_CAAC_open,
  cond_521886_SOZT_open,
  wall_521937_MUOT_open,
  cond_521989_DCRS_open,
  cond_522015_RAOB_open,
  wall_522064_RSCF_open,
  wall_522090_FCMJ_open,
  wall_522115_HSDM_open,
  wall_522140_SPKB_open,
  wall_522165_BOTV_open,
  cond_522217_SMZT_open,
  wall_522294_DACS_open,
  wall_522320_BCTV_open,
  wall_522346_RSRN_open,
  wall_522397_SEWD_open,
  wall_522448_MUCS_open,
  cond_522474_GQDS_open,
  wall_522500_IPMF_open,
  wall_522556_FNRC_open,
  cond_522607_FRCF_open,
  wall_522682_BEJB_open,
  cond_522708_FFRO_open,
  wall_522787_SRDD_open,
  wall_522970_SKDC_open,
  wall_522996_RJIW_open,
  wall_523126_CRGO_open,
  wall_523152_QFSU_open,
  wall_523177_DGCG_open,
  cond_523203_AMSP_open,
  wall_523229_LSSE_open,
  cond_523306_SOZM_open,
  wall_523332_FECF_open,
  wall_523516_MCFO_open,
  wall_523542_NCFK_open,
  cond_523567_CRUS_open,
  cond_523593_CCDD_open,
  wall_523642_PWRS_open,
  wall_523694_RCOB_open,
  cond_523746_CCAS_open,
  cond_523802_ORCG_open,
  cond_523854_CFTS_open,
  wall_523880_CESS_open,
  cond_523963_CSKC_open,
  cond_523989_LNAL_open,
  cond_524038_ORKC_open,
  cond_524064_WSWC_open,
  wall_524193_KCUM_open,
  cond_524322_LDRQ_open,
  wall_524457_BSRC_open,
  wall_524483_UQED_open,
  wall_524509_ROEC_open,
  wall_524587_ORCB_open,
  cond_524640_RDSG_open,
  wall_524666_LCOG_open,
  cond_524692_SLPP_open,
  wall_524774_NWRJ_open,
  wall_524800_ROED_open,
  cond_524905_HMOA_open,
  wall_524989_DAMR_open,
  wall_525015_SOES_open,
  wall_525041_LCOH_open,
  wall_525097_RBWO_open,
  cond_525153_HXDS_open,
  wall_525179_SRCE_open,
  wall_525283_DGRV_open,
  wall_525388_FRIC_open,
  wall_525568_BOCS_open,
  wall_525594_SFRO_open,
  wall_525702_SROI_open,
  wall_525728_FCOS_open,
  cond_525754_SCAC_open,
  wall_525807_PMGH_open,
  wall_525833_TSTC_open,
  wall_525858_QCUF_open,
  wall_525884_CDFO_open,
  wall_525937_DSDM_open,
  wall_526071_KDSO_open,
  wall_526096_PRFB_open,
  wall_526122_MJWA_open,
  wall_526234_VKSD_open,
  wall_526287_ACAL_open,
  wall_526336_WRGE_open,
  wall_526362_DDUK_open,
  wall_526387_FVAC_open,
  wall_526414_ORAC_open,
  wall_526437_CFPK_open,
  wall_526460_RACC_open,
  wall_526589_NUON_open,
  wall_526667_HPAQ_open,
  wall_526692_TSJB_open,
  wall_526717_EALW_open,
  wall_526741_TWJS_open,
  wall_526765_PTHD_open,
  cond_526788_SLL3_open,
  cond_526818_LDRR_open,
  wall_526844_RPRG_open,
  wall_526896_HLPN_open,
  wall_526922_RIMP_open,
  wall_526948_LNUM_open,
  cond_527022_OOTR_open,
  wall_527078_LJRK_open,
  wall_527131_PQCS_open,
  cond_527320_DRPN_open,
  wall_527346_SRBC_open,
  wall_527426_QMSX_open,
  wall_527483_DFNM_open,
  wall_527508_TEPS_open,
  wall_527537_OVCM_open,
  wall_527563_CSBP_open,
  wall_527590_MPON_open,
  cond_527615_SLL4_open,
  wall_527804_TSQA_open,
  wall_527827_RXCO_open,
  wall_527854_WFSC_open,
  wall_527882_PPHF_open,
  wall_528018_SGOP_open,
  wall_528045_PMAF_open,
  wall_528125_ADCL_open,
  wall_528180_POVC_open,
  wall_528205_EWOB_open,
  wall_528231_DSSM_open,
  wall_528258_GSKC_open,
  wall_528316_RWON_open,
  wall_528370_XOSE_open,
  cond_528421_TISK_open,
  wall_528448_OFAU_open,
  cond_528475_DURA_open,
  wall_528502_ESOS_open,
  wall_528529_ODFX_open,
  wall_528583_SRLJ_open,
  wall_528610_OLPS_open,
  wall_528637_OSRE_open,
  wall_528664_EOPR_open,
  cond_528690_VOFW_open,
  wall_528718_PRWF_open,
  wall_528745_LLOR_open,
  cond_528772_QEHL_open,
  wall_528799_HPTW_open,
  cond_528827_XSSF_open,
  cond_528854_FFNW_open,
  cond_528882_LTGO_open,
  wall_528934_CGFP_open,
  cond_528961_LHAM_open,
  wall_528988_TPCK_open,
  cond_529015_YOGC_open,
  cond_529072_HGHL_open,
  cond_529099_LSRC_open,
  wall_529127_MIDS_open,
  wall_529186_ROTD_open,
  cond_529240_WPLN_open,
  wall_529292_RCHS_open,
  wall_529319_CGB2_open,
  cond_529377_SLL5_open,
  wall_529407_MUSP_open,
  wall_529434_ACRP_open,
  wall_529460_PSCN_open,
  wall_529488_ZDPH_open,
  cond_529516_PJFC_open,
  wall_529542_ENLG_open,
  wall_529569_WBLM_open,
  wall_529596_LOTS_open,
  cond_529618_NSKC_open,
  wall_529645_PINT_open,
  wall_529671_GSKP_open,
  wall_529699_LTPW_open,
  wall_529726_TOPS_open,
  wall_529753_RCSK_open,
  wall_529777_CPH2_open,
  wall_529830_HWRT_open,
  wall_529856_SSPW_open,
  wall_529911_IRCC_open,
  wall_529937_MUPH_open,
  wall_529964_ASQW_open,
  wall_529990_NTPE_open,
  wall_530040_CKER_open,
  cond_530067_HRCP_open,
  wall_530092_KSAT_open,
  wall_530120_NURL_open,
  wall_530144_HGO2_open,
  wall_530171_UO2N_open,
  wall_530222_BMEQ_open,
  cond_530247_TOP2_open,
  wall_530300_SRAO_open,
  wall_530326_WKST_open,
  wall_530352_DCHB_open,
  wall_530378_RCQ2_open,
  wall_530402_TNMG_open,
  cond_530426_UB4H_open,
  wall_530450_KSKC_open,
  cond_530477_LWE3_open,
  wall_530558_SWVK_open,
  cond_530584_ENT2_open,
  cond_530610_PCHS_open,
  wall_530636_CWKE_open,
  wall_530661_NDSC_open,
  wall_530687_KCL3_open,
  wall_530714_SSP2_open,
  wall_530742_ERMF_open,
  wall_530768_SA2T_open,
  wall_530796_ISMS_open,
  wall_530818_MXPH_open,
  wall_530870_SCG3_open,
  cond_530896_UHLF_open,
  wall_530919_WK2C_open,
  wall_530941_FPWP_open,
  wall_530968_OT2E_open,
  cond_531081_GPOE_open,
  cond_531107_FDIS_open,
  wall_531133_DIMC_open,
  wall_531159_GPRR_open,
  wall_531184_NUDK_open,
  wall_531210_CRCE_open,
  wall_531236_BLSA_open,
  wall_531263_SDEB_open,
  wall_531285_USMR_open,
  wall_531312_HADL_open,
  wall_531338_OLLK_open,
  wall_531364_HADM_open,
  wall_531448_OSAD_open,
  wall_531471_KCL4_open,
  wall_531497_PRO2_open,
  cond_531550_SSDI_open,
  wall_531576_SCTJ_open,
  wall_531602_EXMH_open,
  wall_531628_GENJ_open,
  cond_531654_DPIN_open,
  cond_531680_PHTR_open,
  cond_531706_MUG2_open,
  wall_531812_MDRC_open,
  wall_531838_DTR2_open,
  wall_531864_PTBL_open,
  wall_531890_KPLC_open,
  wall_531916_UNKN_open,
  cond_531968_AMBL_open,
  wall_531995_DPTM_open,
  cond_532023_DST2_open,
  cond_532049_DIM1_open,
  cond_532075_LGDS_open,
  wall_532101_CCSK_open,
  wall_532127_HBPK_open,
  cond_532153_ENBG_open,
  wall_532206_ISCD_open,
  cond_532262_STZC_open,
  wall_532315_MDE2_open,
  wall_532341_CBEO_open,
  wall_532368_OPCB_open,
  wall_532421_SLT3_open,
  wall_532447_ATSV_open,
  wall_532473_GNC2_open,
  cond_532499_HPK2_open,
  wall_532524_ATHG_open,
  wall_532550_DRDS_open,
  cond_532576_LDR5_open,
  wall_532655_DGC4_open,
  cond_532679_NOSG_open,
  cond_532705_CUTK_open,
  cond_532731_DKMT_open,
  wall_532757_DRLR_open,
  wall_532783_DRPF_open,
  wall_532809_OPC2_open,
  wall_532835_RGSC_open,
  cond_532861_GRP3_open,
  wall_532917_SPMC_open,
  cond_532943_RTOP_open,
  wall_532970_RNG2_open,
  cond_532997_RYTV_open,
  cond_533023_TD2S_open,
  wall_533049_OFAC_open,
  wall_533075_RCH2_open,
  wall_533098_CLRY_open,
  cond_533123_QUIN_open,
  cond_533150_DRM2_open,
  wall_533177_FSO2_open,
  cond_533228_HYSK_open,
  wall_533254_TRKS_open,
  wall_533280_N2PI_open,
  wall_533307_GRMT_open,
  cond_533333_SGO2_open,
  wall_533392_RDLW_open,
  wall_533418_TMSC_open,
  cond_533444_OSA3_open,
  cond_533468_DNGH_open,
  wall_533494_MPCF_open,
  cond_533520_CLS2_open,
  cond_533546_BRCH_open,
  wall_533573_RSP2_open,
  wall_533599_BETD_open,
  wall_533626_HLRF_open,
  cond_533706_LFHR_open,
  wall_533733_BOSW_open,
  wall_533760_ALPD_open,
  cond_533787_IMBH_open,
  cond_533815_LMBN_open,
  wall_533842_HFSN_open,
  cond_533868_MXAS_open,
  cond_533893_HLGR_open,
  cond_533919_TST4_open,
  cond_533971_WMXR_open,
  wall_533997_VBS2_open,
  wall_534023_NOET_open,
  wall_534049_LCC2_open,
  wall_534075_SIDX_open,
  wall_534101_BMRH_open,
  cond_534128_LL6S_open,
  wall_534158_KIDN_open,
  wall_534184_EHWF_open,
  wall_534210_FERL_open,
  wall_534237_SJWM_open,
  cond_534263_TSC2_open,
  cond_534290_LOWD_open,
  wall_534317_RSWL_open,
  cond_534343_CRDU_open,
  cond_534369_ASYB_open,
  wall_534396_BCNC_open,
  cond_534449_SPM2_open,
  wall_534475_RSLW_open,
  cond_534501_TRDR_open,
  wall_534528_WSOR_open,
  cond_534608_ESOF_open,
  wall_534634_CPWB_open,
  wall_534661_PLRS_open,
  wall_534714_NSCU_open,
  wall_534740_SJFE_open,
  wall_534793_LASC_open,
  wall_534819_ELLB_open,
  wall_534900_PGNC_open,
  wall_534928_SMRP_open,
  wall_534954_DCPL_open,
  wall_534981_SFTP_open,
  cond_535008_DEFM_open,
  cond_535091_HGDN_open,
  wall_535118_EMWP_open,
  cond_535144_L6RS_open,
  cond_535202_HRNC_open,
  wall_535254_PRCA_open,
  wall_535281_RCLD_open,
  wall_535309_BMCP_open,
  wall_535335_EBRC_open,
  cond_535439_OLDC_open,
  wall_535466_DCRA_open,
  cond_535494_OLSL_open,
  cond_535521_PRCI_open,
  cond_535548_LPSC_open,
  cond_535706_DRP6_open,
  wall_535732_RDWP_open,
  wall_535761_MNTH_open,
  wall_535787_ALCP_open,
  wall_535866_RSAC_open,
  cond_535895_ASJN_open,
  wall_535921_ABRC_open,
  cond_535947_DRP7_open,
  wall_536000_NDEB_open,
  wall_536028_RCSY_open,
  wall_536052_PRWG_open,
  wall_536108_SRBT_open,
  wall_536136_FQPR_open,
  wall_536188_HGAU_open,
  wall_536241_MXSO_open,
  wall_536293_RBAC_open,
  wall_536321_TDRN_open,
  wall_536609_RDOW_open,
  wall_536664_SRDA_open,
  wall_536690_HWCW_open,
  readCount_D3_BODY_READ_ALONE_open,
  readCount_D6_PASSAGE_NEVER_COUNT_open
]

def kindCount (k : OpenKind) : Nat := (census.filter fun d => decide (d.kind = k)).length

def statusCount (s : CensusStatus) : Nat := (census.filter fun d => decide (d.status = s)).length

theorem census_counts : census.length = 476 /\ kindCount .wall = 341 /\ kindCount .conditional = 133 /\ kindCount .reading = 2 /\ statusCount .open = 74 /\ statusCount .reposed = 48 /\ statusCount .superseded = 128 /\ statusCount .beyond = 82 /\ statusCount .none = 144 := by decide

end ChainTheory.Open
