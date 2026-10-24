import AlphaDerivation.Proofs.Theorem5
import AlphaDerivation.Proofs.MasslessOpenLink
import AlphaDerivation.Proofs.AdjointRotation
import AlphaDerivation.Proofs.TransverseStates
import AlphaDerivation.Proofs.MomentumTransfer

namespace AlphaDerivation
namespace Correspondence

opaque DirectionsOfSharedSupport : Prop

opaque FixedDirectionIsMomentum : Prop

opaque FarEndFixedDirectionByDirection : Prop

structure CorrespondenceOfRecord (o : LemmaB.Obj) : Prop where
  electromagneticLike : LemmaB.ElectromagneticLike o
  absentMassTerm : MasslessOpenLink.AbsentMassTermStatement
  adjointRotation : AdjointRotation.AdjointRotationStatement
  twoTransverseStates : TransverseStates.TwoTransverseStatesStatement
  momentumTransferZero : MomentumTransfer.MomentumTransferZeroStatement
  uniqueObject : LemmaB.readableObjects.filter LemmaB.allFour = [o]

def premiseUnion : List String :=
  ["DirectionsOfSharedSupport", "FixedDirectionIsMomentum", "FarEndFixedDirectionByDirection",
   "ReadCapWoronowiczStormer", "SoftPhotonTheorem", "OnShellDefinition", "Decoupling", "OnShellIdentification"]

theorem rotation_group_under_first_premise (_p1 : DirectionsOfSharedSupport) : AdjointRotation.AdjointRotationStatement :=
  AdjointRotation.adjoint_rotation

theorem transverse_states_under_premises (_p2 : FixedDirectionIsMomentum) (_p3 : FarEndFixedDirectionByDirection) : TransverseStates.TwoTransverseStatesStatement :=
  TransverseStates.two_transverse_states

theorem correspondence (_p1 : DirectionsOfSharedSupport) (_p2 : FixedDirectionIsMomentum) (_p3 : FarEndFixedDirectionByDirection)
    (_cap : Theorem5.ReadCapWoronowiczStormer) (_soft : Theorem5.SoftPhotonTheorem) (_onshell : Theorem5.OnShellDefinition)
    (_dec : Theorem5.Decoupling) (_ident : Theorem5.OnShellIdentification) :
    CorrespondenceOfRecord LemmaB.objectOfRecord ∧
    Theorem4.onShellCoupling LemmaB.objectOfRecord = Theorem4.closedFormOfRecord ∧ premiseUnion.length = 8 :=
  ⟨⟨LemmaB.objectOfRecord_electromagneticLike, MasslessOpenLink.absent_mass_term, AdjointRotation.adjoint_rotation,
    TransverseStates.two_transverse_states, MomentumTransfer.momentum_transfer_zero, LemmaB.unique_object.2.2.1⟩,
   Theorem4.value_at_structure LemmaB.objectOfRecord_electromagneticLike, rfl⟩

end Correspondence
end AlphaDerivation
