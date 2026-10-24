import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure
open AxiomDeclaration

theorem acts_count : actsOfRecord.length = 38 := by decide +kernel

def actsByKind : List Nat := [Kind.attach, .joinWithin, .joinAcross, .hubForm].map (fun k => (actsOfRecord.filter (fun a => a.kind == k)).length)
theorem acts_by_kind : actsByKind = [12, 12, 12, 2] := by decide +kernel

def actsByDir : Nat × Nat := ((actsOfRecord.filter (fun a => a.dir == .forward)).length, (actsOfRecord.filter (fun a => a.dir == .inverse)).length)
theorem acts_by_dir : actsByDir = (19, 19) := by decide +kernel

def actsByGenre : List Nat := genres.map (fun g => (actsOfRecord.filter (fun a => a.genre == g)).length)
theorem acts_by_genre : actsByGenre = [8, 6, 6, 6, 6, 6] := by decide +kernel

theorem acts_at_a_move : actsAtAMove.length = 18 := by decide +kernel
theorem acts_at_no_move : actsAtNoMove.length = 20 := by decide +kernel

theorem moves_count : movesOfRecord.length = 28 := by decide +kernel
theorem clauses_count : clausesOfRecord.length = 7 := by decide +kernel
theorem refused_count : refusedOfRecord.length = 20 := by decide +kernel
theorem words_count : wordsOfRecord.length = 14 := by decide +kernel
theorem sinks_count : sinksOfRecord.length = 43 := by decide +kernel

theorem refused_eq_at_no_move : refusedOfRecord.map (fun r => r.act) = actsAtNoMove.map (fun a => a.label) := by decide +kernel

theorem sinks_well_formed : sinksOfRecord.all (fun s => s.web.wellFormed) = true := by decide +kernel

theorem sinks_membership : sinksOfRecord.all (fun s => s.web.membership == s.membership) = true := by decide +kernel

theorem ahead_well_formed : aheadWebs.all Web.wellFormed = true := by decide +kernel

theorem words_canonical_all : wordsCanonical.all (fun p => p.2) = true := by decide +kernel

theorem intermediates_all_admitted : intermediatesAdmitted.all (fun t => t.snd.fst == t.snd.snd) = true := by decide +kernel
theorem intermediates_total : (intermediatesAdmitted.map (fun t => t.snd.fst)).foldl (· + ·) 0 = 80 := by decide +kernel

theorem scope_remet : scopeRemet = true := by decide +kernel
theorem scope_remet_refused : scopeRemetAtRefused = true := by decide +kernel

theorem verdicts_remet_moves : verdictsRemetAtMoves = true := by decide +kernel
theorem verdicts_remet_refused : verdictsRemetAtRefused = true := by decide +kernel

theorem refusing_remet : refusingRemet = true := by decide +kernel

theorem refused_by_a_clause : refusedByAClause = ["A01", "A04"] := by decide +kernel
theorem refused_by_none_count : refusedByNone.length = 18 := by decide +kernel
theorem refused_by_none_first : refusedByNone.headD "NONE" = "A06" := by decide +kernel
theorem refusing_clauses_rule : refusingClauses = ["RULE"] := by decide +kernel

def withinClosure (m : MoveRow) : Bool := actsOfRecord.any (fun a => a.moves.contains m.id) || wordsOfRecord.any (fun r => r.id == m.id)

def movesWithinClosure : Nat × Nat × String :=
  ((movesOfRecord.filter withinClosure).length, movesOfRecord.length, ((movesOfRecord.find? (fun m => !(withinClosure m))).map (fun m => m.id)).getD "NONE")

theorem moves_within_closure : movesOfRecord.all withinClosure = true := by decide +kernel
theorem moves_at_an_act : (movesOfRecord.filter (fun m => actsOfRecord.any (fun a => a.moves.contains m.id))).length = 14 := by decide +kernel
theorem moves_as_words : (movesOfRecord.filter (fun m => wordsOfRecord.any (fun r => r.id == m.id))).length = 14 := by decide +kernel

def dataModulesCensus : List (String × Nat × String) :=
  [("Moves", 4, "CONSEQUENCE"), ("Index", 6, "CONSEQUENCE"), ("Scalars", 7, "DECLARATION"), ("Edges", 4, "DECLARATION"), ("Links", 12, "DECLARATION"),
   ("Sinks", 4, "DECLARATION"), ("Saturations", 9, "DECLARATION"), ("Chains", 8, "DECLARATION"), ("Budget", 12, "DECLARATION")]

theorem data_modules_counts : ((dataModulesCensus.filter (fun t => t.snd.snd == "CONSEQUENCE")).map (fun t => t.snd.fst)).foldl (· + ·) 0 = 10 ∧ ((dataModulesCensus.filter (fun t => t.snd.snd == "DECLARATION")).map (fun t => t.snd.fst)).foldl (· + ·) 0 = 56 := by decide +kernel

end ActClosure
