import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS003
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S003 : statesS003.all stateWithinBound = true := by decide +kernel

theorem closed_S003 : closedShard stateAt statesS003 stepsS003 = true := by decide +kernel

theorem across_S003 : acrossShard stateAt smallIndexed statesS003 acrossS003 = true := by decide +kernel

theorem counts_S003 : statesS003.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
