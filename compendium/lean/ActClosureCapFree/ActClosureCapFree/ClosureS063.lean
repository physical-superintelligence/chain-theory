import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS063
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S063 : statesS063.all stateWithinBound = true := by decide +kernel

theorem closed_S063 : closedShard stateAt statesS063 stepsS063 = true := by decide +kernel

theorem across_S063 : acrossShard stateAt smallIndexed statesS063 acrossS063 = true := by decide +kernel

theorem counts_S063 : statesS063.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
