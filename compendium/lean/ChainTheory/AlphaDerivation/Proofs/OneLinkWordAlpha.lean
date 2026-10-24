import AlphaDerivation.Proofs.OneLinkWord
import AlphaDerivation.Proofs.GainLemma

namespace OneLinkWord
namespace Cells
open AlphaDerivation

def bornCountAtNone : Nat := 79

def bornCountAtQubit : Nat := 175

def bornCountAtQutrit : Nat := 205

def bornCountAtBoth : Nat := 319

def alphaActSumOfRecord : Nat := 319

def alphaWord : Word := { links := [⟨⟨3, EndStatus.open⟩, ⟨2, EndStatus.open⟩, false⟩], weighting := Weighting.amplitude, register := Theorem4.register, registerPower := 1 }

end Cells

open AlphaDerivation Cells

set_option maxRecDepth 100000

theorem alpha_instance : theoremForm Weighting.amplitude Theorem4.register alphaWord ⟨Int.ofNat Expected.sectorOdd, Int.ofNat Expected.sectorEvenMixed, Int.ofNat Expected.sectorEvenSame, Int.ofNat Expected.sectorClosure⟩ := by
  decide +kernel

theorem alpha_re_meets_the_value_theorem : readout sectorsOfRecord alphaWord = Theorem4.closedFormOfRecord ∧ readout sectorsOfRecord alphaWord = (Theorem4.registerSum, Theorem4.register) := by
  decide +kernel

theorem alpha_single_link : alphaWord.links.length = 1 ∧ alphaWord.bornSum sectorsOfRecord = alphaActSumOfRecord := by
  decide +kernel

theorem born_counts_at_every_end_set :
    Link.bornCount sectorsOfRecord ⟨⟨3, EndStatus.carried⟩, ⟨2, EndStatus.carried⟩, false⟩ = bornCountAtNone ∧
    Link.bornCount sectorsOfRecord ⟨⟨3, EndStatus.carried⟩, ⟨2, EndStatus.open⟩, false⟩ = bornCountAtQubit ∧
    Link.bornCount sectorsOfRecord ⟨⟨3, EndStatus.open⟩, ⟨2, EndStatus.carried⟩, false⟩ = bornCountAtQutrit ∧
    Link.bornCount sectorsOfRecord ⟨⟨3, EndStatus.open⟩, ⟨2, EndStatus.open⟩, false⟩ = bornCountAtBoth := by
  decide +kernel

theorem born_counts_are_the_gain_end_set_sums :
    [bornCountAtNone, bornCountAtQubit, bornCountAtQutrit, bornCountAtBoth] = GainLemma.endSetSums.map (fun t => t.2) ∧
    alphaActSumOfRecord = GainLemma.endSetSum [GainLemma.dimFar, GainLemma.dimCentre] := by
  decide +kernel

theorem value_theorem_with_the_word_as_a_parameter :
    theoremForm Weighting.amplitude Theorem4.register alphaWord ⟨Int.ofNat Expected.sectorOdd, Int.ofNat Expected.sectorEvenMixed, Int.ofNat Expected.sectorEvenSame, Int.ofNat Expected.sectorClosure⟩ ∧
    readout sectorsOfRecord alphaWord = Theorem4.closedFormOfRecord ∧ alphaWord.links.length = 1 :=
  ⟨alpha_instance, alpha_re_meets_the_value_theorem.1, alpha_single_link.1⟩

end OneLinkWord
