import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS060
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S060 : statesS060.all stateWithinBound = true := by decide +kernel

theorem closed_S060 : closedShard stateAt statesS060 stepsS060 = true := by decide +kernel

theorem across_S060 : acrossShard stateAt smallIndexed statesS060 acrossS060 = true := by decide +kernel

theorem counts_S060 : statesS060.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
