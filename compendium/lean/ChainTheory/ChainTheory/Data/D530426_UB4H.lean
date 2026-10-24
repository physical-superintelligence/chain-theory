namespace ChainTheory.Data.D530426_UB4H

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-ALGB", value := "YES" },
  { key := "cell.C-CT", value := "YES" },
  { key := "cell.C-DATM", value := "YES" },
  { key := "cell.C-EQH4", value := "YES" },
  { key := "cell.C-HIGG", value := "YES" },
  { key := "cell.C-HUBE", value := "YES" },
  { key := "eqh4.faceB.record", value := "NONE" },
  { key := "eqh4.letter", value := "EQUAL" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-ALGB" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-CT" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-DATM" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQH4" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-HIGG" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-HUBE" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqh4.faceB.record" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqh4.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "cell.C-ALGB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CT" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-DATM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQH4" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-HIGG" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-HUBE" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqh4.faceB.record" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqh4.letter" && r.value == "EQUAL")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (check_9))))))))

end ChainTheory.Data.D530426_UB4H
