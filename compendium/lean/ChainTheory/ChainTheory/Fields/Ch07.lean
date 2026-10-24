import AlphaDerivation
import ChainTheory.Data.D525646_RTSE
import ChainTheory.ConditionUnions
import ChainTheory.Data.D531081_GPOE
import ChainTheory.OpenResult

set_option maxRecDepth 100000

namespace ChainTheory.Fields.Ch07

opaque row_522422_FRRU : Prop

opaque row_523746_CCAS : Prop

theorem row_523963_CSKC :
    (type_of% AlphaDerivation.Statements.ClosureSign_weyl_relation) /\
    (type_of% AlphaDerivation.Statements.ClosureSign_two_copy_realisation) /\
    (type_of% AlphaDerivation.Statements.ClosureSign_transport) /\
    (type_of% AlphaDerivation.Statements.ClosureSign_closure_sign) :=
  And.intro AlphaDerivation.Statements.ClosureSign_weyl_relation (And.intro AlphaDerivation.Statements.ClosureSign_two_copy_realisation (And.intro AlphaDerivation.Statements.ClosureSign_transport (AlphaDerivation.Statements.ClosureSign_closure_sign)))

opaque wall_521682_FIXE : Prop

opaque wall_521784_EQFL : Prop

opaque wall_521809_EQFR : Prop

opaque wall_522140_EQKB : Prop

opaque wall_522397_WASN : Prop

opaque wall_523229_EQSE : Prop

opaque wall_523880_EQCU : Prop

end ChainTheory.Fields.Ch07

namespace ChainTheory.Fields.Ch07

theorem row_525646_RTSE : type_of% ChainTheory.Data.D525646_RTSE.checks :=
  ChainTheory.Data.D525646_RTSE.checks

end ChainTheory.Fields.Ch07

namespace ChainTheory.Fields.Ch07

opaque wall_529127_EQSV : Prop

def wall_529127_EQSV_open : ChainTheory.OpenResult :=
  { address := 529127, stem := "MIDS", decidingClass := "EQSV", firstParting := "parting", chapter := "ch07", statement := wall_529127_EQSV }

opaque wall_529596_EQSY : Prop

def wall_529596_EQSY_open : ChainTheory.OpenResult :=
  { address := 529596, stem := "LOTS", decidingClass := "EQSY", firstParting := "no-reading-equal", chapter := "ch07", statement := wall_529596_EQSY }

opaque wall_530300_EQSA : Prop

def wall_530300_EQSA_open : ChainTheory.OpenResult :=
  { address := 530300, stem := "SRAO", decidingClass := "EQSA", firstParting := "parting", chapter := "ch07", statement := wall_530300_EQSA }

opaque cond_531081_GPOE : Prop

theorem row_531081_GPOE : cond_531081_GPOE -> type_of% ChainTheory.Data.D531081_GPOE.checks :=
  fun _ => ChainTheory.Data.D531081_GPOE.checks

theorem row_531081_GPOE_union_census : ChainTheory.ConditionUnions.union_531081_GPOE.members.length = 4 /\ ChainTheory.ConditionUnions.union_531081_GPOE.exceedsLetter = true := by decide

opaque wall_531448_EQOX : Prop

def wall_531448_EQOX_open : ChainTheory.OpenResult :=
  { address := 531448, stem := "OSAD", decidingClass := "EQOX", firstParting := "face-b-named", chapter := "ch07", statement := wall_531448_EQOX }

opaque wall_532421_EQTV : Prop

def wall_532421_EQTV_open : ChainTheory.OpenResult :=
  { address := 532421, stem := "SLT3", decidingClass := "EQTV", firstParting := "parting-at-the-invariant-part", chapter := "ch07", statement := wall_532421_EQTV }

end ChainTheory.Fields.Ch07
