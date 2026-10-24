import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS001
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S001 : statesS001.all stateWithinBound = true := by decide +kernel

theorem closed_S001 : closedShard stateAt statesS001 stepsS001 = true := by decide +kernel

theorem across_S001 : acrossShard stateAt smallIndexed statesS001 acrossS001 = true := by decide +kernel

theorem counts_S001 : statesS001.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
