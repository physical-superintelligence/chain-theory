import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS050
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S050 : statesS050.all stateWithinBound = true := by decide +kernel

theorem closed_S050 : closedShard stateAt statesS050 stepsS050 = true := by decide +kernel

theorem across_S050 : acrossShard stateAt smallIndexed statesS050 acrossS050 = true := by decide +kernel

theorem counts_S050 : statesS050.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
