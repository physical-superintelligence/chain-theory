set_option maxRecDepth 100000

namespace ChainTheory.Data.D532861_GRP3

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQGW", value := "YES" },
  { key := "eqgw.face", value := "A" },
  { key := "eqgw.group.parting", value := "NONE" },
  { key := "eqgw.transfer.parting", value := "NONE" },
  { key := "eqgw.first.parting", value := "NONE" },
  { key := "eqgw.face.ALL", value := "B" },
  { key := "eqgw.face.STRICT", value := "B" },
  { key := "kind.mixed", value := "NONE" },
  { key := "kind.unread", value := "NONE" },
  { key := "kind.both.levels", value := "NONE" }
]

theorem check_1 : rows.length = 10 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQGW" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqgw.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqgw.group.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqgw.transfer.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqgw.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqgw.face.ALL" && r.value == "B")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqgw.face.STRICT" && r.value == "B")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "kind.mixed" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "kind.unread" && r.value == "NONE")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "kind.both.levels" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 10) /\
    ((rows.filter (fun r => r.key == "cell.C-EQGW" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgw.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgw.group.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgw.transfer.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgw.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgw.face.ALL" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgw.face.STRICT" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "kind.mixed" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "kind.unread" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "kind.both.levels" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (check_11))))))))))

end ChainTheory.Data.D532861_GRP3
