import AxiomDeclaration

set_option autoImplicit false
open AxiomDeclaration
#eval Words.axiomOfRecord.length
#eval Words.axiomOfRecord
#eval Words.boxes.length
#eval Words.boxes.map (fun r => r.title)
#eval worldThree.qudits
#eval worldThree.pairs.length
#eval worldThree.sharedQudits
#eval worldThree.someShared
#eval (worldThree.allQudits.map (fun q => (q, worldThree.valence q, worldThree.shared q, worldThree.known q)))
#eval (worldThree.readsOf (0 : Fin 3)).length
#eval worldThree.record (1 : Fin 3)
#eval (worldThree.furtherRecord (1 : Fin 3)).length
#eval worldOne.sharedQudits
#eval worldOne.someShared
#eval worldOne.known (0 : Fin 2)
