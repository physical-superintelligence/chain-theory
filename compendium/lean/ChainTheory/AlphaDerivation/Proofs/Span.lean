import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Certificates
import AlphaDerivation.Proofs.LemmaA

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Span
open GM LemmaA

def independenceMinor (d : Nat) (idc : List Nat) : GM := (orbitSumVectors d).map fun v => idc.map fun j => v.getD j G.zero

theorem fixed_space_span_d3 :
    (systemRows 3 gens3).length = 243 ∧ (systemRows 3 gens3).all (fun r => r.length == 81) = true ∧
    selectCols (selectRows (systemRows 3 gens3) Certificates.minorRows3) Certificates.minorCols3 = Certificates.minorLit3 ∧
    Certificates.minorRows3.length = 78 ∧ Certificates.minorCols3.length = 78 ∧
    (systemRows 3 gens3).all (fun r => (orbitSumVectors 3).all (fun v => dot r v == G.zero)) = true ∧
    independenceMinor 3 Certificates.orbitSumCols3 = identity 3 := by decide +kernel

theorem fixed_space_span_d2 :
    (systemRows 2 gens2).length = 32 ∧ (systemRows 2 gens2).all (fun r => r.length == 16) = true ∧
    selectCols (selectRows (systemRows 2 gens2) Certificates.minorRows2) Certificates.minorCols2 = Certificates.minorLit2 ∧
    Certificates.minorRows2.length = 13 ∧ Certificates.minorCols2.length = 13 ∧
    (systemRows 2 gens2).all (fun r => (orbitSumVectors 2).all (fun v => dot r v == G.zero)) = true ∧
    independenceMinor 2 Certificates.orbitSumCols2 = identity 3 := by decide +kernel

end Span
end AlphaDerivation
