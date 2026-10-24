namespace ChainTheory.Data.D527104_PJRK

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQPK", value := "YES" },
  { key := "eqpk.N.ALONE.defined", value := "YES" },
  { key := "eqpk.N.JOINED.defined", value := "YES" },
  { key := "eqpk.P.ALONE.defined", value := "YES" },
  { key := "eqpk.P.JOINED.defined", value := "YES" },
  { key := "eqpk.defined", value := "4 of 4" },
  { key := "eqpk.electron.reference.defined", value := "YES" },
  { key := "eqpk.face", value := "A" },
  { key := "eqpk.first.failure", value := "NONE" },
  { key := "eqpk.letter", value := "DEFINED" },
  { key := "eqpk.np.defined", value := "YES" },
  { key := "eqpk.third.reading.remet", value := "YES" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQPK" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqpk.defined" && r.value == "4 of 4")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqpk.letter" && r.value == "DEFINED")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqpk.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqpk.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPK" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpk.defined" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpk.letter" && r.value == "DEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpk.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpk.first.failure" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D527104_PJRK
