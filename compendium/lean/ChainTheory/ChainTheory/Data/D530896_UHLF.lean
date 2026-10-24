namespace ChainTheory.Data.D530896_UHLF

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-CENS", value := "YES" },
  { key := "cell.C-WORD", value := "NO" },
  { key := "eqfu.face.A", value := "YES" },
  { key := "eqfu.face.B.first.unreached", value := "NONE" },
  { key := "eqfu.face.B.clause", value := "NONE" },
  { key := "eqfu.first.parting", value := "NONE" },
  { key := "union.both.words.reached.count", value := "16 of 16" },
  { key := "union.both.words.first.unreached", value := "NONE" },
  { key := "union.both.colour.reached.count", value := "12 of 12" },
  { key := "union.both.electron.L.reached", value := "YES" },
  { key := "union.both.electron.L.reached.count", value := "17" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-CENS" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-WORD" && r.value == "NO")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqfu.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqfu.face.B.first.unreached" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqfu.face.B.clause" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqfu.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "union.both.words.reached.count" && r.value == "16 of 16")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "union.both.words.first.unreached" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "union.both.colour.reached.count" && r.value == "12 of 12")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "union.both.electron.L.reached" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "union.both.electron.L.reached.count" && r.value == "17")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-CENS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-WORD" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfu.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfu.face.B.first.unreached" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfu.face.B.clause" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfu.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "union.both.words.reached.count" && r.value == "16 of 16")).length = 1) /\
    ((rows.filter (fun r => r.key == "union.both.words.first.unreached" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "union.both.colour.reached.count" && r.value == "12 of 12")).length = 1) /\
    ((rows.filter (fun r => r.key == "union.both.electron.L.reached" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "union.both.electron.L.reached.count" && r.value == "17")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D530896_UHLF
