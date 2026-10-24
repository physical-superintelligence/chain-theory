set_option autoImplicit false

namespace AxiomDeclaration
namespace Words

def axiomOfRecord : List String := ["Nothing", "exists", "but", "finitely", "many", "maximally", "entangled", "pairs", "of", "qudits,", "some", "qudits", "shared,", "known", "only", "by", "distilling", "them."]

def axiomBox : List String := ["Nothing", "exists", "but", "finitely", "many", "maximally", "entangled", "pairs", "of", "qudits,", "some", "qudits", "shared,", "known", "only", "by", "distilling", "them."]

def quditOfRecord : List String := ["A", "finite-dimensional", "quantum", "system."]

def quditBox : List String := ["A", "finite-dimensional", "quantum", "system."]

def sharedOfRecord : List String := ["A", "qudit", "that", "is", "one", "end", "of", "two", "or", "more", "pairs."]

def sharedBox : List String := ["A", "qudit", "that", "is", "one", "end", "of", "two", "or", "more", "pairs."]

def distillingOfRecord : List String := ["Projecting", "any", "two", "qudits", "onto", "a", "pair", "on", "their", "common", "support."]

def distillingBox : List String := ["Projecting", "any", "two", "qudits", "onto", "a", "pair", "on", "their", "common", "support."]

def readOfRecord : List String := ["A", "distillation", "of", "a", "qudit", "with", "another,", "in", "one", "of", "its", "bases,", "one", "read", "for", "each", "basis.", "A", "read", "gives", "the", "qudit", "its", "only", "basis,", "one", "direction", "for", "each", "pair", "the", "qudit", "meets,", "and", "passes", "that", "basis", "along", "each", "pair", "to", "its", "far", "end."]

def readBox : List String := ["A", "distillation", "of", "a", "qudit", "with", "another,", "in", "one", "of", "its", "bases,", "one", "read", "for", "each", "basis.", "A", "read", "gives", "the", "qudit", "its", "only", "basis,", "one", "direction", "for", "each", "pair", "the", "qudit", "meets,", "and", "passes", "that", "basis", "along", "each", "pair", "to", "its", "far", "end."]

def knownOfRecord : List String := ["What", "is", "known", "of", "a", "qudit", "is", "what", "all", "its", "reads,", "taken", "jointly,", "fix", "with", "certainty,", "whichever", "way", "basis", "directions", "are", "matched", "across", "its", "pairs.", "Two", "reads", "that", "commute", "only", "up", "to", "a", "sign", "are", "a", "further", "record,", "their", "order", "the", "sign."]

def knownBox : List String := ["What", "is", "known", "of", "a", "qudit", "is", "what", "all", "its", "reads,", "taken", "jointly,", "fix", "with", "certainty,", "whichever", "way", "basis", "directions", "are", "matched", "across", "its", "pairs.", "Two", "reads", "that", "commute", "only", "up", "to", "a", "sign", "are", "a", "further", "record,", "their", "order", "the", "sign."]

structure BoxRow where
  sec : Nat
  ordinal : Nat
  title : String
  label : String
  deriving DecidableEq, Repr

def boxes : List BoxRow := [⟨1, 1, "The axiom", "box:FRAMEWORK:1"⟩, ⟨1, 2, "Qudit", "box:FRAMEWORK:2"⟩, ⟨1, 3, "Shared", "box:FRAMEWORK:3"⟩, ⟨1, 4, "Distilling", "box:FRAMEWORK:4"⟩, ⟨1, 5, "Read", "box:FRAMEWORK:5"⟩, ⟨1, 6, "Known", "box:FRAMEWORK:6"⟩]

theorem axiom_tokens : axiomOfRecord.length = 18 := by decide

theorem axiom_box_eq_record : axiomBox = axiomOfRecord := by decide

theorem qudit_box_eq_record : quditBox = quditOfRecord := by decide

theorem shared_box_eq_record : sharedBox = sharedOfRecord := by decide

theorem distilling_box_eq_record : distillingBox = distillingOfRecord := by decide

theorem read_box_eq_record : readBox = readOfRecord := by decide

theorem known_box_eq_record : knownBox = knownOfRecord := by decide

theorem finitely_present : axiomOfRecord.contains "finitely" = true := by decide

theorem boxes_count : boxes.length = 6 := by decide

theorem boxes_section : boxes.all (fun r => r.sec == 1) = true := by decide

theorem boxes_titles : boxes.map (fun r => r.title) = ["The axiom", "Qudit", "Shared", "Distilling", "Read", "Known"] := by decide

end Words
end AxiomDeclaration
