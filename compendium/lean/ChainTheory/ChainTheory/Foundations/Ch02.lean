import AlphaDerivation
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.Data.D527216_QMCR
import ChainTheory.ConditionUnions
import ChainTheory.Data.D528475_DURA
import ChainTheory.Data.D528854_FFNW
import ChainTheory.Data.D532679_NOSG

set_option maxRecDepth 100000

namespace ChainTheory.Foundations.Ch02

opaque Proposition_1 : Prop

opaque Proposition_2 : Prop

opaque Proposition_3 : Prop

opaque row_487626 : Prop

opaque row_494681_BRN2 : Prop

opaque row_504271_MSEX : Prop

opaque row_510035_TKDP : Prop

opaque row_510284_FGFC : Prop

opaque row_510309_WINV : Prop

opaque row_510433_CPLM : Prop

opaque row_510483_RMPT : Prop

opaque row_510632_OLPT : Prop

opaque row_515504_JSAS : Prop

opaque row_515868_OSPT : Prop

opaque row_516104_PFD2 : Prop

opaque row_519267_DFAX : Prop

opaque row_519370_REWR : Prop

opaque row_519471_DICL : Prop

opaque row_519599_RTFP : Prop

opaque row_519625_RAMD : Prop

theorem row_520172_PKTF :
    (type_of% AlphaDerivation.Statements.Theorem0_fixed_vectors_one_line) /\
    (type_of% AlphaDerivation.Statements.Theorem0_pair_ket_fixed) /\
    (type_of% AlphaDerivation.Statements.Theorem0_pair_ket_unique_pure_fixed_point) /\
    (type_of% AlphaDerivation.Statements.Theorem0_pure_fixed_unique) /\
    (type_of% AlphaDerivation.Statements.Theorem0_pair_ket_extreme) /\
    (type_of% AlphaDerivation.Statements.Theorem0_minimal_projections_coordinates) :=
  And.intro AlphaDerivation.Statements.Theorem0_fixed_vectors_one_line (And.intro AlphaDerivation.Statements.Theorem0_pair_ket_fixed (And.intro AlphaDerivation.Statements.Theorem0_pair_ket_unique_pure_fixed_point (And.intro AlphaDerivation.Statements.Theorem0_pure_fixed_unique (And.intro AlphaDerivation.Statements.Theorem0_pair_ket_extreme (AlphaDerivation.Statements.Theorem0_minimal_projections_coordinates)))))

opaque row_520198_BSLB : Prop

opaque row_520611_ROSX : Prop

opaque row_520689_UFFP : Prop

opaque row_520873_EXCG : Prop

opaque row_521130_RAEO : Prop

opaque row_521259_GIKC : Prop

opaque row_521310_INTW : Prop

opaque row_521391_UNWR : Prop

opaque row_521417_SSAO : Prop

opaque row_522474_GQDS : Prop

opaque wall_521707_IFFD : Prop

end ChainTheory.Foundations.Ch02

namespace ChainTheory.Foundations.Ch02

def wall_525594_EQOT_open : ChainTheory.OpenResult :=
  { address := 525594, stem := "SFRO", decidingClass := "EQOT", firstParting := "parted", chapter := "ch02", statement := ChainTheory.Discussion.Landed93.wall_525594_EQOT }

end ChainTheory.Foundations.Ch02

namespace ChainTheory.Foundations.Ch02

theorem row_527216_QMCR : type_of% ChainTheory.Data.D527216_QMCR.checks :=
  ChainTheory.Data.D527216_QMCR.checks

opaque wall_527426_EQSX : Prop

def wall_527426_EQSX_open : ChainTheory.OpenResult :=
  { address := 527426, stem := "QMSX", decidingClass := "EQSX", firstParting := "-", chapter := "ch02", statement := wall_527426_EQSX }

opaque wall_527854_EQWF : Prop

def wall_527854_EQWF_open : ChainTheory.OpenResult :=
  { address := 527854, stem := "WFSC", decidingClass := "EQWF", firstParting := "-", chapter := "ch02", statement := wall_527854_EQWF }

opaque wall_528125_EQAD : Prop

def wall_528125_EQAD_open : ChainTheory.OpenResult :=
  { address := 528125, stem := "ADCL", decidingClass := "EQAD", firstParting := "-", chapter := "ch02", statement := wall_528125_EQAD }

end ChainTheory.Foundations.Ch02

namespace ChainTheory.Foundations.Ch02

opaque cond_528475_DURA : Prop

theorem row_528475_DURA : cond_528475_DURA -> type_of% ChainTheory.Data.D528475_DURA.checks :=
  fun _ => ChainTheory.Data.D528475_DURA.checks

theorem row_528475_DURA_union_census : ChainTheory.ConditionUnions.union_528475_DURA.members.length = 3 /\ ChainTheory.ConditionUnions.union_528475_DURA.exceedsLetter = false := by decide

opaque cond_528854_FFNW : Prop

theorem row_528854_FFNW : cond_528854_FFNW -> type_of% ChainTheory.Data.D528854_FFNW.checks :=
  fun _ => ChainTheory.Data.D528854_FFNW.checks

theorem row_528854_FFNW_union_census : ChainTheory.ConditionUnions.union_528854_FFNW.members.length = 4 /\ ChainTheory.ConditionUnions.union_528854_FFNW.exceedsLetter = true := by decide

opaque wall_530222_EQBM : Prop

def wall_530222_EQBM_open : ChainTheory.OpenResult :=
  { address := 530222, stem := "BMEQ", decidingClass := "EQBM", firstParting := "face-b", chapter := "ch02", statement := wall_530222_EQBM }

opaque cond_532679_NOSG : Prop

theorem row_532679_NOSG : cond_532679_NOSG -> type_of% ChainTheory.Data.D532679_NOSG.checks :=
  fun _ => ChainTheory.Data.D532679_NOSG.checks

theorem row_532679_NOSG_union_census : ChainTheory.ConditionUnions.union_532679_NOSG.members.length = 0 /\ ChainTheory.ConditionUnions.union_532679_NOSG.exceedsLetter = false := by decide

end ChainTheory.Foundations.Ch02
