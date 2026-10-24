import AlphaDerivation.Data.FieldElement
import AlphaDerivation.Data.Records
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.ClosureSign

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Census

def tracelessDim (d : Nat) : Nat := d * d - 1

def slotEndDims : List Nat := [3, 2, 3, 2]

def slotDims : List Nat := slotEndDims.map tracelessDim

def blocks : List Nat :=
  (List.range 4).flatMap fun i => (List.range 4).flatMap fun j =>
    if i < j then [slotDims.getD i 0 * slotDims.getD j 0] else []

def insert (x : Nat) : List Nat → List Nat
  | [] => [x]
  | y :: ys => if x ≤ y then x :: y :: ys else y :: insert x ys

def sort : List Nat → List Nat
  | [] => []
  | x :: xs => insert x (sort xs)

def a : Nat := tracelessDim 3

def b : Nat := tracelessDim 2

def roster : Nat := 4 * a * b + a * a + b * b

def mixed : Nat := 4 * a * b

def same : Nat := a * a + b * b

def fixed : Nat := a + b

def oddSector : Nat := (roster - fixed) / 2

def evenMixedSector : Nat := 2 * a * b

def evenSameSector : Nat := (a * a + b * b + a + b) / 2

def closureSector : Nat := b

inductive Sector | odd | evenMixed | evenSame | closure
deriving DecidableEq, Repr

def sector (r : Rec) : Sector := match r.kinds, r.parity with
  | .closure, _ => .closure
  | _, .odd => .odd
  | .mixed, _ => .evenMixed
  | .same, _ => .evenSame

def p (r : Rec) : Int := match r.parity with | .even => 1 | _ => -1

def closureIndex (r : Rec) : Nat := Expected.closureIds.idxOf r.id

def exchanges (r : Rec) : Int × Int := match r.kinds with
  | .closure => ClosureSign.closureExchanges.getD (closureIndex r) (0, 0)
  | .same => (-(p r), 1)
  | .mixed => (1, -(p r))

def dimX : Int := 3

def dimY : Int := 2

def squaredWeightProduct (r : Rec) : Int := let (x, y) := exchanges r; ((2 - x) * (3 - y)) / 2

def squaredWeightCount (r : Rec) : Int :=
  let (x, y) := exchanges r
  (if x == -1 then dimX else 1) * (if y == -1 then dimY else 1)

def weight (r : Rec) : Q4 := match squaredWeightCount r with
  | 1 => Q4.one | 2 => Q4.root2 | 3 => Q4.root3 | 6 => Q4.root6 | _ => Q4.zero

def countSector (s : Sector) : Nat := (records.filter fun r => sector r == s).length

def countWeight (k : Int) : Nat := (records.filter fun r => squaredWeightCount r == k).length

def histogram : List (Nat × Nat) := [1, 2, 3, 6].map fun k => (k, countWeight k)

def closureRecords : List Rec := records.filter fun r => r.kinds == .closure

def rosterRecords : List Rec := records.filter fun r => r.kinds != .closure

def slotMixed : Nat := (records.filter fun r => r.kinds == .mixed).length

def slotOneEnd : Nat := (records.filter fun r => r.kinds != .mixed).length

theorem blocks_and_roster :
    slotDims = Expected.slotDims ∧ sort blocks = sort Expected.blocks ∧
    blocks.foldl (· + ·) 0 = Expected.rosterCount ∧ roster = Expected.rosterCount ∧
    roster + closureSector = Expected.recordCount ∧ fixed = Expected.fixedCount ∧
    (roster - fixed) / 2 = Expected.orbitCount := by decide +kernel

theorem record_census :
    records.length = Expected.recordCount ∧ rosterRecords.length = Expected.rosterCount ∧
    closureRecords.length = Expected.reentryCount ∧ closureRecords.map Rec.id = Expected.closureIds ∧
    slotMixed = Expected.slotMixed ∧ slotOneEnd = Expected.slotOneEnd ∧
    slotMixed = mixed ∧ slotOneEnd = same + closureSector := by decide +kernel

theorem weights_from_construction :
    records.all (fun r => squaredWeightProduct r == squaredWeightCount r) = true ∧
    closureRecords.map exchanges = Expected.closureEigenvalues ∧
    histogram = Expected.histogram ∧
    [countSector .odd, countSector .evenMixed, countSector .evenSame, countSector .closure] =
      [Expected.sectorOdd, Expected.sectorEvenMixed, Expected.sectorEvenSame, Expected.sectorClosure] ∧
    [oddSector, evenMixedSector, evenSameSector, closureSector] =
      [Expected.sectorOdd, Expected.sectorEvenMixed, Expected.sectorEvenSame, Expected.sectorClosure] ∧
    dimX * dimY = Expected.closureCount ∧ Expected.endMap = "X:centre:3;Y:far:2" := by decide +kernel

theorem weights_square :
    Q4.mul Q4.one Q4.one = ⟨1, 0, 0, 0⟩ ∧ Q4.mul Q4.root2 Q4.root2 = ⟨2, 0, 0, 0⟩ ∧
    Q4.mul Q4.root3 Q4.root3 = ⟨3, 0, 0, 0⟩ ∧ Q4.mul Q4.root6 Q4.root6 = ⟨6, 0, 0, 0⟩ ∧
    Q4.mul Q4.root2 Q4.root3 = Q4.root6 := by decide

end Census
end AlphaDerivation
