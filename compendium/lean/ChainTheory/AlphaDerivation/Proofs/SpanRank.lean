import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Certificates

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace SpanRank
open GM

theorem rank_d3 : bareissG Certificates.minorLit3 ≠ G.zero := by decide +kernel

theorem rank_d2 : bareissG Certificates.minorLit2 ≠ G.zero := by decide +kernel

end SpanRank
end AlphaDerivation
