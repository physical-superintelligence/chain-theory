set_option maxRecDepth 100000

namespace ChainTheory.Data.D537780_NSNG

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQNN", value := "NODE-OUTPUT" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQNN" && r.value == "NODE-OUTPUT")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQNN" && r.value == "NODE-OUTPUT")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D537780_NSNG
