import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Proofs.LemmaA

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace CollapseG3
open GM LemmaA

def collapseCert : Bool :=
  let g := pairAction 3 (gens3.getD 2 [])
  isMonomial 9 g && (List.range 81).all (fun x => let e := unit 9 (x / 9) (x % 9)
    sub (mulN 9 g e) (mulN 9 e g) == entryComm 9 g (x / 9) (x % 9))

theorem collapse : collapseCert = true := by decide +kernel

end CollapseG3
end AlphaDerivation
