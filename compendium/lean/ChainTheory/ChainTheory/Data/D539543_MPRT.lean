set_option maxRecDepth 100000

namespace ChainTheory.Data.D539543_MPRT

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQMR", value := "PORT-CLOSURE-LANDED" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQMR" && r.value == "PORT-CLOSURE-LANDED")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQMR" && r.value == "PORT-CLOSURE-LANDED")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D539543_MPRT
