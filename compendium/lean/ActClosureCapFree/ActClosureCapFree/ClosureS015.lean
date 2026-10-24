import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS015
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S015 : statesS015.all stateWithinBound = true := by decide +kernel

theorem closed_S015 : closedShard stateAt statesS015 stepsS015 = true := by decide +kernel

theorem across_S015 : acrossShard stateAt smallIndexed statesS015 acrossS015 = true := by decide +kernel

theorem counts_S015 : statesS015.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
