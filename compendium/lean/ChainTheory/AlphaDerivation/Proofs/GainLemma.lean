import AlphaDerivation.Data.FieldElement
import AlphaDerivation.Data.Records
import AlphaDerivation.Data.Expected
import AlphaDerivation.Data.GainCells
import AlphaDerivation.Proofs.Census
import AlphaDerivation.Proofs.Theorem4

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace GainLemma
open Census

def dimCentre : Nat := 3

def dimFar : Nat := 2

def passedEnds (r : Rec) : List Nat := match sector r with
  | .odd => []
  | .evenMixed => [dimFar]
  | .evenSame => [dimCentre]
  | .closure => [dimFar, dimCentre]

def passedEndProduct (r : Rec) : Nat := (passedEnds r).foldl (· * ·) 1

def multiplicity (r : Rec) : Nat := Int.toNat (squaredWeightCount r)

def passedEndName (r : Rec) : String := match sector r with
  | .odd => "none"
  | .evenMixed => "qubit"
  | .evenSame => "qutrit"
  | .closure => "both"

def countPassed (s : String) : Nat := (records.filter fun r => passedEndName r == s).length

def passedEndCensus : List (String × Nat) := ["none", "qubit", "qutrit", "both"].map fun s => (s, countPassed s)

def countMultiplicity (k : Nat) : Nat := (records.filter fun r => multiplicity r == k).length

def multiplicityCensus : List (Nat × Nat) := [1, 2, 3, 6].map fun k => (k, countMultiplicity k)

def within (S : List Nat) (r : Rec) : Bool := (passedEnds r).all fun d => S.contains d

def endSetSum (S : List Nat) : Nat := ((records.filter (within S)).map passedEndProduct).foldl (· + ·) 0

def exactly (S : List Nat) (r : Rec) : Bool := passedEnds r == S

def endSetExact (S : List Nat) : Nat := ((records.filter (exactly S)).map passedEndProduct).foldl (· + ·) 0

def endSetSums : List (String × Nat) :=
  [("none", endSetSum []), ("qubit", endSetSum [dimFar]), ("qutrit", endSetSum [dimCentre]), ("both", endSetSum [dimFar, dimCentre])]

def endSetExacts : List (String × Nat) :=
  [("none", endSetExact []), ("qubit", endSetExact [dimFar]), ("qutrit", endSetExact [dimCentre]), ("both", endSetExact [dimFar, dimCentre])]

def sectorGain (s : Sector) : Nat := match s with
  | .odd => 1
  | .evenMixed => dimFar
  | .evenSame => dimCentre
  | .closure => dimFar * dimCentre

def sectorGains : List (String × Nat × Nat) :=
  [("ODD", countSector .odd, sectorGain .odd), ("MIXED-EVEN", countSector .evenMixed, sectorGain .evenMixed),
   ("SAME-EVEN", countSector .evenSame, sectorGain .evenSame), ("CLOSURE", countSector .closure, sectorGain .closure)]

def bornFace : Nat := (sectorGains.map fun t => t.2.1 * t.2.2).foldl (· + ·) 0

def multiplicitySum : Nat := (records.map multiplicity).foldl (· + ·) 0

def rootOfMultiplicity (r : Rec) : Q4 := match multiplicity r with
  | 1 => Q4.one
  | 2 => Q4.root2
  | 3 => Q4.root3
  | 6 => Q4.root6
  | _ => Q4.zero

def coherentSum : Q4 := (records.map rootOfMultiplicity).foldl Q4.add Q4.zero

theorem multiplicity_is_passed_end_product :
    records.all (fun r => multiplicity r == passedEndProduct r) = true ∧
    records.all (fun r => passedEndProduct r == sectorGain (sector r)) = true ∧
    passedEndCensus = GainCells.passedEndCensus ∧ multiplicityCensus = GainCells.multiplicityCensus ∧
    multiplicityCensus = Expected.histogram ∧ records.length = 172 ∧
    GainCells.recordEq = "172 of 172" ∧ GainCells.firstParting = "NONE" ∧
    GainCells.correspondenceDerived = "ODD:none;MIXED:far;REPEATED:centre;REENTRY:centre+far" := by
  decide +kernel

theorem readout_is_root :
    records.all (fun r => weight r == rootOfMultiplicity r) = true ∧
    records.all (fun r => Q4.mul (weight r) (weight r) == ⟨Int.ofNat (multiplicity r), 0, 0, 0⟩) = true := by
  decide +kernel

theorem end_set_sums :
    endSetSums = GainCells.endSetSums ∧ endSetExacts = GainCells.endSetExact ∧
    endSetSum [dimFar, dimCentre] = GainCells.supportRankSum ∧
    endSetSum [] = endSetExact [] ∧
    endSetSum [dimFar] = endSetExact [] + endSetExact [dimFar] ∧
    endSetSum [dimCentre] = endSetExact [] + endSetExact [dimCentre] ∧
    endSetSum [dimFar, dimCentre] = endSetExact [] + endSetExact [dimFar] + endSetExact [dimCentre] + endSetExact [dimFar, dimCentre] := by
  decide +kernel

theorem born_count_is_a_measure :
    sectorGains = GainCells.sectorGainsCorrespondence ∧ sectorGains = GainCells.sectorGainsLesserGreater ∧
    multiplicityCensus = GainCells.genreGains ∧
    bornFace = GainCells.genreBorn ∧ bornFace = multiplicitySum ∧ bornFace = endSetSum [dimFar, dimCentre] ∧
    coherentSum = ⟨GainCells.genreN.getD 0 0, GainCells.genreN.getD 1 0, GainCells.genreN.getD 2 0, GainCells.genreN.getD 3 0⟩ ∧
    coherentSum = Theorem4.registerSum ∧
    GainCells.candidateCount = GainCells.matchCount ∧ GainCells.eqglFirstParting = "NONE" := by
  decide +kernel

end GainLemma
end AlphaDerivation
