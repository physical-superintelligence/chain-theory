import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def aheadWebsFirst : List Web := aheadWebs.take 7

theorem closure_at_ahead_first : aheadWebsFirst.all (fun w => actsOfRecord.all (fun a => deltasRemet a w)) = true := by decide +kernel

end ActClosure
