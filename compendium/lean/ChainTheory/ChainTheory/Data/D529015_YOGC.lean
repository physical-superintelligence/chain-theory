namespace ChainTheory.Data.D529015_YOGC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQYG", value := "YES" },
  { key := "dict.levels.greatest", value := "5" },
  { key := "dict.number.operator", value := "1692 of 1692" },
  { key := "dict.spacing.equal", value := "1692 of 1692" },
  { key := "eqyg.cause", value := "EVERY-REGISTER-EQUAL" },
  { key := "eqyg.face", value := "A" },
  { key := "eqyg.first.parting", value := "NONE" },
  { key := "eqyg.first.parting.objects", value := "NONE" },
  { key := "eqyg.genk", value := "EQUAL" },
  { key := "eqyg.identity.reading", value := "PARTING" },
  { key := "eqyg.identity.reading.equal", value := "712 of 1692" },
  { key := "eqyg.identity.reading.first.parting", value := "L0001" },
  { key := "eqyg.trnc", value := "EQUAL" }
]

theorem check_1 : rows.length = 13 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQYG" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "dict.levels.greatest" && r.value == "5")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "dict.number.operator" && r.value == "1692 of 1692")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "dict.spacing.equal" && r.value == "1692 of 1692")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqyg.cause" && r.value == "EVERY-REGISTER-EQUAL")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqyg.face" && r.value == "A")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqyg.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqyg.first.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqyg.genk" && r.value == "EQUAL")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqyg.identity.reading" && r.value == "PARTING")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqyg.identity.reading.equal" && r.value == "712 of 1692")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqyg.identity.reading.first.parting" && r.value == "L0001")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqyg.trnc" && r.value == "EQUAL")).length = 1 := by decide

theorem checks :
    (rows.length = 13) /\
    ((rows.filter (fun r => r.key == "cell.C-EQYG" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "dict.levels.greatest" && r.value == "5")).length = 1) /\
    ((rows.filter (fun r => r.key == "dict.number.operator" && r.value == "1692 of 1692")).length = 1) /\
    ((rows.filter (fun r => r.key == "dict.spacing.equal" && r.value == "1692 of 1692")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.cause" && r.value == "EVERY-REGISTER-EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.first.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.genk" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.identity.reading" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.identity.reading.equal" && r.value == "712 of 1692")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.identity.reading.first.parting" && r.value == "L0001")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqyg.trnc" && r.value == "EQUAL")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (check_14)))))))))))))

end ChainTheory.Data.D529015_YOGC
