import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Certificates
import AlphaDerivation.Proofs.LemmaA

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Generation
open GM LemmaA

theorem generation : generationCert 3 closure3 group3 384 = true ∧ generationCert 2 closure2 group2 32 = true := by
  decide +kernel

end Generation
end AlphaDerivation
