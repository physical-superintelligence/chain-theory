import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def sinkWebsFirst : List Web := (sinksOfRecord.take 22).map (fun s => s.web)

theorem closure_at_sinks_first : sinkWebsFirst.all (fun w => actsOfRecord.all (fun a => deltasRemet a w)) = true := by decide +kernel

end ActClosure
