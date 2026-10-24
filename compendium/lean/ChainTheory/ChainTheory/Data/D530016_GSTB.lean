namespace ChainTheory.Data.D530016_GSTB

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-CONS", value := "YES" },
  { key := "cell.C-CT", value := "NO" },
  { key := "cell.C-ENDS", value := "YES" },
  { key := "cell.C-EQGS", value := "YES" },
  { key := "cell.C-GRPS", value := "YES" },
  { key := "cell.C-MTCH", value := "YES" },
  { key := "eqgs.faceB.readingA", value := "NONE" },
  { key := "eqgs.letter", value := "EQUAL" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-CONS" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-CT" && r.value == "NO")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-ENDS" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQGS" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-GRPS" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-MTCH" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqgs.faceB.readingA" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqgs.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "cell.C-CONS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CT" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-ENDS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQGS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-GRPS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-MTCH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgs.faceB.readingA" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgs.letter" && r.value == "EQUAL")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (check_9))))))))

end ChainTheory.Data.D530016_GSTB
