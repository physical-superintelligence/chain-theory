set_option maxRecDepth 100000

namespace ChainTheory.Data.D536819_AUSC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "C-EQCA", value := "CONE" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "C-EQCA" && r.value == "CONE")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "C-EQCA" && r.value == "CONE")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D536819_AUSC
