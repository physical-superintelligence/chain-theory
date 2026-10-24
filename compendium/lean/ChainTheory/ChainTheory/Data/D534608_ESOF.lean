set_option maxRecDepth 100000

namespace ChainTheory.Data.D534608_ESOF

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqeo.face", value := "A" },
  { key := "eqeo.first.parting.cells", value := "NONE" },
  { key := "eqeo.first.parting.row", value := "NONE" },
  { key := "eqeo.letter", value := "FUNCTION" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqeo.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqeo.first.parting.cells" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqeo.first.parting.row" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqeo.letter" && r.value == "FUNCTION")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "eqeo.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqeo.first.parting.cells" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqeo.first.parting.row" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqeo.letter" && r.value == "FUNCTION")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D534608_ESOF
