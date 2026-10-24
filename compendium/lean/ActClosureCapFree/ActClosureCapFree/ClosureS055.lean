import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS055
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S055 : statesS055.all stateWithinBound = true := by decide +kernel

theorem closed_S055 : closedShard stateAt statesS055 stepsS055 = true := by decide +kernel

theorem across_S055 : acrossShard stateAt smallIndexed statesS055 acrossS055 = true := by decide +kernel

theorem counts_S055 : statesS055.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
