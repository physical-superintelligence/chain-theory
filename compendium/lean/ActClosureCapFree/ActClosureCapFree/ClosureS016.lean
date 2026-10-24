import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS016
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S016 : statesS016.all stateWithinBound = true := by decide +kernel

theorem closed_S016 : closedShard stateAt statesS016 stepsS016 = true := by decide +kernel

theorem across_S016 : acrossShard stateAt smallIndexed statesS016 acrossS016 = true := by decide +kernel

theorem counts_S016 : statesS016.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
