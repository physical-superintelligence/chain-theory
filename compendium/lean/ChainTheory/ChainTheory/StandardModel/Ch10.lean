import AlphaDerivation
import ChainTheory.ConditionUnions

set_option maxRecDepth 100000

namespace ChainTheory.StandardModel.Ch10

opaque row_504521_RSBD : Prop

opaque row_510009_TCCD : Prop

opaque row_510060_GGRL : Prop

opaque row_512009_URPK : Prop

opaque row_514784_LSRS : Prop

opaque row_514982_RNTC : Prop

opaque row_515843_ARS2 : Prop

opaque row_515998_CRQU : Prop

theorem row_516595_MTBL :
    (type_of% AlphaDerivation.Statements.Theorem1_one_unit) /\
    (type_of% AlphaDerivation.Statements.Theorem1_dressing_equals_bare) /\
    (type_of% AlphaDerivation.Statements.Theorem4_value) :=
  And.intro AlphaDerivation.Statements.Theorem1_one_unit (And.intro AlphaDerivation.Statements.Theorem1_dressing_equals_bare (AlphaDerivation.Statements.Theorem4_value))

theorem row_516959_TPFX :
    (type_of% AlphaDerivation.Statements.Census_blocks_and_roster) /\
    (type_of% AlphaDerivation.Statements.Census_record_census) /\
    (type_of% AlphaDerivation.Statements.Census_weights_square) :=
  And.intro AlphaDerivation.Statements.Census_blocks_and_roster (And.intro AlphaDerivation.Statements.Census_record_census (AlphaDerivation.Statements.Census_weights_square))

opaque row_517042_CPLG : Prop

opaque row_517539_LKLM : Prop

theorem row_518160_AGUQ :
    (type_of% AlphaDerivation.Statements.IdAlg_closure) /\
    (type_of% AlphaDerivation.Statements.IdAlg_centre_one_dimensional) /\
    (type_of% AlphaDerivation.Statements.IdAlg_tu_central) /\
    (type_of% AlphaDerivation.Statements.IdAlg_forms) /\
    (type_of% AlphaDerivation.Statements.IdAlg_centre_acts) /\
    (type_of% AlphaDerivation.Statements.LemmaB_readable_and_acting) /\
    (type_of% AlphaDerivation.Statements.LemmaB_centre_generators) /\
    (type_of% AlphaDerivation.Statements.LemmaB_spin_content) /\
    (type_of% AlphaDerivation.Statements.LemmaB_massless_faces) /\
    (type_of% AlphaDerivation.Statements.LemmaB_unique_object) /\
    (type_of% AlphaDerivation.Statements.LemmaB_objectOfRecord_electromagneticLike) /\
    (type_of% AlphaDerivation.Statements.Theorem5_correspondence_at_structure) :=
  And.intro AlphaDerivation.Statements.IdAlg_closure (And.intro AlphaDerivation.Statements.IdAlg_centre_one_dimensional (And.intro AlphaDerivation.Statements.IdAlg_tu_central (And.intro AlphaDerivation.Statements.IdAlg_forms (And.intro AlphaDerivation.Statements.IdAlg_centre_acts (And.intro AlphaDerivation.Statements.LemmaB_readable_and_acting (And.intro AlphaDerivation.Statements.LemmaB_centre_generators (And.intro AlphaDerivation.Statements.LemmaB_spin_content (And.intro AlphaDerivation.Statements.LemmaB_massless_faces (And.intro AlphaDerivation.Statements.LemmaB_unique_object (And.intro AlphaDerivation.Statements.LemmaB_objectOfRecord_electromagneticLike (AlphaDerivation.Statements.Theorem5_correspondence_at_structure)))))))))))

opaque row_518778_GPTT : Prop

opaque row_519138_HGCH : Prop

opaque row_520041_CRLK : Prop

opaque row_520067_HPST : Prop

theorem row_520119_GWDC :
    (type_of% AlphaDerivation.Statements.Census_weights_from_construction) :=
  AlphaDerivation.Statements.Census_weights_from_construction

opaque row_520327_MHCB : Prop

opaque row_520509_CCGR : Prop

opaque row_520637_CBRE : Prop

opaque row_520899_PDBF : Prop

opaque row_521001_CRHL : Prop

opaque row_523854_CFTS : Prop

theorem row_523989_LNAL :
    (type_of% AlphaDerivation.Statements.Theorem4_value) /\
    (type_of% AlphaDerivation.Statements.ClosureSign_closure_sign) /\
    (type_of% AlphaDerivation.Statements.OrbitReading_orbit_reading) /\
    (type_of% AlphaDerivation.Statements.Theorem5_readings_washed) /\
    (type_of% AlphaDerivation.Statements.LemmaB_office_at_the_one_link) :=
  And.intro AlphaDerivation.Statements.Theorem4_value (And.intro AlphaDerivation.Statements.ClosureSign_closure_sign (And.intro AlphaDerivation.Statements.OrbitReading_orbit_reading (And.intro AlphaDerivation.Statements.Theorem5_readings_washed (AlphaDerivation.Statements.LemmaB_office_at_the_one_link))))

theorem row_524140_OFON :
    (type_of% AlphaDerivation.Statements.LemmaB_office_at_the_one_link) :=
  AlphaDerivation.Statements.LemmaB_office_at_the_one_link

theorem row_524322_LDRQ :
    (type_of% AlphaDerivation.Statements.Theorem4_value) /\
    (type_of% AlphaDerivation.Statements.ClosureSign_closure_sign) /\
    (type_of% AlphaDerivation.Statements.OrbitReading_orbit_reading) /\
    (type_of% AlphaDerivation.Statements.Theorem5_readings_washed) /\
    (type_of% AlphaDerivation.Statements.LemmaB_office_at_the_one_link) :=
  And.intro AlphaDerivation.Statements.Theorem4_value (And.intro AlphaDerivation.Statements.ClosureSign_closure_sign (And.intro AlphaDerivation.Statements.OrbitReading_orbit_reading (And.intro AlphaDerivation.Statements.Theorem5_readings_washed (AlphaDerivation.Statements.LemmaB_office_at_the_one_link))))

opaque wall_523694_EQRC : Prop

end ChainTheory.StandardModel.Ch10

namespace ChainTheory.StandardModel.Ch10

opaque cond_529240_WPLN : Prop

opaque claim_529240_WPLN : Prop

abbrev row_529240_WPLN : Prop := cond_529240_WPLN -> claim_529240_WPLN

theorem row_529240_WPLN_union_census : ChainTheory.ConditionUnions.union_529240_WPLN.members.length = 2 /\ ChainTheory.ConditionUnions.union_529240_WPLN.exceedsLetter = false := by decide

end ChainTheory.StandardModel.Ch10
