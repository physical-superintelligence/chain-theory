import AxiomDeclarationTwo.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Act actsOfRecord unequalActs equalActs genres wordsOfRecord)

theorem acts_counts : actsOfRecord.length = 38 ∧ unequalActs.length = 18 ∧ equalActs.length = 20 := by decide +kernel

theorem words_count : wordsOfRecord.length = 14 := by decide +kernel

theorem record_worlds_two : worldsTwoAmongRecord = 57 ∧ worldsTwoAmongSinks = 43 ∧ worldsTwoAmongAhead = 14 := by decide +kernel

theorem record_worlds_first : firstEditionAmongSinks = (6, 43) ∧ firstEditionAmongAhead = (0, 14) := by decide +kernel

def witnessWorlds : List WorldTwo := actsOfRecord.filterMap (fun a => (actWitness a).fst)

theorem witness_worlds : witnessWorlds.length = 38 ∧ actsOfRecord.all witnessIsWorldTwo = true := by decide +kernel

theorem every_act_at_witness : witnessCensus.all (fun p => p.snd) = true ∧ firstActAtNoWitness = "NONE" := by decide +kernel

theorem witness_by_genre : unequalAtWitness = 18 ∧ equalAtWitness = 20 := by decide +kernel

theorem witness_deltas_genres : actsOfRecord.all witnessDeltasRemet = true ∧ actsOfRecord.all witnessGenreRemet = true := by decide +kernel

theorem closure_at_witnesses : closureTwoOver witnessWorlds = true := by decide +kernel

theorem words_at_two : wordsAtTwo.all (fun p => p.snd) = true ∧ firstWordNotAtTwo = "NONE" ∧ wordsStatesAtTwo.all (fun t => t.snd.fst == t.snd.snd) = true := by decide +kernel

theorem record_within_read_bound : worldsOfRecordTwo.all WorldTwo.withinReadBound = true := by decide +kernel

theorem six_genres_of_record : worldTwoSix.genres = genres := by decide +kernel

theorem example_worlds : exampleWorldsTwo.map WorldTwo.oneDimension = [true, true, false, false, false] ∧ exampleWorldsTwo.all WorldTwo.withinReadBound = true := by decide +kernel

end AxiomDeclarationTwo
