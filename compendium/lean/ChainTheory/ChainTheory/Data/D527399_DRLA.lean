namespace ChainTheory.Data.D527399_DRLA

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQLD", value := "YES" },
  { key := "eqld.T.equal", value := "NO" },
  { key := "eqld.U.equal", value := "YES" },
  { key := "eqld.U.first.parting", value := "NONE" },
  { key := "eqld.U.flat", value := "YES" },
  { key := "eqld.U.ladder", value := "YES" },
  { key := "eqld.U.number", value := "YES" },
  { key := "eqld.U.spacing", value := "YES" },
  { key := "eqld.deciding", value := "U" },
  { key := "eqld.face", value := "A" },
  { key := "eqld.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQLD" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqld.U.equal" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqld.deciding" && r.value == "U")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqld.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqld.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqld.T.equal" && r.value == "NO")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLD" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.U.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.deciding" && r.value == "U")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.T.equal" && r.value == "NO")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527399_DRLA
