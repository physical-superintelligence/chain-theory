import ActClosureCapFree

set_option autoImplicit false
set_option maxRecDepth 100000
open ActClosureCapFree ActClosure
#eval allStates.length
#eval bySites allStates
#eval maxCountsOver allStates
#eval oneDimensionCount allStates
#eval maxCountsOver (allStates.filter ActClosure.Web.oneDimension)
#eval forwardSinksCount
#eval capsOfRecord
#eval capGenres
#eval capsModulesOfRecord.length
#eval declarationsResting
#eval capsModulesOfRecord.map (fun m => (m.name, m.declarations, m.hash))
#eval firstAtOrOverCap capsOfRecord allStates
#eval seedIndices
#eval (genreLinks.zip seedIndices).map (fun p => stateAt p.2 == p.1)
#eval smallStates.length
#eval siteBound
#eval statesAsWorlds.length
#eval (allStates.filter ActClosure.Web.isWorld).length
#eval (allStates.map (fun w => w.links.length)).foldl max 0
#eval acrossIndexed.length
#eval actsOfRecord.length
#eval closedAll
#eval acrossAll
