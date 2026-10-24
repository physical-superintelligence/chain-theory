namespace ChainTheory.Data.D531081_GPOE

structure Row where
  cell : String
  value_E1 : String
  value_E2 : String
  letter : String
deriving Repr

def rows : List Row := [
  { cell := "C-EQGL", value_E1 := "YES", value_E2 := "YES", letter := "MEASURE" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.cell == "C-EQGL" && r.value_E1 == "YES" && r.value_E2 == "YES" && r.letter == "MEASURE")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.cell == "C-EQGL" && r.value_E1 == "YES" && r.value_E2 == "YES" && r.letter == "MEASURE")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D531081_GPOE
