import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS087
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S087 : statesS087.all stateWithinBound = true := by decide +kernel

theorem closed_S087 : closedShard stateAt statesS087 stepsS087 = true := by decide +kernel

theorem across_S087 : acrossShard stateAt smallIndexed statesS087 acrossS087 = true := by decide +kernel

theorem counts_S087 : statesS087.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
