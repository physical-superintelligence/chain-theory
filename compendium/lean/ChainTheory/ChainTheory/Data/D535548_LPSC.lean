set_option maxRecDepth 100000

namespace ChainTheory.Data.D535548_LPSC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "C-EQCP", value := "ONE-PAIRING-NAMED" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "C-EQCP" && r.value == "ONE-PAIRING-NAMED")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "C-EQCP" && r.value == "ONE-PAIRING-NAMED")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D535548_LPSC
