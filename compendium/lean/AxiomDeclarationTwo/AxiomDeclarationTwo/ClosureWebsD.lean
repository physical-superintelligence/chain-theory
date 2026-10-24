import AxiomDeclarationTwo.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act actsOfRecord sinksOfRecord aheadWebs)

def shardWorldsD : List WorldTwo := (aheadWebs.take 7).filterMap webToWorldTwo?

theorem closure_two_D : closureTwoOver shardWorldsD = true := by decide +kernel

theorem instances_two_eq_web_D : (shardWorldsD.map (fun w => actsOfRecord.map (fun a => (actInstancesTwo a w).length))) = (shardWorldsD.map (fun w => actsOfRecord.map (fun a => (a.instances (worldTwoToWeb w)).length))) := by decide +kernel

end AxiomDeclarationTwo
