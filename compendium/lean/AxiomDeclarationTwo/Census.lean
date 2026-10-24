import AxiomDeclarationTwo

set_option autoImplicit false
set_option maxRecDepth 100000
open AxiomDeclarationTwo ActClosure
#eval actsOfRecord.length
#eval worldsTwoAmongRecord
#eval worldsTwoAmongSinks
#eval worldsTwoAmongAhead
#eval firstEditionAmongSinks
#eval firstEditionAmongAhead
#eval structureTwoAdmissionCensus
#eval webAdmissionCensus
#eval censusTwoEqualsWeb
#eval actsAdmittedNowhereAtTwo
#eval firstActNowhereAtTwo
#eval actsAdmittedSomewhereAtTwo
#eval unequalSomewhereAtTwo
#eval equalSomewhereAtTwo
#eval witnessCensus
#eval firstActAtNoWitness
#eval unequalAtWitness
#eval equalAtWitness
#eval actsOfRecord.map (fun a => (a.label, witnessIsWorldTwo a, witnessDeltasRemet a, witnessGenreRemet a))
#eval wordsAtTwo
#eval wordsStatesAtTwo
#eval firstWordNotAtTwo
#eval structureAdmissionCensus
#eval firstActRefusedAtStructure
#eval wordsAtStructure
#eval worldTwoSix.genres
#eval exampleWorldsTwo.map (fun w => (w.qudits, w.pairs.length, w.oneDimension, w.someSharedEither, w.withinReadBound))
#eval (recordWorldsTwo.filter WorldTwo.withinReadBound).length
#eval (recordWorldsTwo.filter WorldTwo.someSharedEither).length
#eval (recordWorldsTwo.filter WorldTwo.someShared).length
#eval (recordWorldsTwo.filter (fun w => w.allQudits.any w.sharedByDimension)).length
