namespace ChainTheory.Data.D527216_QMCR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQQM", value := "YES" },
  { key := "eqqm.A.entries.ok", value := "19 of 21" },
  { key := "eqqm.A.equal", value := "NO" },
  { key := "eqqm.B.entries.ok", value := "21 of 21" },
  { key := "eqqm.B.equal", value := "YES" },
  { key := "eqqm.B.first.fail", value := "NONE" },
  { key := "eqqm.DERIVED", value := "6" },
  { key := "eqqm.GLOSS", value := "12" },
  { key := "eqqm.OPEN", value := "3" },
  { key := "eqqm.deciding", value := "B" },
  { key := "eqqm.entries", value := "21" },
  { key := "eqqm.face", value := "A" },
  { key := "eqqm.first.fail", value := "NONE" },
  { key := "eqqm.other", value := "0" }
]

theorem check_1 : rows.length = 14 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQQM" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqqm.B.entries.ok" && r.value == "21 of 21")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqqm.entries" && r.value == "21")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqqm.deciding" && r.value == "B")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqqm.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqqm.first.fail" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 14) /\
    ((rows.filter (fun r => r.key == "cell.C-EQQM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqm.B.entries.ok" && r.value == "21 of 21")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqm.entries" && r.value == "21")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqm.deciding" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqm.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqm.first.fail" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527216_QMCR
