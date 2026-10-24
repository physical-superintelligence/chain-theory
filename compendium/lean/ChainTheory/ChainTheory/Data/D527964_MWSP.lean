namespace ChainTheory.Data.D527964_MWSP

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqsp.built", value := "5 of 5" },
  { key := "eqsp.face", value := "A" },
  { key := "eqsp.first.failure", value := "NONE" },
  { key := "eqsp.letter", value := "BUILT" },
  { key := "eqsp.readings.built", value := "10 of 10" },
  { key := "web.M12b.built", value := "1 of 1" },
  { key := "web.M18b.built", value := "1 of 1" },
  { key := "web.M29b.built", value := "4 of 4" },
  { key := "web.M30a.built", value := "2 of 2" },
  { key := "web.M33a.built", value := "2 of 2" },
  { key := "cell.C-EQSP", value := "YES" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQSP" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqsp.built" && r.value == "5 of 5")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqsp.readings.built" && r.value == "10 of 10")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqsp.letter" && r.value == "BUILT")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqsp.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqsp.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQSP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsp.built" && r.value == "5 of 5")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsp.readings.built" && r.value == "10 of 10")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsp.letter" && r.value == "BUILT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsp.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsp.first.failure" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527964_MWSP
