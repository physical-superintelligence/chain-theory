import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS013
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S013 : statesS013.all stateWithinBound = true := by decide +kernel

theorem closed_S013 : closedShard stateAt statesS013 stepsS013 = true := by decide +kernel

theorem across_S013 : acrossShard stateAt smallIndexed statesS013 acrossS013 = true := by decide +kernel

theorem counts_S013 : statesS013.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
