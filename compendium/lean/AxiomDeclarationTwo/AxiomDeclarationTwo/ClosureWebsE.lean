import AxiomDeclarationTwo.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act actsOfRecord sinksOfRecord aheadWebs)

def shardWorldsE : List WorldTwo := ((aheadWebs.drop 7).take 4).filterMap webToWorldTwo?

theorem closure_two_E : closureTwoOver shardWorldsE = true := by decide +kernel

theorem instances_two_eq_web_E : (shardWorldsE.map (fun w => actsOfRecord.map (fun a => (actInstancesTwo a w).length))) = (shardWorldsE.map (fun w => actsOfRecord.map (fun a => (a.instances (worldTwoToWeb w)).length))) := by decide +kernel

end AxiomDeclarationTwo
