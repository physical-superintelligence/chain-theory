namespace ChainTheory.Data.D532628_NKS2

structure Row where
  code : String
  reading : String
  definite_and_fixed : String
  letters_KIT : String
  letter : String
  first_moving : String
  faceA : String
  faceB_moving : String
  cell : String
deriving Repr

def rows : List Row := [
  { code := "EQNL", reading := "R-PAIR", definite_and_fixed := "7 of 7", letters_KIT := "SYMMETRIC:7", letter := "THEOREM", first_moving := "NONE", faceA := "YES", faceB_moving := "NO", cell := "YES" },
  { code := "EQNL", reading := "R-WHOLE", definite_and_fixed := "0 of 7", letters_KIT := "NEITHER:7", letter := "FIRST-OBJECT-NAMED", first_moving := "NONE", faceA := "NO", faceB_moving := "NO", cell := "NO" }
]

theorem check_1 : rows.length = 2 := by decide

theorem check_2 : (rows.filter (fun r => r.reading == "R-PAIR" && r.definite_and_fixed == "7 of 7" && r.letter == "THEOREM" && r.faceA == "YES" && r.cell == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.reading == "R-WHOLE" && r.definite_and_fixed == "0 of 7" && r.letter == "FIRST-OBJECT-NAMED" && r.faceA == "NO" && r.cell == "NO")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.first_moving == "NONE")).length = 2 := by decide

theorem checks :
    (rows.length = 2) /\
    ((rows.filter (fun r => r.reading == "R-PAIR" && r.definite_and_fixed == "7 of 7" && r.letter == "THEOREM" && r.faceA == "YES" && r.cell == "YES")).length = 1) /\
    ((rows.filter (fun r => r.reading == "R-WHOLE" && r.definite_and_fixed == "0 of 7" && r.letter == "FIRST-OBJECT-NAMED" && r.faceA == "NO" && r.cell == "NO")).length = 1) /\
    ((rows.filter (fun r => r.first_moving == "NONE")).length = 2) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D532628_NKS2
