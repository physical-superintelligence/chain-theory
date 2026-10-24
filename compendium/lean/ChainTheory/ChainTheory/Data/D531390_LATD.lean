namespace ChainTheory.Data.D531390_LATD

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQLD", value := "YES" },
  { key := "eqld.cells.at.face.B", value := "NONE" },
  { key := "eqld.each.cell.face", value := "A" },
  { key := "eqld.face", value := "A" },
  { key := "eqld.reading.INTER.each.cell.face", value := "A" },
  { key := "eqld.reading.INTER.face", value := "A" },
  { key := "eqld.reading.INTRA.each.cell.face", value := "A" },
  { key := "eqld.reading.INTRA.face", value := "A" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQLD" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqld.cells.at.face.B" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqld.each.cell.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqld.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqld.reading.INTER.each.cell.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqld.reading.INTER.face" && r.value == "A")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqld.reading.INTRA.each.cell.face" && r.value == "A")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqld.reading.INTRA.face" && r.value == "A")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLD" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.cells.at.face.B" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.each.cell.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.reading.INTER.each.cell.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.reading.INTER.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.reading.INTRA.each.cell.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.reading.INTRA.face" && r.value == "A")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (check_9))))))))

end ChainTheory.Data.D531390_LATD
