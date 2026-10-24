namespace ChainTheory.Data.D527373_LATW

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQLW", value := "YES" },
  { key := "eqlw.arrays.built", value := "5 of 5" },
  { key := "eqlw.cm.derived.count", value := "2" },
  { key := "eqlw.cm.gloss.count", value := "5" },
  { key := "eqlw.cm.open.count", value := "1" },
  { key := "eqlw.cycles.periodic", value := "2 of 2" },
  { key := "eqlw.excitations.exact", value := "10 of 10" },
  { key := "eqlw.face", value := "A" },
  { key := "eqlw.first.failure", value := "NONE" },
  { key := "eqlw.forms.exact", value := "2 of 2" },
  { key := "eqlw.gradings.closed", value := "5 of 5" },
  { key := "eqlw.letter", value := "PERIODIC" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQLW" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqlw.arrays.built" && r.value == "5 of 5")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqlw.letter" && r.value == "PERIODIC")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqlw.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqlw.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqlw.cycles.periodic" && r.value == "2 of 2")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLW" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.arrays.built" && r.value == "5 of 5")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.letter" && r.value == "PERIODIC")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.cycles.periodic" && r.value == "2 of 2")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527373_LATW
