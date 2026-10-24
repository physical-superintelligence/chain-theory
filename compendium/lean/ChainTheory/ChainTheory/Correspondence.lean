import AlphaDerivation

namespace ChainTheory.Correspondence

structure Correspondence (Obj : Type) where
  object : Obj
  properties : Prop
  properties_proved : properties
  naming : Prop

def electromagnetic : Correspondence AlphaDerivation.LemmaB.Obj :=
  { object := AlphaDerivation.LemmaB.objectOfRecord,
    properties := AlphaDerivation.LemmaB.ElectromagneticLike AlphaDerivation.LemmaB.objectOfRecord,
    properties_proved := AlphaDerivation.Statements.LemmaB_objectOfRecord_electromagneticLike,
    naming := AlphaDerivation.Theorem5.SoftPhotonTheorem }

theorem electromagnetic_naming : electromagnetic.naming = AlphaDerivation.Theorem5.SoftPhotonTheorem := rfl

end ChainTheory.Correspondence

