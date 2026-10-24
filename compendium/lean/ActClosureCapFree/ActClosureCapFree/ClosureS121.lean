import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS121
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S121 : statesS121.all stateWithinBound = true := by decide +kernel

theorem closed_S121 : closedShard stateAt statesS121 stepsS121 = true := by decide +kernel

theorem across_S121 : acrossShard stateAt smallIndexed statesS121 acrossS121 = true := by decide +kernel

theorem counts_S121 : statesS121.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
