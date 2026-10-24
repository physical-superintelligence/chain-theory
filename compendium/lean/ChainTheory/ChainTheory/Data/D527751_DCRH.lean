namespace ChainTheory.Data.D527751_DCRH

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQHH", value := "YES" },
  { key := "eqhh.A.entries.ok", value := "17 of 20" },
  { key := "eqhh.A.equal", value := "NO" },
  { key := "eqhh.B.entries.ok", value := "20 of 20" },
  { key := "eqhh.B.equal", value := "YES" },
  { key := "eqhh.B.first.fail", value := "NONE" },
  { key := "eqhh.DERIVED", value := "5" },
  { key := "eqhh.GLOSS", value := "9" },
  { key := "eqhh.OPEN", value := "6" },
  { key := "eqhh.deciding", value := "B" },
  { key := "eqhh.entries", value := "20" },
  { key := "eqhh.face", value := "A" },
  { key := "eqhh.first.fail", value := "NONE" },
  { key := "eqhh.other", value := "0" }
]

theorem check_1 : rows.length = 14 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQHH" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhh.B.entries.ok" && r.value == "20 of 20")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhh.entries" && r.value == "20")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqhh.deciding" && r.value == "B")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqhh.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqhh.first.fail" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 14) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhh.B.entries.ok" && r.value == "20 of 20")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhh.entries" && r.value == "20")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhh.deciding" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhh.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhh.first.fail" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527751_DCRH
