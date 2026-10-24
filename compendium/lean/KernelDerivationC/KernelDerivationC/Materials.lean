import KernelDerivationC.Targets

set_option autoImplicit false

namespace KernelDerivationC
namespace Materials
open Targets

structure ModuleOfRow where
  name : String
  kind : String
  layer : Nat
  derivingRow : Nat
  rows : Nat
  derived : Bool
deriving Repr, BEq, DecidableEq

def sixModules : List ModuleOfRow := [⟨"ChainTheory.Data.D524748_SCGI", "OBJECTS", 2, 524748, 4, true⟩, ⟨"ChainTheory.Data.D525490_LGIS", "BRACKETS", 2, 525490, 41, true⟩, ⟨"ChainTheory.Data.D525464_MDTS", "SUMS", 3, 525464, 16, false⟩, ⟨"ChainTheory.Data.D526045_MBRJ", "TESTS", 4, 526045, 9, false⟩, ⟨"ChainTheory.Data.D526513_MPJW", "TESTS", 4, 526513, 5, false⟩, ⟨"ChainTheory.Data.D526870_PAET", "TESTS", 5, 526870, 8, false⟩]

def derivedModules : List String := (sixModules.filter (fun m => m.derived)).map (fun m => m.name)

def notDerivedModules : List String := (sixModules.filter (fun m => !m.derived)).map (fun m => m.name)

def firstNotDerived : Option (String × String) := (sixModules.find? (fun m => !m.derived)).map (fun m => (m.name, m.kind))

def kindCounts : List (String × Nat × Nat) := ["OBJECTS", "BRACKETS", "SUMS", "TESTS"].map (fun k => (k, (sixModules.filter (fun m => m.kind == k && m.derived)).length, (sixModules.filter (fun m => m.kind == k)).length))

theorem material_MDTS_counted : moduleMDTS.length = 16 ∧ tableMDTS.length = 16 := by decide +kernel

theorem material_MBRJ_counted : moduleMBRJ.length = 9 ∧ tableMBRJ.length = 9 := by decide +kernel

theorem material_MPJW_counted : moduleMPJW.length = 5 ∧ tableMPJW.length = 5 := by decide +kernel

theorem material_PAET_counted : modulePAET.length = 8 ∧ tablePAET.length = 8 := by decide +kernel

theorem census_of_the_six : sixModules.length = 6 ∧ derivedModules.length = 2 ∧ notDerivedModules.length = 4 ∧ firstNotDerived = some ("ChainTheory.Data.D525464_MDTS", "SUMS") ∧ kindCounts = [("OBJECTS", 1, 1), ("BRACKETS", 1, 1), ("SUMS", 0, 1), ("TESTS", 0, 3)] := by decide +kernel

end Materials
end KernelDerivationC
