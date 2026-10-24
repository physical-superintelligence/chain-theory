import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS020
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S020 : statesS020.all stateWithinBound = true := by decide +kernel

theorem closed_S020 : closedShard stateAt statesS020 stepsS020 = true := by decide +kernel

theorem across_S020 : acrossShard stateAt smallIndexed statesS020 acrossS020 = true := by decide +kernel

theorem counts_S020 : statesS020.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
