import AlphaDerivation.Data.Records
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.LemmaB
import AlphaDerivation.Proofs.Census

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace MomentumTransfer

abbrev V3 := Int × Int × Int

def vadd (a b : V3) : V3 := (a.1 + b.1, a.2.1 + b.2.1, a.2.2 + b.2.2)

def vneg (a : V3) : V3 := (-a.1, -a.2.1, -a.2.2)

def vzero : V3 := (0, 0, 0)

def halfLog (d : Nat) : V3 := LemmaB.expVec d

def signedStep (left entered : Nat) : V3 := vadd (halfLog entered) (vneg (halfLog left))

def stepEnterQubit : V3 := signedStep 3 2

def stepEnterQutrit : V3 := signedStep 2 3

def read1 (s : String × V3 × V3 × V3) : V3 := s.2.1

def read2 (s : String × V3 × V3 × V3) : V3 := s.2.2.1

def composed (s : String × V3 × V3 × V3) : V3 := s.2.2.2

def stepOfRecord (r : Rec) : V3 := match r.parity, r.kinds with
  | .even, .mixed => stepEnterQubit
  | .even, .same => stepEnterQutrit
  | _, _ => vzero

def paired : List (Rec × (String × V3 × V3 × V3)) := records.zip steps

def MomentumTransferZeroStatement : Prop :=
  halfLog 2 = (1, 0, 0) ∧ halfLog 3 = (0, 1, 0) ∧ halfLog 2 = Expected.momentumEndValue2 ∧ halfLog 3 = Expected.momentumEndValue3 ∧
  stepEnterQubit = (1, -1, 0) ∧ stepEnterQutrit = (-1, 1, 0) ∧ stepEnterQutrit = vneg stepEnterQubit ∧
  vadd stepEnterQubit stepEnterQutrit = vzero ∧
  stepEnterQubit = Expected.stepEnterQubit ∧ stepEnterQutrit = Expected.stepEnterQutrit ∧ Expected.stepComposed = vzero ∧
  steps.length = Expected.recordCount ∧ records.length = steps.length ∧
  paired.all (fun p => p.1.id == p.2.1) = true ∧
  steps.all (fun s => read2 s == vneg (read1 s) && composed s == vzero && composed s == vadd (read1 s) (read2 s)) = true ∧
  paired.all (fun p => read1 p.2 == stepOfRecord p.1) = true ∧
  (steps.filter fun s => read1 s != vzero).length = Expected.sectorEvenMixed + Expected.sectorEvenSame ∧
  (steps.filter fun s => read1 s == vzero).length = Expected.sectorOdd + Expected.sectorClosure ∧
  (steps.filter fun s => read1 s != vzero).length + (steps.filter fun s => read1 s == vzero).length = 172 ∧
  Expected.composedZero = "172 of 172" ∧ Expected.zeroAtZeroTransfer = "YES" ∧ LemmaB.zeroTransfer = true

theorem momentum_transfer_zero : MomentumTransferZeroStatement := by
  unfold MomentumTransferZeroStatement
  decide +kernel

end MomentumTransfer
end AlphaDerivation
