namespace ChainTheory.Data.D528421_TISK

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqkt.own", value := "YES" },
  { key := "eqkt.own.parts", value := "NONE" },
  { key := "eqkt.table.parts", value := "NONE" },
  { key := "eqkt.first.parting", value := "NONE" },
  { key := "cell.C-EQKT", value := "YES" }
]

theorem check_1 : rows.length = 5 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqkt.own" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqkt.own.parts" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqkt.table.parts" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqkt.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-EQKT" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 5) /\
    ((rows.filter (fun r => r.key == "eqkt.own" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkt.own.parts" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkt.table.parts" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkt.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQKT" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D528421_TISK
