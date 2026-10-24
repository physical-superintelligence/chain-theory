import AlphaDerivation.Data.Cyclotomic
import AlphaDerivation.Data.CapBases
import AlphaDerivation.Data.Expected

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace TransverseStates
open C12 CV CM CapBases

def weylZ3 : CM := [[one, zero, zero], [zero, omega, zero], [zero, zero, mul omega omega]]

def weylX3 : CM := mk 3 fun i j => if i == (j + 1) % 3 then one else zero

def weylXZ3 : CM := mulN 3 weylX3 weylZ3

def weylXZ23 : CM := mulN 3 weylXZ3 weylZ3

def capLetters : List (String × CM) := [("Z", weylZ3), ("X", weylX3), ("XZ", weylXZ3), ("XZ2", weylXZ23)]

def capNames : List String := ["Z", "X", "XZ", "XZ2"]

def letterOf (nm : String) : CM := ((capLetters.find? fun p => p.1 == nm).map Prod.snd).getD []

def basisOf (nm : String) : List (CV × C12) := ((capBases.find? fun p => p.1 == nm).map Prod.snd).getD []

def eigenOK (nm : String) : Bool := (basisOf nm).all fun p => mulVec (letterOf nm) p.1 == CV.smul p.2 p.1

def independent (nm : String) : Bool := !(C12.isZero (det3 ((basisOf nm).map Prod.fst)))

def orthogonalList (vs : List CV) : Bool :=
  (List.range vs.length).all fun i => (List.range vs.length).all fun j => i == j || C12.isZero (inner (vs.getD i []) (vs.getD j []))

def pairKet32 : CV := [one, zero, zero, one, zero, zero]

def transport (v : CV) : CV :=
  [0, 1].map fun t => (List.range 3).foldl (fun acc j => add acc (mul (conj (entry v j)) (entry pairKet32 (j * 2 + t)))) zero

def farSet (nm : String) : List CV := ((basisOf nm).map fun p => transport p.1).filter fun f => !(CV.isZero f)

def rank2 (vs : List CV) : Bool := vs.any fun u => vs.any fun v => !(C12.isZero (minor2 u v 0 1))

def basisOfSupport (nm : String) : Bool := let nz := farSet nm; orthogonalList nz && nz.length == 2 && rank2 nz

def washedReads : List String := capNames.filter basisOfSupport

def pauliZ : CM := [[one, zero], [zero, neg one]]

def pauliX : CM := [[zero, one], [one, zero]]

def pauliY : CM := [[zero, neg iu], [iu, zero]]

def weylXZ2 : CM := [[zero, neg one], [one, zero]]

def farLetters : List (String × CM) := [("Z", pauliZ), ("X", pauliX), ("Y", weylXZ2)]

def fixedSet (nm : String) : List String :=
  if (farSet nm).isEmpty then [] else (farLetters.filter fun L => (farSet nm).all fun f => parallel f (mulVec L.2 f)).map Prod.fst

def unfixedCount (nm : String) : Nat := farLetters.length - (fixedSet nm).length

def TwoTransverseStatesStatement : Prop :=
  capNames.all (fun nm => eigenOK nm && independent nm && orthogonalList ((basisOf nm).map Prod.fst)) = true ∧
  capLetters.length = 4 ∧ (capBases.map Prod.fst) = capNames ∧
  weylXZ2 = CM.smul (zetaPow 9) pauliY ∧ Expected.xzUnitIndex = 9 ∧ mul zeta (conj zeta) = one ∧
  pairKet32.length = 6 ∧
  capNames.map (fun nm => (nm, basisOfSupport nm)) = [("Z", true), ("X", false), ("XZ", false), ("XZ2", false)] ∧
  capNames.map (fun nm => (nm, basisOfSupport nm)) = Expected.farBasisOfSupport ∧
  capNames.map (fun nm => (nm, (farSet nm).length)) = Expected.farNonzero ∧
  capNames.map (fun nm => (nm, orthogonalList (farSet nm))) = Expected.farOrthogonal ∧
  capNames.all (fun nm => rank2 (farSet nm)) = true ∧
  washedReads = ["Z"] ∧ Expected.washedRead = "Z" ∧ Expected.selectedDirection = "Z" ∧
  fixedSet "Z" = ["Z"] ∧ (fixedSet "Z").length = Expected.fixedCountAtWashed ∧ Expected.fixedCountAtWashed = 1 ∧
  unfixedCount "Z" = 2 ∧ unfixedCount "Z" = Expected.transverseDimAtWashed ∧ unfixedCount "Z" = Expected.transverseCount ∧
  (farLetters.filter fun L => !(fixedSet "Z").contains L.1).map Prod.fst = ["X", "Y"] ∧
  ["X", "XZ", "XZ2"].all (fun nm => fixedSet nm == [] && unfixedCount nm == 3) = true ∧
  Expected.fullTripleAtOpenReads = "X:3;XZ:3;XZ2:3" ∧ Expected.helicityLetter = "TWO"

theorem two_transverse_states : TwoTransverseStatesStatement := by
  unfold TwoTransverseStatesStatement
  decide +kernel

end TransverseStates
end AlphaDerivation
