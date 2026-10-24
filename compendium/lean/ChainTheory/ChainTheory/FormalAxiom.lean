import AxiomDeclarationTwo
import ActClosure
import AlphaDerivation.Axiom
set_option autoImplicit false

namespace ChainTheory.FormalAxiom

abbrev StructureOfRecord : Type := AxiomDeclarationTwo.WorldTwo

abbrev StructureFirstEdition : Type := AxiomDeclaration.World

abbrev Rule : Type := ActClosure.Act

def ruleOfRecord : List ActClosure.Act := ActClosure.actsOfRecord

def wordsOfTheAxiom : List String := AlphaDerivation.Axiom.wordsOfRecord

theorem words_eq_first_edition : wordsOfTheAxiom = AxiomDeclaration.Words.axiomOfRecord := by decide

theorem words_eq_rule : wordsOfTheAxiom = ActClosure.axiomOfRecord := by decide

theorem rule_count : ruleOfRecord.length = 38 := ActClosure.acts_count

def worldOfTheSixGenres : StructureOfRecord := AxiomDeclarationTwo.worldTwoSix

theorem six_genres_of_record : type_of% AxiomDeclarationTwo.six_genres_of_record := AxiomDeclarationTwo.six_genres_of_record

theorem acts_at_the_second_edition : type_of% AxiomDeclarationTwo.acts_counts := AxiomDeclarationTwo.acts_counts

theorem every_act_at_the_second_edition : type_of% AxiomDeclarationTwo.every_act_at_witness := AxiomDeclarationTwo.every_act_at_witness

theorem witnesses_by_genre : type_of% AxiomDeclarationTwo.witness_by_genre := AxiomDeclarationTwo.witness_by_genre

theorem closure_at_the_witnesses : type_of% AxiomDeclarationTwo.closure_at_witnesses := AxiomDeclarationTwo.closure_at_witnesses

theorem words_at_the_second_edition : type_of% AxiomDeclarationTwo.words_at_two := AxiomDeclarationTwo.words_at_two

theorem record_at_the_second_edition : type_of% AxiomDeclarationTwo.record_worlds_two := AxiomDeclarationTwo.record_worlds_two

theorem record_at_the_first_edition : type_of% AxiomDeclarationTwo.record_worlds_first := AxiomDeclarationTwo.record_worlds_first

theorem record_within_the_read_bound : type_of% AxiomDeclarationTwo.record_within_read_bound := AxiomDeclarationTwo.record_within_read_bound

theorem record_closure_A : type_of% AxiomDeclarationTwo.closure_two_A ∧ type_of% AxiomDeclarationTwo.instances_two_eq_web_A := ⟨AxiomDeclarationTwo.closure_two_A, AxiomDeclarationTwo.instances_two_eq_web_A⟩

theorem record_closure_B : type_of% AxiomDeclarationTwo.closure_two_B ∧ type_of% AxiomDeclarationTwo.instances_two_eq_web_B := ⟨AxiomDeclarationTwo.closure_two_B, AxiomDeclarationTwo.instances_two_eq_web_B⟩

theorem record_closure_C : type_of% AxiomDeclarationTwo.closure_two_C ∧ type_of% AxiomDeclarationTwo.instances_two_eq_web_C := ⟨AxiomDeclarationTwo.closure_two_C, AxiomDeclarationTwo.instances_two_eq_web_C⟩

theorem record_closure_D : type_of% AxiomDeclarationTwo.closure_two_D ∧ type_of% AxiomDeclarationTwo.instances_two_eq_web_D := ⟨AxiomDeclarationTwo.closure_two_D, AxiomDeclarationTwo.instances_two_eq_web_D⟩

theorem record_closure_E : type_of% AxiomDeclarationTwo.closure_two_E ∧ type_of% AxiomDeclarationTwo.instances_two_eq_web_E := ⟨AxiomDeclarationTwo.closure_two_E, AxiomDeclarationTwo.instances_two_eq_web_E⟩

theorem record_closure_F : type_of% AxiomDeclarationTwo.closure_two_F ∧ type_of% AxiomDeclarationTwo.instances_two_eq_web_F := ⟨AxiomDeclarationTwo.closure_two_F, AxiomDeclarationTwo.instances_two_eq_web_F⟩

theorem record_closure_whole : type_of% AxiomDeclarationTwo.shards_whole := AxiomDeclarationTwo.shards_whole

theorem first_edition_parting : type_of% AxiomDeclarationTwo.unequal_refused_at_first := AxiomDeclarationTwo.unequal_refused_at_first

theorem words_at_the_first_edition : type_of% AxiomDeclarationTwo.words_at_first := AxiomDeclarationTwo.words_at_first

theorem first_edition_embedded : type_of% AxiomDeclarationTwo.embedded_read_back := AxiomDeclarationTwo.embedded_read_back

end ChainTheory.FormalAxiom
