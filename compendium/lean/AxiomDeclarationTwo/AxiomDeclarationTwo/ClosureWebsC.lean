import AxiomDeclarationTwo.Sinks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act actsOfRecord sinksOfRecord aheadWebs)

def shardWorldsC : List WorldTwo := ((sinksOfRecord.drop 33).map (fun s => s.web)).filterMap webToWorldTwo?

theorem closure_two_C : closureTwoOver shardWorldsC = true := by decide +kernel

theorem instances_two_eq_web_C : (shardWorldsC.map (fun w => actsOfRecord.map (fun a => (actInstancesTwo a w).length))) = (shardWorldsC.map (fun w => actsOfRecord.map (fun a => (a.instances (worldTwoToWeb w)).length))) := by decide +kernel

end AxiomDeclarationTwo
