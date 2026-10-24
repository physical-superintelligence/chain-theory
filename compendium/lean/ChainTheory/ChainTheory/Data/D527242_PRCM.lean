namespace ChainTheory.Data.D527242_PRCM

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "gate.all", value := "MET" },
  { key := "gate.first.failing", value := "NONE" },
  { key := "typing.rows", value := "36 of 36" },
  { key := "typing.derived", value := "9" },
  { key := "typing.gloss", value := "14" },
  { key := "typing.open", value := "13" },
  { key := "typing.total", value := "36" },
  { key := "typing.ready.ok", value := "15 of 15" },
  { key := "typing.gated.ok", value := "21 of 21" },
  { key := "typing.first.failing", value := "NONE" },
  { key := "cell.C-GATE", value := "YES" },
  { key := "cell.C-CIRC", value := "YES" },
  { key := "cell.C-COST", value := "YES" },
  { key := "cell.C-EQCC", value := "YES" }
]

theorem check_1 : rows.length = 14 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQCC" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "typing.rows" && r.value == "36 of 36")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "typing.total" && r.value == "36")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "typing.first.failing" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "gate.all" && r.value == "MET")).length = 1 := by decide

theorem checks :
    (rows.length = 14) /\
    ((rows.filter (fun r => r.key == "cell.C-EQCC" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "typing.rows" && r.value == "36 of 36")).length = 1) /\
    ((rows.filter (fun r => r.key == "typing.total" && r.value == "36")).length = 1) /\
    ((rows.filter (fun r => r.key == "typing.first.failing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "gate.all" && r.value == "MET")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D527242_PRCM
