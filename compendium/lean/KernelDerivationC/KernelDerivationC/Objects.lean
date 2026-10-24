import KernelDerivationC.Exact
import KernelDerivationC.Inputs
import KernelDerivationC.Targets
import AxiomDeclarationTwo.Structure

set_option autoImplicit false
set_option maxRecDepth 100000

namespace KernelDerivationC
namespace Objects
open AxiomDeclarationTwo (WorldTwo)
open AxiomDeclaration (Pair)

def star : WorldTwo := ⟨7, fun i => [3, 3, 3, 3, 2, 2, 2].getD i.val 0,
  [⟨(0 : Fin 7), (1 : Fin 7)⟩, ⟨(0 : Fin 7), (2 : Fin 7)⟩, ⟨(0 : Fin 7), (3 : Fin 7)⟩, ⟨(1 : Fin 7), (4 : Fin 7)⟩, ⟨(2 : Fin 7), (5 : Fin 7)⟩, ⟨(3 : Fin 7), (6 : Fin 7)⟩], by decide⟩

def junction : Fin 7 := (0 : Fin 7)

def legs : List (Pair 7) := star.pairsAt junction

def docks : List (Pair 7) := star.pairs.filter (fun p => !(p.a == junction || p.b == junction))

def register (p : Pair 7) : Nat := (star.support p) ^ 4

def legRegister (p : Pair 7) : Nat := (star.support p) ^ 2

def junctionRegister : Nat := (legs.map legRegister).foldl (· + ·) 0

def dockRegister : Nat := (docks.map register).headD 0

def portRegister : Nat := (legs.map register).headD 0

theorem registers_of_record : star.withinReadBound = true ∧ legs.map star.genre = [(3, 3), (3, 3), (3, 3)] ∧ docks.map star.genre = [(2, 3), (2, 3), (2, 3)] ∧
    docks.map register = [dockRegister, dockRegister, dockRegister] ∧ legs.map register = [portRegister, portRegister, portRegister] ∧ legs.map legRegister = [9, 9, 9] ∧
    junctionRegister = Inputs.rowJunctionRegister ∧ dockRegister = Inputs.rowDockRegister ∧ portRegister = Inputs.rowPortRegister := by decide +kernel

def ratioPortOverDock : String := toString portRegister ++ "/" ++ toString dockRegister

theorem ratio_of_record : ratioPortOverDock = Inputs.rowRatio := by decide +kernel

def dPort : Nat := (legs.map star.support).headD 0

def wholeFace : Nat := dPort ^ 4
def cutFace : Nat := (dPort ^ 2 - 1) ^ 2

def starOrderOne : Nat := cutFace * wholeFace * wholeFace
def starOrderTwo : Nat := cutFace * wholeFace * cutFace

theorem count_law_faces : dPort = 3 ∧ wholeFace = Inputs.rowPortRegister ∧ cutFace = (dPort ^ 2 - 1) ^ 2 ∧ starOrderOne = Inputs.rowG33Register ∧ starOrderTwo = Inputs.rowG2Register := by decide +kernel

def classElement (gain count : Nat) : R3 :=
  if gain == 1 then R3.ofNat count else if gain == 3 then ⟨Q.ofInt 0, Q.ofNat count⟩ else if gain == 9 then R3.ofNat (3 * count) else ⟨Q.ofInt 0, Q.ofInt 0⟩

def chainSum : R3 := Inputs.sectorClasses.foldl (fun acc c => R3.add acc (classElement c.1 c.2)) (R3.ofNat 0)

def g33 : R3 := R3.divNat chainSum starOrderOne

def G2 : R3 := R3.divNat chainSum starOrderTwo

def junctionRead : R3 := R3.mulNat G2 junctionRegister

theorem gluon_reads_of_record : R3.str chainSum = Inputs.rowChainSum ∧ R3.str g33 = Inputs.rowG33 ∧ R3.str G2 = Inputs.rowG2 ∧ R3.str junctionRead = Inputs.rowJunctionRead ∧
    R3.words G2 = Inputs.rowG2Words := by decide +kernel

def armsConsistent (arms : List Inputs.Arm) : Bool := arms.all (fun a => a.rank * a.dressing == a.first)

def armSum (arms : List Inputs.Arm) : Nat := (arms.map (fun a => a.first)).foldl (· + ·) 0

def wholeStarRead (arms : List Inputs.Arm) : R3 := R3.add (R3.ofNat (armSum arms)) junctionRead

