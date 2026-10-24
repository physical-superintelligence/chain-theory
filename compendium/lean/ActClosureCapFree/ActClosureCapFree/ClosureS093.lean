import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS093
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S093 : statesS093.all stateWithinBound = true := by decide +kernel

theorem closed_S093 : closedShard stateAt statesS093 stepsS093 = true := by decide +kernel

theorem across_S093 : acrossShard stateAt smallIndexed statesS093 acrossS093 = true := by decide +kernel

theorem counts_S093 : statesS093.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
