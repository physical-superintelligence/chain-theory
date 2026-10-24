namespace ChainTheory.Data.D528101_ATSR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqar.R1.letter", value := "PARTING" },
  { key := "eqar.R1.sinks.equal.all", value := "0 of 14" },
  { key := "eqar.R2.letter", value := "PARTING" },
  { key := "eqar.R2.sinks.equal.all", value := "0 of 14" },
  { key := "eqar.R2.sinks.uptoclass", value := "14 of 14" },
  { key := "eqar.R3.letter", value := "PARTING" },
  { key := "eqar.R3.sinks.equal.all", value := "0 of 14" },
  { key := "eqar.R3.sinks.uptoclass", value := "14 of 14" },
  { key := "eqar.first.parting", value := "NONE" },
  { key := "eqar.letter", value := "DEFINED-EQUAL-UNDER-ONE-READING" },
  { key := "cell.C-EQAR", value := "YES" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQAR" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqar.letter" && r.value == "DEFINED-EQUAL-UNDER-ONE-READING")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqar.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqar.R2.sinks.uptoclass" && r.value == "14 of 14")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqar.R1.sinks.equal.all" && r.value == "0 of 14")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQAR" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqar.letter" && r.value == "DEFINED-EQUAL-UNDER-ONE-READING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqar.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqar.R2.sinks.uptoclass" && r.value == "14 of 14")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqar.R1.sinks.equal.all" && r.value == "0 of 14")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D528101_ATSR
