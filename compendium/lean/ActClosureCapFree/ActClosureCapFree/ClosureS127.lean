import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS127
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S127 : statesS127.all stateWithinBound = true := by decide +kernel

theorem closed_S127 : closedShard stateAt statesS127 stepsS127 = true := by decide +kernel

theorem across_S127 : acrossShard stateAt smallIndexed statesS127 acrossS127 = true := by decide +kernel

theorem counts_S127 : statesS127.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
