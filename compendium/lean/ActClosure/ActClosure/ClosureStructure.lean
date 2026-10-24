import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure
open AxiomDeclaration

theorem closure_at_structure : worldsOfRecord.all (fun w => actsOfRecord.all (fun a => (a.instancesWorld w).all (fun p => match a.applyWorld w p.1 p.2 with
  | none => false
  | some v => v.pairs.all (pairAdmitted v.dim) && (worldToWeb v).wellFormed))) = true := by decide +kernel

theorem structure_restricts_web : worldsOfRecord.all (fun w => actsOfRecord.all (fun a => (a.args (worldToWeb w)).all (fun p => a.admittedWorld w p.1 p.2 == (a.admitted (worldToWeb w) p.1 p.2 && (a.rewrite (worldToWeb w) p.1 p.2).isWorld)))) = true := by decide +kernel

theorem world_iff_equal_genres : websOfRecord.all (fun w => w.isWorld == w.equalGenres) = true := by decide +kernel

theorem unequal_acts_refused_at_structure : unequalActs.all (fun a => worldsOfRecord.all (fun w => (a.instancesWorld w).isEmpty)) = true := by decide +kernel

theorem unequal_acts_count : unequalActs.length = 18 := by decide +kernel

end ActClosure
