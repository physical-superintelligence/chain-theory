import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS035
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S035 : statesS035.all stateWithinBound = true := by decide +kernel

theorem closed_S035 : closedShard stateAt statesS035 stepsS035 = true := by decide +kernel

theorem across_S035 : acrossShard stateAt smallIndexed statesS035 acrossS035 = true := by decide +kernel

theorem counts_S035 : statesS035.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
