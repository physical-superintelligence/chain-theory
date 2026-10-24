import AxiomDeclarationTwo.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act actsOfRecord sinksOfRecord aheadWebs)

def shardWorldsF : List WorldTwo := (aheadWebs.drop 11).filterMap webToWorldTwo?

theorem closure_two_F : closureTwoOver shardWorldsF = true := by decide +kernel

theorem instances_two_eq_web_F : (shardWorldsF.map (fun w => actsOfRecord.map (fun a => (actInstancesTwo a w).length))) = (shardWorldsF.map (fun w => actsOfRecord.map (fun a => (a.instances (worldTwoToWeb w)).length))) := by decide +kernel

end AxiomDeclarationTwo
