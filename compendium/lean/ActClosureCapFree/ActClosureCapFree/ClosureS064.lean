import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS064
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S064 : statesS064.all stateWithinBound = true := by decide +kernel

theorem closed_S064 : closedShard stateAt statesS064 stepsS064 = true := by decide +kernel

theorem across_S064 : acrossShard stateAt smallIndexed statesS064 acrossS064 = true := by decide +kernel

theorem counts_S064 : statesS064.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
