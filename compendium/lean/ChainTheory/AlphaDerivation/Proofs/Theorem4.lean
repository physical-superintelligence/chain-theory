import AlphaDerivation.Data.FieldElement
import AlphaDerivation.Data.Records
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.Census
import AlphaDerivation.Proofs.LemmaB
import AlphaDerivation.Proofs.Theorem1

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Theorem4
open Census

def registerSum : Q4 := (records.map weight).foldl Q4.add Q4.zero

def register : Nat := Theorem1.dimR 2 3

def closedFormOfRecord : Q4 × Nat :=
  (⟨Expected.closedFormNum.getD 0 0, Expected.closedFormNum.getD 1 0, Expected.closedFormNum.getD 2 0, Expected.closedFormNum.getD 3 0⟩, Expected.closedFormDen)

def twoPointRatio (o : LemmaB.Obj) : Q4 × Nat :=
  if o == LemmaB.objectOfRecord then (registerSum, register) else (Q4.zero, 1)

def onShellCoupling (o : LemmaB.Obj) : Q4 × Nat := twoPointRatio o

theorem value :
    registerSum = ⟨79, 48, 42, 3⟩ ∧ register = 24 * 36 * 36 ∧
    (registerSum, register) = closedFormOfRecord ∧
    registerSum = ⟨(Expected.sectorOdd : Int), (Expected.sectorEvenMixed : Int), (Expected.sectorEvenSame : Int), (Expected.sectorClosure : Int)⟩ := by
  decide +kernel

theorem value_at_structure (_h : LemmaB.ElectromagneticLike LemmaB.objectOfRecord) :
    onShellCoupling LemmaB.objectOfRecord = closedFormOfRecord := by
  show twoPointRatio LemmaB.objectOfRecord = closedFormOfRecord
  decide +kernel

theorem closed_form_spelled : closedFormOfRecord = (⟨79, 48, 42, 3⟩, 31104) := by decide +kernel

end Theorem4
end AlphaDerivation
