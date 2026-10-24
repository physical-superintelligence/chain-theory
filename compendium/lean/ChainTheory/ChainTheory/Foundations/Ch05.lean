import AlphaDerivation
import ChainTheory.Data.D524561_HOTW
import ChainTheory.Data.D525257_HTOR
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.Data.D526972_NRGE
import ChainTheory.Data.D527909_NVCI
import ChainTheory.Data.D528073_PQCD
import ChainTheory.Data.D530016_GSTB
import ChainTheory.Data.D530426_UB4H
import ChainTheory.ConditionUnions

set_option maxRecDepth 100000

namespace ChainTheory.Foundations.Ch05

opaque row_515919_SQTN : Prop

opaque row_516262_JCM2 : Prop

opaque row_516343_UWC2 : Prop

opaque row_516674_EMBR : Prop

opaque row_516775_CFTC : Prop

opaque row_517173_SPMV : Prop

opaque row_517200_CEND : Prop

theorem row_518830_MDFN :
    (type_of% AlphaDerivation.Statements.LemmaB_zero_transfer) :=
  AlphaDerivation.Statements.LemmaB_zero_transfer

opaque row_518983_PAIE : Prop

opaque row_519189_EFPC : Prop

opaque row_519396_PFRL : Prop

theorem row_521443_WDCL :
    (type_of% AlphaDerivation.Statements.Theorem5_sub_add_sub) /\
    (type_of% AlphaDerivation.Statements.Theorem5_telescoping) /\
    (type_of% AlphaDerivation.Statements.Theorem5_one_link_iff) /\
    (type_of% AlphaDerivation.Statements.Theorem5_line_of_record) /\
    (type_of% AlphaDerivation.Statements.Theorem5_ward_identity) :=
  And.intro AlphaDerivation.Statements.Theorem5_sub_add_sub (And.intro AlphaDerivation.Statements.Theorem5_telescoping (And.intro AlphaDerivation.Statements.Theorem5_one_link_iff (And.intro AlphaDerivation.Statements.Theorem5_line_of_record (AlphaDerivation.Statements.Theorem5_ward_identity))))

opaque row_521860_CAAC : Prop

opaque row_521989_DCRS : Prop

theorem row_524064_WSWC :
    (type_of% AlphaDerivation.Statements.Theorem5_unit_washed) /\
    (type_of% AlphaDerivation.Statements.Theorem5_readings_washed) :=
  And.intro AlphaDerivation.Statements.Theorem5_unit_washed (AlphaDerivation.Statements.Theorem5_readings_washed)

opaque wall_522294_EQDA : Prop

opaque wall_522787_EQDC : Prop

opaque wall_522970_EQSK : Prop

end ChainTheory.Foundations.Ch05

namespace ChainTheory.Foundations.Ch05

opaque wall_524483_UQED : Prop

def wall_524483_UQED_open : ChainTheory.OpenResult :=
  { address := 524483, stem := "UQED", decidingClass := "-", firstParting := "-", chapter := "ch05", statement := wall_524483_UQED }

theorem row_524561_HOTW : type_of% ChainTheory.Data.D524561_HOTW.checks :=
  ChainTheory.Data.D524561_HOTW.checks

theorem row_525257_HTOR : type_of% ChainTheory.Data.D525257_HTOR.checks :=
  ChainTheory.Data.D525257_HTOR.checks

def wall_525702_EQIS_open : ChainTheory.OpenResult :=
  { address := 525702, stem := "SROI", decidingClass := "EQIS", firstParting := "parting", chapter := "ch05", statement := ChainTheory.Discussion.Landed93.wall_525702_EQIS }

end ChainTheory.Foundations.Ch05

namespace ChainTheory.Foundations.Ch05

opaque wall_526948_LNUM : Prop

def wall_526948_LNUM_open : ChainTheory.OpenResult :=
  { address := 526948, stem := "LNUM", decidingClass := "-", firstParting := "-", chapter := "ch05", statement := wall_526948_LNUM }

theorem row_526972_NRGE : type_of% ChainTheory.Data.D526972_NRGE.checks :=
  ChainTheory.Data.D526972_NRGE.checks

opaque wall_527131_PQCS : Prop

def wall_527131_PQCS_open : ChainTheory.OpenResult :=
  { address := 527131, stem := "PQCS", decidingClass := "-", firstParting := "-", chapter := "ch05", statement := wall_527131_PQCS }

