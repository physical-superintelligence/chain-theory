namespace ChainTheory.Data.D527696_MWMB

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqmb.measurements", value := "11" },
  { key := "eqmb.built", value := "11 of 11" },
  { key := "eqmb.webs.total", value := "70" },
  { key := "eqmb.first.failure", value := "NONE" },
  { key := "eqmb.reading.of.record", value := "DOCK" },
  { key := "eqmb.face", value := "A" },
  { key := "cell.C-EQMB", value := "YES" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQMB" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqmb.measurements" && r.value == "11")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqmb.built" && r.value == "11 of 11")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqmb.webs.total" && r.value == "70")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqmb.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqmb.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "cell.C-EQMB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmb.measurements" && r.value == "11")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmb.built" && r.value == "11 of 11")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmb.webs.total" && r.value == "70")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmb.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmb.first.failure" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527696_MWMB
