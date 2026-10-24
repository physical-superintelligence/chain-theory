set_option maxRecDepth 100000

namespace ChainTheory.Data.D537113_RCTJ

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQJB", value := "THEOREM-OF-THE-JOINED-SQUARE" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQJB" && r.value == "THEOREM-OF-THE-JOINED-SQUARE")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQJB" && r.value == "THEOREM-OF-THE-JOINED-SQUARE")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D537113_RCTJ