theorem row_527909_NVCI : type_of% ChainTheory.Data.D527909_NVCI.checks :=
  ChainTheory.Data.D527909_NVCI.checks

theorem row_528073_PQCD : type_of% ChainTheory.Data.D528073_PQCD.checks :=
  ChainTheory.Data.D528073_PQCD.checks

end ChainTheory.Foundations.Ch05

namespace ChainTheory.Foundations.Ch05

opaque wall_529186_EQRT : Prop

def wall_529186_EQRT_open : ChainTheory.OpenResult :=
  { address := 529186, stem := "ROTD", decidingClass := "EQRT", firstParting := "-", chapter := "ch05", statement := wall_529186_EQRT }

theorem row_530016_GSTB : type_of% ChainTheory.Data.D530016_GSTB.checks :=
  ChainTheory.Data.D530016_GSTB.checks

opaque wall_530040_EQDK : Prop

def wall_530040_EQDK_open : ChainTheory.OpenResult :=
  { address := 530040, stem := "CKER", decidingClass := "EQDK", firstParting := "-", chapter := "ch05", statement := wall_530040_EQDK }

opaque cond_530426_UB4H : Prop

theorem row_530426_UB4H : cond_530426_UB4H -> type_of% ChainTheory.Data.D530426_UB4H.checks :=
  fun _ => ChainTheory.Data.D530426_UB4H.checks

theorem row_530426_UB4H_union_census : ChainTheory.ConditionUnions.union_530426_UB4H.members.length = 3 /\ ChainTheory.ConditionUnions.union_530426_UB4H.exceedsLetter = true := by decide

opaque wall_530450_EQDL : Prop

def wall_530450_EQDL_open : ChainTheory.OpenResult :=
  { address := 530450, stem := "KSKC", decidingClass := "EQDL", firstParting := "-", chapter := "ch05", statement := wall_530450_EQDL }

opaque wall_530636_EQDE : Prop

def wall_530636_EQDE_open : ChainTheory.OpenResult :=
  { address := 530636, stem := "CWKE", decidingClass := "EQDE", firstParting := "face-b-named", chapter := "ch05", statement := wall_530636_EQDE }

opaque wall_530687_EQKE : Prop

def wall_530687_EQKE_open : ChainTheory.OpenResult :=
  { address := 530687, stem := "KCL3", decidingClass := "EQKE", firstParting := "-", chapter := "ch05", statement := wall_530687_EQKE }

opaque wall_530796_EQIT : Prop

def wall_530796_EQIT_open : ChainTheory.OpenResult :=
  { address := 530796, stem := "ISMS", decidingClass := "EQIT", firstParting := "face-b-named", chapter := "ch05", statement := wall_530796_EQIT }

opaque wall_530919_EQDF : Prop

def wall_530919_EQDF_open : ChainTheory.OpenResult :=
  { address := 530919, stem := "WK2C", decidingClass := "EQDF", firstParting := "face-b-named", chapter := "ch05", statement := wall_530919_EQDF }

opaque wall_531263_EQSJ : Prop

def wall_531263_EQSJ_open : ChainTheory.OpenResult :=
  { address := 531263, stem := "SDEB", decidingClass := "EQSJ", firstParting := "face-b-named", chapter := "ch05", statement := wall_531263_EQSJ }

opaque wall_531471_EQKF : Prop

def wall_531471_EQKF_open : ChainTheory.OpenResult :=
  { address := 531471, stem := "KCL4", decidingClass := "EQKF", firstParting := "-", chapter := "ch05", statement := wall_531471_EQKF }

opaque wall_531890_EQKP : Prop

def wall_531890_EQKP_open : ChainTheory.OpenResult :=
  { address := 531890, stem := "KPLC", decidingClass := "EQKP", firstParting := "-", chapter := "ch05", statement := wall_531890_EQKP }

opaque wall_532101_EQTL : Prop

def wall_532101_EQTL_open : ChainTheory.OpenResult :=
  { address := 532101, stem := "CCSK", decidingClass := "EQTL", firstParting := "-", chapter := "ch05", statement := wall_532101_EQTL }

opaque wall_532206_EQDZ : Prop

def wall_532206_EQDZ_open : ChainTheory.OpenResult :=
  { address := 532206, stem := "ISCD", decidingClass := "EQDZ", firstParting := "-", chapter := "ch05", statement := wall_532206_EQDZ }

end ChainTheory.Foundations.Ch05
