namespace ChainTheory.Data.D531550_SSDI

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqds.face", value := "A" },
  { key := "eqds.first.standing", value := "NONE" }
]

theorem check_1 : rows.length = 2 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqds.first.standing" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 2) /\
    ((rows.filter (fun r => r.key == "eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqds.first.standing" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (check_3))

end ChainTheory.Data.D531550_SSDI
