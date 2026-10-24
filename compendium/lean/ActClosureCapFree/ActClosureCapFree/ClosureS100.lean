import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS100
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S100 : statesS100.all stateWithinBound = true := by decide +kernel

theorem closed_S100 : closedShard stateAt statesS100 stepsS100 = true := by decide +kernel

theorem across_S100 : acrossShard stateAt smallIndexed statesS100 acrossS100 = true := by decide +kernel

theorem counts_S100 : statesS100.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
