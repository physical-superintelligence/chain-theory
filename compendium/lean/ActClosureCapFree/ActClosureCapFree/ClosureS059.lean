import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS059
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S059 : statesS059.all stateWithinBound = true := by decide +kernel

theorem closed_S059 : closedShard stateAt statesS059 stepsS059 = true := by decide +kernel

theorem across_S059 : acrossShard stateAt smallIndexed statesS059 acrossS059 = true := by decide +kernel

theorem counts_S059 : statesS059.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
