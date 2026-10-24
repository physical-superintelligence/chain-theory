set_option autoImplicit false

namespace AlphaDerivation
namespace Axiom

def wordsOfRecord : List String := ["Nothing", "exists", "but", "finitely", "many", "maximally", "entangled", "pairs", "of", "qudits,", "some", "qudits", "shared,", "known", "only", "by", "distilling", "them."]

def finitenessWord : List String := ["finitely", "many"]

def wordsOfTheEdition : List String := ["Nothing", "exists", "but", "maximally", "entangled", "pairs", "of", "qudits,", "some", "qudits", "shared,", "known", "only", "by", "distilling", "them."]

def sentenceOfRecord : String := String.intercalate " " wordsOfRecord

def sentenceOfTheEdition : String := String.intercalate " " wordsOfTheEdition

def beginsWith : List String → List String → Bool
  | _, [] => true
  | [], _ :: _ => false
  | a :: as, b :: bs => a == b && beginsWith as bs

def strikeFirst (p : List String) : List String → List String
  | [] => []
  | a :: as => if beginsWith (a :: as) p then (a :: as).drop p.length else a :: strikeFirst p as

def occurrences (p : List String) : List String → Nat
  | [] => 0
  | a :: as => (if beginsWith (a :: as) p then 1 else 0) + occurrences p as

theorem of_record_tokens : wordsOfRecord.length = 18 := by decide

theorem of_the_edition_tokens : wordsOfTheEdition.length = 16 := by decide

theorem finiteness_word_tokens : finitenessWord.length = 2 := by decide

theorem struck_once : strikeFirst finitenessWord wordsOfRecord = wordsOfTheEdition := by decide

theorem finiteness_word_occurs_once_of_record : occurrences finitenessWord wordsOfRecord = 1 := by decide

theorem finiteness_word_absent_at_the_edition : occurrences finitenessWord wordsOfTheEdition = 0 := by decide

theorem finitely_absent : wordsOfTheEdition.contains "finitely" = false := by decide

theorem many_absent : wordsOfTheEdition.contains "many" = false := by decide

theorem finitely_present_of_record : wordsOfRecord.contains "finitely" = true := by decide

theorem one_word_fewer : wordsOfRecord.length = wordsOfTheEdition.length + finitenessWord.length := by decide

theorem every_other_word_kept : strikeFirst finitenessWord wordsOfRecord = wordsOfTheEdition ∧ (wordsOfRecord.filter (fun w => !(finitenessWord.contains w))) = wordsOfTheEdition := by decide

theorem sentence_of_the_edition_spelled : sentenceOfTheEdition = "Nothing exists but maximally entangled pairs of qudits, some qudits shared, known only by distilling them." := by decide

theorem sentence_of_record_spelled : sentenceOfRecord = "Nothing exists but finitely many maximally entangled pairs of qudits, some qudits shared, known only by distilling them." := by decide

end Axiom
end AlphaDerivation
