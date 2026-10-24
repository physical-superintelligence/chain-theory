import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS029
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S029 : statesS029.all stateWithinBound = true := by decide +kernel

theorem closed_S029 : closedShard stateAt statesS029 stepsS029 = true := by decide +kernel

theorem across_S029 : acrossShard stateAt smallIndexed statesS029 acrossS029 = true := by decide +kernel

theorem counts_S029 : statesS029.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
