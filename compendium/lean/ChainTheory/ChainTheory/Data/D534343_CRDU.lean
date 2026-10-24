set_option maxRecDepth 100000

namespace ChainTheory.Data.D534343_CRDU

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "C-EQCR", value := "TRAVERSED" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "C-EQCR" && r.value == "TRAVERSED")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "C-EQCR" && r.value == "TRAVERSED")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D534343_CRDU
