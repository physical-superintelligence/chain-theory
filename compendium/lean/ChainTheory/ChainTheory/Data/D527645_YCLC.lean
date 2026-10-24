namespace ChainTheory.Data.D527645_YCLC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQHL", value := "YES" },
  { key := "eqhl.face", value := "A" },
  { key := "eqhl.first.fail", value := "NONE" }
]

theorem check_1 : rows.length = 3 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQHL" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhl.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhl.first.fail" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 3) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHL" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhl.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhl.first.fail" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D527645_YCLC
