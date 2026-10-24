import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS038
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S038 : statesS038.all stateWithinBound = true := by decide +kernel

theorem closed_S038 : closedShard stateAt statesS038 stepsS038 = true := by decide +kernel

theorem across_S038 : acrossShard stateAt smallIndexed statesS038 acrossS038 = true := by decide +kernel

theorem counts_S038 : statesS038.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
