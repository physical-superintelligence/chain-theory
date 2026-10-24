import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks
import ActClosure.ClosureWebsA
import ActClosure.ClosureWebsD

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def sinkWebsLast : List Web := (sinksOfRecord.drop 33).map (fun s => s.web)

theorem closure_at_sinks_last : sinkWebsLast.all (fun w => actsOfRecord.all (fun a => deltasRemet a w)) = true := by decide +kernel

theorem sinks_split : sinkWebsFirst.length + sinkWebsMiddle.length + sinkWebsLast.length = 43 := by decide +kernel

end ActClosure
