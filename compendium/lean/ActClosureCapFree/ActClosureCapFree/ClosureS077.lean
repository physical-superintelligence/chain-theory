import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS077
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S077 : statesS077.all stateWithinBound = true := by decide +kernel

theorem closed_S077 : closedShard stateAt statesS077 stepsS077 = true := by decide +kernel

theorem across_S077 : acrossShard stateAt smallIndexed statesS077 acrossS077 = true := by decide +kernel

theorem counts_S077 : statesS077.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
