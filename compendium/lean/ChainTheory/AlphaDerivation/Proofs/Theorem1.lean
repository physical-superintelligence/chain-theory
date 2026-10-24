import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.LemmaA
import AlphaDerivation.Proofs.IdentificationAlgebra

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Theorem1
open GM

def whole (d1 d2 : Nat) : Nat := d1 * d1 * d2 * d2

def cut (d1 d2 : Nat) : Nat := (d1 * d1 - 1) * (d2 * d2 - 1)

def dimR (d1 d2 : Nat) : Nat := cut d1 d2 * whole d1 d2 * whole d1 d2

def oneLink (d1 d2 : Nat) : Nat := d1 * d2

def pairKet23 : List G := IdAlg.pairKet23

def block2 : GM := mk 2 (fun i j => if i == j then ⟨0, 3⟩ else G.zero)

def block3 : GM := mk 3 (fun i j => if i == j then ⟨0, -2⟩ else G.zero)

def generatorFixed : Bool :=
  LemmaA.group2.all (fun u => mulN 2 u block2 == mulN 2 block2 u) &&
  LemmaA.gens3.all (fun u => mulN 3 u block3 == mulN 3 block3 u)

theorem register :
    whole 2 3 = Expected.registerWhole ∧ cut 2 3 = Expected.registerCut ∧ dimR 2 3 = Expected.registerDimR ∧
    oneLink 2 3 = Expected.oneLinkRegister ∧ whole 2 3 = 9 * 4 ∧ cut 2 3 = 8 * 3 ∧
    dimR 2 3 = 24 * 36 * 36 ∧ dimR 2 3 = Expected.closedFormDen := by decide +kernel

theorem one_unit :
    inner pairKet23 pairKet23 = G.ofInt 2 ∧
    (let P := outer pairKet23; mulN 6 P P = smul (G.ofInt 2) P ∧ trace P = G.ofInt 2) ∧
    Expected.alphaBare = 1 ∧ 2 * 3 = 6 := by decide +kernel

theorem dressing_equals_bare :
    generatorFixed = true ∧ Expected.z2OverZ1 = 1 ∧ Expected.dressingRatiosAllOne = "1,1,1,1,1" := by decide +kernel

theorem readout_is_trace_form :
    (ZM.mulVec IdAlg.killing IdAlg.tuVector = List.replicate 12 0 ∧
     ZM.det (ZM.minor IdAlg.killing (List.range 11) (List.range 11)) ≠ 0 ∧
     ZM.det IdAlg.traceForm ≠ 0 ∧ ZM.entry IdAlg.traceForm 11 11 = -30) ∧
    (ZM.mulVec IdAlg.tensorConstraint IdAlg.identityVector = List.replicate 432 0 ∧
     ZM.det (ZM.minor IdAlg.tensorConstraint IdAlg.tensorMinorRows IdAlg.tensorMinorCols) ≠ 0) ∧
    Expected.tensorCommutantDim23 = 1 ∧ Expected.killingRank23 = 11 :=
  ⟨IdAlg.forms, IdAlg.tensor_commutant_scalars, by decide, by decide⟩

end Theorem1
end AlphaDerivation
