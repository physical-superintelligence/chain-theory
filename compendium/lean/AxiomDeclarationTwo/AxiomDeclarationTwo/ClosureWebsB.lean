import AxiomDeclarationTwo.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act actsOfRecord sinksOfRecord aheadWebs)

def shardWorldsB : List WorldTwo := (((sinksOfRecord.drop 22).take 11).map (fun s => s.web)).filterMap webToWorldTwo?

theorem closure_two_B : closureTwoOver shardWorldsB = true := by decide +kernel

theorem instances_two_eq_web_B : (shardWorldsB.map (fun w => actsOfRecord.map (fun a => (actInstancesTwo a w).length))) = (shardWorldsB.map (fun w => actsOfRecord.map (fun a => (a.instances (worldTwoToWeb w)).length))) := by decide +kernel

end AxiomDeclarationTwo
