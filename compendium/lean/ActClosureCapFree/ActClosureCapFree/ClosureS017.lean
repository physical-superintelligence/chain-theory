import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS017
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S017 : statesS017.all stateWithinBound = true := by decide +kernel

theorem closed_S017 : closedShard stateAt statesS017 stepsS017 = true := by decide +kernel

theorem across_S017 : acrossShard stateAt smallIndexed statesS017 acrossS017 = true := by decide +kernel

theorem counts_S017 : statesS017.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
