set_option maxRecDepth 100000

namespace ChainTheory.Data.D539571_EPCL

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQEP", value := "ELECTRON-PAIR-CLOSURE-LANDED" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQEP" && r.value == "ELECTRON-PAIR-CLOSURE-LANDED")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQEP" && r.value == "ELECTRON-PAIR-CLOSURE-LANDED")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D539571_EPCL