theorem star_reads_of_record : armsConsistent Inputs.protonArms = true ∧ armsConsistent Inputs.neutronArms = true ∧ armSum Inputs.protonArms = Inputs.rowArmSumP ∧ armSum Inputs.neutronArms = Inputs.rowArmSumN ∧
    R3.str (wholeStarRead Inputs.protonArms) = Inputs.rowStarReadP ∧ R3.str (wholeStarRead Inputs.neutronArms) = Inputs.rowStarReadN := by decide +kernel

def readout (arms : List Inputs.Arm) (reg : Nat) : R3 := R3.divNat (R3.mul G2 (wholeStarRead arms)) reg

def bodies : List (String × List Inputs.Arm) := [("P", Inputs.protonArms), ("N", Inputs.neutronArms)]

def faces : List (String × Nat) := [("dock", dockRegister), ("port", portRegister)]

def derivedObjects : List (List String) :=
  bodies.flatMap (fun b => faces.map (fun f => [b.1, f.1, toString f.2, R3.str (readout b.2 f.2), R3.words (readout b.2 f.2)]))

theorem objects_derived : derivedObjects = Targets.tableSCGI ∧ derivedObjects.length = 4 := by decide +kernel

def derivedModuleRows : List (List String) := derivedObjects.map (fun r => r.take 3)

theorem module_replaced : derivedModuleRows = Targets.moduleSCGI := by decide +kernel

theorem module_checks_restated : derivedModuleRows.length = 4 ∧ (derivedModuleRows.filter (fun r => r.getD 2 "" == toString dockRegister)).length = 2 ∧ (derivedModuleRows.filter (fun r => r.getD 2 "" == toString portRegister)).length = 2 ∧
    (derivedModuleRows.filter (fun r => r.getD 0 "" == "P")).length = 2 ∧ (derivedModuleRows.filter (fun r => r.getD 0 "" == "N")).length = 2 := by decide +kernel

def productRegister (regs : List Nat) : Nat := regs.foldl (· * ·) 1

def readoutAtProduct (arms : List Inputs.Arm) (regs : List Nat) : R3 := R3.divNat (R3.mul G2 (wholeStarRead arms)) (productRegister regs)

def readoutAtCut (cutSum : R3) (cutRegister : Nat) : R3 := R3.divNat (R3.mul G2 cutSum) cutRegister

def derivedRowOne : List (List String) :=
  [ ["P", "whole", R3.str (readoutAtProduct Inputs.protonArms Inputs.protonWholeRegisters), R3.words (readoutAtProduct Inputs.protonArms Inputs.protonWholeRegisters)],
    ["P", "cut.leg", R3.str (readoutAtCut Inputs.protonCutLegSum Inputs.protonCutLegRegister), R3.words (readoutAtCut Inputs.protonCutLegSum Inputs.protonCutLegRegister)],
    ["N", "whole", R3.str (readoutAtProduct Inputs.neutronArms Inputs.neutronWholeRegisters), R3.words (readoutAtProduct Inputs.neutronArms Inputs.neutronWholeRegisters)],
    ["N", "cut.leg", R3.str (readoutAtCut Inputs.neutronCutLegSum Inputs.neutronCutLegRegister), R3.words (readoutAtCut Inputs.neutronCutLegSum Inputs.neutronCutLegRegister)] ]

theorem product_registers_beside : productRegister Inputs.protonWholeRegisters = Inputs.rowProductRegisterP ∧ productRegister Inputs.neutronWholeRegisters = Inputs.rowProductRegisterN := by decide +kernel

theorem row_one_beside : derivedRowOne = Targets.tableSCGH ∧ derivedRowOne.map (fun r => r.take 2) = Targets.moduleSCGH := by decide +kernel

theorem layer_two_over_row_one : R3.eq (R3.mulNat (readout Inputs.protonArms dockRegister) dockRegister) (R3.mulNat (readoutAtProduct Inputs.protonArms Inputs.protonWholeRegisters) (productRegister Inputs.protonWholeRegisters)) = true ∧
    R3.eq (R3.mulNat (readout Inputs.neutronArms dockRegister) dockRegister) (R3.mulNat (readoutAtProduct Inputs.neutronArms Inputs.neutronWholeRegisters) (productRegister Inputs.neutronWholeRegisters)) = true := by decide +kernel

end Objects
end KernelDerivationC
