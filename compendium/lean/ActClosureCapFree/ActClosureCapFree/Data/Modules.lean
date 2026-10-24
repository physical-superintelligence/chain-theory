import ActClosure.Web
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

structure CapsModule where
  name : String
  lib : String
  address : Nat
  row : String
  word : String
  disposition : String
  declarations : Nat
  hash : String
  derivingRow : Nat
  besideRow : Nat
  deriving Repr, BEq

def capsModulesOfRecord : List CapsModule := [
  ⟨"ChainTheory.Data.D527268_ENSB", "ChainTheory", 527268, "THE-ENSEMBLES-AS-CAP-READINGS-AT-THE-JOINED-WEB", "CAP", "KEPT-AT-A-WALL", 13, "8cfacb5676dd84b4", 547814, 548174⟩,
  ⟨"ChainTheory.Data.D530196_ERMT", "ChainTheory", 530196, "THE-TERMINATION-OF-SEEDED-SATURATION", "TERMINATION", "KEPT-AT-A-WALL", 57, "22dd1461deaa34fe", 547814, 548174⟩,
  ⟨"ChainTheory.Data.D534263_TSC2", "ChainTheory", 534263, "THE-THERMAL-STATE-AT-A-CAP-RE-POSED-AT-THE-STOP-CONDITION", "CAP", "KEPT-AT-A-WALL", 13, "a8b0aed935936c88", 547814, 548174⟩,
  ⟨"ChainTheory.Data.D535521_PRCI", "ChainTheory", 535521, "THE-READ-CAP-AT-THE-RECORD-SPECTRUM-ROW-2", "CAP", "KEPT-AT-A-WALL", 17, "beebeb4aeae26006", 547814, 548174⟩,
  ⟨"ChainTheory.Data.D535653_PICP", "ChainTheory", 535653, "THE-PION-AT-THE-CAP-ROW-1", "CAP", "KEPT-AT-A-WALL", 17, "98bda58a54d86636", 547814, 548174⟩,
  ⟨"ChainTheory.Data.D535814_PNCB", "ChainTheory", 535814, "THE-PANCHARATNAM-PHASE-AT-THE-CAP-BASES-ROW-1", "CAP", "KEPT-AT-A-WALL", 12, "fe97390adbc1caec", 547814, 548174⟩,
  ⟨"ChainTheory.Data.D537247_ST2T", "ChainTheory", 537247, "THE-EQUILIBRIUM-THEOREM-AT-THE-CAP-ROW-1", "CAP", "KEPT-AT-A-WALL", 16, "306d2087e32baf65", 547814, 548174⟩,
  ⟨"AlphaDerivation.Data.CapBases", "AlphaDerivation", 0, "THE-EIGENBASES-OF-THE-CAP-LETTERS-OF-THE-QUTRIT-END-A-CERTIFICATE", "CAP", "KEPT-AT-A-WALL", 5, "f645ab72f42d8044", 547814, 548174⟩
]

def dispositionHere : String := "REPLACED-BY-THE-CAP-FREE-CLOSURE-THEOREM"

def declarationsResting : Nat := (capsModulesOfRecord.map (fun m => m.declarations)).foldl (· + ·) 0
end ActClosureCapFree
