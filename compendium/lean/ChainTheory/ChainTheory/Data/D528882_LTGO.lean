namespace ChainTheory.Data.D528882_LTGO

structure Row where
  code : String
  name : String
  cell : String
  cell_value : String
  letter : String
deriving Repr

def rows : List Row := [
  { code := "EQOV", name := "EQOT", cell := "C-EQOT", cell_value := "YES", letter := "EXACT" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.cell == "C-EQOT" && r.cell_value == "YES" && r.letter == "EXACT")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.cell == "C-EQOT" && r.cell_value == "YES" && r.letter == "EXACT")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D528882_LTGO
