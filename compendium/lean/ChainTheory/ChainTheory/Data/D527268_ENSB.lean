namespace ChainTheory.Data.D527268_ENSB

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqen.entries", value := "16" },
  { key := "eqen.derived", value := "13" },
  { key := "eqen.gloss", value := "3" },
  { key := "eqen.open", value := "0" },
  { key := "eqen.first.open", value := "NONE" },
  { key := "eqen.open.list", value := "NONE" },
  { key := "eqen.face", value := "A" },
  { key := "eqen.roots.thm.only", value := "0 of 16" },
  { key := "eqen.roots.with.wall", value := "16 of 16" },
  { key := "eqen.table.rows.found", value := "16 of 16" },
  { key := "eqen.table.grade.remet", value := "16 of 16" },
  { key := "cell.C-CAPS", value := "YES" },
  { key := "cell.C-ENSM", value := "NO" },
  { key := "cell.C-DIST", value := "YES" },
  { key := "cell.C-EQEN", value := "YES" },
  { key := "cell.C-CT", value := "ABSENT" }
]

theorem check_1 : rows.length = 16 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQEN" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqen.entries" && r.value == "16")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqen.derived" && r.value == "13")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqen.open" && r.value == "0")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqen.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqen.first.open" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 16) /\
    ((rows.filter (fun r => r.key == "cell.C-EQEN" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqen.entries" && r.value == "16")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqen.derived" && r.value == "13")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqen.open" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqen.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqen.first.open" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527268_ENSB
