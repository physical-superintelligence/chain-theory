set_option maxRecDepth 100000

namespace ChainTheory.Data.D538156_SBJW

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQSB", value := "THE-SCALE-BODY-THE-JOINED-WEB" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQSB" && r.value == "THE-SCALE-BODY-THE-JOINED-WEB")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQSB" && r.value == "THE-SCALE-BODY-THE-JOINED-WEB")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D538156_SBJW
