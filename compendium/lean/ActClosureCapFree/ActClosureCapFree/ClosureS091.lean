import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS091
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S091 : statesS091.all stateWithinBound = true := by decide +kernel

theorem closed_S091 : closedShard stateAt statesS091 stepsS091 = true := by decide +kernel

theorem across_S091 : acrossShard stateAt smallIndexed statesS091 acrossS091 = true := by decide +kernel

theorem counts_S091 : statesS091.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
