namespace ChainTheory.Data.D531968_AMBL

structure Row where
  key : String
  E1 : String
  E2 : String
  letter : String
deriving Repr

def rows : List Row := [
  { key := "C-EQLA", E1 := "YES", E2 := "YES", letter := "COMPOSED" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "C-EQLA" && r.E1 == "YES" && r.E2 == "YES" && r.letter == "COMPOSED")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "C-EQLA" && r.E1 == "YES" && r.E2 == "YES" && r.letter == "COMPOSED")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D531968_AMBL
