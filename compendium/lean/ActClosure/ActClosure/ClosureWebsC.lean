import ActClosure.Web
import ActClosure.Structure
import ActClosure.Clauses
import ActClosure.Words
import ActClosure.Sinks
import ActClosure.ClosureWebsB

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def aheadWebsLast : List Web := aheadWebs.drop 7

theorem closure_at_ahead_last : aheadWebsLast.all (fun w => actsOfRecord.all (fun a => deltasRemet a w)) = true := by decide +kernel

theorem ahead_split : aheadWebsFirst.length + aheadWebsLast.length = 14 := by decide +kernel

end ActClosure
