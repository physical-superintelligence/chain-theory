namespace ChainTheory.Data.D529516_PJFC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "mtch.first.parting", value := "NONE" },
  { key := "mtch.record.parting.list", value := "NONE" },
  { key := "eqpj.face.A", value := "YES" },
  { key := "eqpj.face.B", value := "NO" },
  { key := "eqpj.first.parting", value := "NONE" },
  { key := "cell.C-EQPJ", value := "YES" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "mtch.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "mtch.record.parting.list" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqpj.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqpj.face.B" && r.value == "NO")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqpj.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-EQPJ" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "mtch.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "mtch.record.parting.list" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpj.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpj.face.B" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpj.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPJ" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D529516_PJFC
