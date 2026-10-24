namespace ChainTheory.Data.D532679_NOSG

structure Row where
  code : String
  reading : String
  moved_count : Int
  one_end_count : Int
  cell : String
deriving Repr

def rows : List Row := [
  { code := "EQNY", reading := "P", moved_count := 0, one_end_count := 271, cell := "YES" },
  { code := "EQNY", reading := "U", moved_count := 0, one_end_count := 271, cell := "YES" },
  { code := "EQNY", reading := "C", moved_count := 64, one_end_count := 271, cell := "-" },
  { code := "EQNY", reading := "C-ANY-READING", moved_count := 94, one_end_count := 271, cell := "-" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.reading == "P" && r.moved_count == 0 && r.cell == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.reading == "U" && r.moved_count == 0 && r.cell == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.cell == "YES")).length = 2 := by decide

theorem check_5 : rows.all (fun r => r.one_end_count == 271) = true := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.reading == "P" && r.moved_count == 0 && r.cell == "YES")).length = 1) /\
    ((rows.filter (fun r => r.reading == "U" && r.moved_count == 0 && r.cell == "YES")).length = 1) /\
    ((rows.filter (fun r => r.cell == "YES")).length = 2) /\
    (rows.all (fun r => r.one_end_count == 271) = true) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D532679_NOSG
