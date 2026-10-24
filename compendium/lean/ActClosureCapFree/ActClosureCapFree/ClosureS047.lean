import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS047
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S047 : statesS047.all stateWithinBound = true := by decide +kernel

theorem closed_S047 : closedShard stateAt statesS047 stepsS047 = true := by decide +kernel

theorem across_S047 : acrossShard stateAt smallIndexed statesS047 acrossS047 = true := by decide +kernel

theorem counts_S047 : statesS047.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
