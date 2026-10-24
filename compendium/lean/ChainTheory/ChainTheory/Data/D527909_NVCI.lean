namespace ChainTheory.Data.D527909_NVCI

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqci.first.failure", value := "NONE" },
  { key := "eqci.defined", value := "YES" },
  { key := "cell.C-MATR", value := "YES" },
  { key := "cell.C-KERN", value := "YES" },
  { key := "cell.C-CHRG", value := "YES" },
  { key := "cell.C-BRKM", value := "YES" },
  { key := "cell.C-NEWC", value := "YES" },
  { key := "cell.C-EQCI", value := "YES" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQCI" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqci.defined" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqci.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-KERN" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-CHRG" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "cell.C-EQCI" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqci.defined" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqci.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-KERN" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CHRG" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D527909_NVCI
