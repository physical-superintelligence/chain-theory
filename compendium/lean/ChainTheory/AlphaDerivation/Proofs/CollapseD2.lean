import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Proofs.LemmaA

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace CollapseD2
open GM LemmaA

def collapseCert : Bool := gens2.all (fun u => let g := pairAction 2 u
    isMonomial 4 g && (List.range 16).all (fun x => let e := unit 4 (x / 4) (x % 4)
      sub (mulN 4 g e) (mulN 4 e g) == entryComm 4 g (x / 4) (x % 4)))

theorem collapse : collapseCert = true := by decide +kernel

end CollapseD2
end AlphaDerivation
