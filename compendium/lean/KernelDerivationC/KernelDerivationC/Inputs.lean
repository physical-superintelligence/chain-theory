import KernelDerivationC.Exact

set_option autoImplicit false

namespace KernelDerivationC
namespace Inputs

def sectorClasses : List (Nat × Nat) := [(1, 184), (3, 200), (9, 28)]

structure Arm where
  arm : String
  body : String
  rank : Nat
  dressing : Nat
  first : Nat
deriving Repr, BEq, DecidableEq

def protonArms : List Arm := [⟨"Q1", "U_DOCKED", 6, 1, 6⟩, ⟨"Q2", "U_DOCKED", 6, 1, 6⟩, ⟨"Q3", "D_DOCKED", 46, 3, 138⟩]

def neutronArms : List Arm := [⟨"Q1", "U_DOCKED", 6, 1, 6⟩, ⟨"Q2", "D_DOCKED", 46, 3, 138⟩, ⟨"Q3", "D_DOCKED", 46, 3, 138⟩]

def protonWholeRegisters : List Nat := [81, 81, 81, 36, 36, 36, 144, 64, 64, 64, 16]

def neutronWholeRegisters : List Nat := [81, 81, 81, 36, 36, 144, 64, 64, 64, 16, 36, 144, 64, 64, 64, 16]

def protonCutLegSum : R3 := ⟨⟨267331, 4608⟩, ⟨25, 2304⟩⟩

def neutronCutLegSum : R3 := ⟨⟨451651, 4608⟩, ⟨25, 2304⟩⟩

def protonCutLegRegister : Nat := 11832592569282330624

def neutronCutLegRegister : Nat := 7146646609494406531041460224

def rowChainSum : String := "268|0|200|0"

def rowG33 : String := "67/104976|0|25/52488|0"

def rowG2 : String := "67/82944|0|25/41472|0"

def rowG2Words : String := "67 over 82944 plus 25 over 41472 root 3"

def rowJunctionRead : String := "67/3072|0|25/1536|0"

def rowG2Register : Nat := 331776

def rowG33Register : Nat := 419904

def rowJunctionRegister : Nat := 27

def rowPortRegister : Nat := 81

def rowRatio : String := "81/16"

def rowDockRegister : Nat := 16

def rowArmSumP : Nat := 150

def rowArmSumN : Nat := 282

def rowStarReadP : String := "460867/3072|0|25/1536|0"

def rowStarReadN : String := "866371/3072|0|25/1536|0"

def rowProductRegisterP : Nat := 14975624970497949696

def rowProductRegisterN : Nat := 9044974615141358265849348096

end Inputs
end KernelDerivationC
