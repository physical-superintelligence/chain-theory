namespace ChainTheory.Data.D528475_DURA

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQAU", value := "YES" },
  { key := "eqau.face", value := "A" },
  { key := "eqau.first.parting", value := "NONE" },
  { key := "eqau.reading", value := "U" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQAU" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqau.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqau.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqau.reading" && r.value == "U")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "cell.C-EQAU" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqau.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqau.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqau.reading" && r.value == "U")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D528475_DURA
