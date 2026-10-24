import AxiomDeclarationTwo.Sinks
import AxiomDeclarationTwo.ClosureWebsA
import AxiomDeclarationTwo.ClosureWebsB
import AxiomDeclarationTwo.ClosureWebsC
import AxiomDeclarationTwo.ClosureWebsD
import AxiomDeclarationTwo.ClosureWebsE
import AxiomDeclarationTwo.ClosureWebsF

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Act actsOfRecord unequalActs worldsOfRecord wordsAtStructure firstActRefusedAtStructure)

theorem unequal_refused_at_first : unequalActs.all (fun a => worldsOfRecord.all (fun w => (a.instancesWorld w).isEmpty)) = true ∧ firstActRefusedAtStructure = "A02" := by decide +kernel

theorem words_at_first : wordsAtStructure.all (fun p => !p.snd) = true := by decide +kernel

theorem shards_whole : shardWorldsA.length + shardWorldsB.length + shardWorldsC.length + shardWorldsD.length + shardWorldsE.length + shardWorldsF.length = 57 := by decide +kernel

def firstEditionWorldsEmbedded : List WorldTwo := worldsOfRecord.map ofWorld

theorem closure_at_examples : closureTwoOver exampleWorldsTwo = true ∧ closureTwoOver firstEditionWorldsEmbedded = true := by decide +kernel

theorem embedded_read_back : firstEditionWorldsEmbedded.all WorldTwo.isFirstEdition = true := by decide +kernel

end AxiomDeclarationTwo
