import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks
import ActClosure.ClosureWebsA

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def sinkWebsMiddle : List Web := ((sinksOfRecord.drop 22).take 11).map (fun s => s.web)

theorem closure_at_sinks_middle : sinkWebsMiddle.all (fun w => actsOfRecord.all (fun a => deltasRemet a w)) = true := by decide +kernel

end ActClosure
