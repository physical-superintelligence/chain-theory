namespace ChainTheory.Data.D531654_DPIN

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQDP", value := "YES" },
  { key := "cell.C-EQDP.letter", value := "INDEPENDENT" },
  { key := "fp.kskc.with.applications", value := "53 of 53" }
]

theorem check_1 : rows.length = 3 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQDP" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-EQDP.letter" && r.value == "INDEPENDENT")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "fp.kskc.with.applications" && r.value == "53 of 53")).length = 1 := by decide

theorem checks :
    (rows.length = 3) /\
    ((rows.filter (fun r => r.key == "cell.C-EQDP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQDP.letter" && r.value == "INDEPENDENT")).length = 1) /\
    ((rows.filter (fun r => r.key == "fp.kskc.with.applications" && r.value == "53 of 53")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D531654_DPIN
