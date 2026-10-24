import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS034
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S034 : statesS034.all stateWithinBound = true := by decide +kernel

theorem closed_S034 : closedShard stateAt statesS034 stepsS034 = true := by decide +kernel

theorem across_S034 : acrossShard stateAt smallIndexed statesS034 acrossS034 = true := by decide +kernel

theorem counts_S034 : statesS034.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
