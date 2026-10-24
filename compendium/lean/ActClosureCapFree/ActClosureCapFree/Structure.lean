import ActClosureCapFree.Closure
import ActClosure.Structure
import AxiomDeclarationTwo.Acts
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree
open AxiomDeclarationTwo (WorldTwo webToWorldTwo? isWorldTwo)

def statesAsWorlds : List WorldTwo := allStates.filterMap webToWorldTwo?

theorem every_state_a_world_two : (allStates.all isWorldTwo && statesAsWorlds.length == 7698) = true := by decide +kernel

theorem first_edition_worlds : (allStates.filter ActClosure.Web.isWorld).length = 165 := by decide +kernel

theorem seeds_worlds : (genreLinks.all isWorldTwo && (genreLinks.filter ActClosure.Web.isWorld).length == 3) = true := by decide +kernel
end ActClosureCapFree
