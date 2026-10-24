namespace ChainTheory.Data.D530477_LWE3

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQLW", value := "YES" },
  { key := "eqlw.QUTRIT.N3.of.record", value := "s0-s1.RING" },
  { key := "eqlw.QUTRIT.N4.of.record", value := "s0-s1.RING" },
  { key := "eqlw.QUTRIT.face", value := "A" },
  { key := "eqlw.QUTRIT.first.refused", value := "NONE" },
  { key := "eqlw.STAR.face", value := "A" },
  { key := "eqlw.STAR.first.refused", value := "NONE" },
  { key := "eqlw.cells.at.face.B", value := "NONE" },
  { key := "eqlw.face", value := "A" },
  { key := "eqlw.reading.of.record", value := "DOCK" },
  { key := "lattice.object.first.charged", value := "NONE" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQLW" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqlw.QUTRIT.N3.of.record" && r.value == "s0-s1.RING")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqlw.QUTRIT.N4.of.record" && r.value == "s0-s1.RING")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqlw.QUTRIT.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqlw.QUTRIT.first.refused" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqlw.STAR.face" && r.value == "A")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqlw.STAR.first.refused" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqlw.cells.at.face.B" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqlw.face" && r.value == "A")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqlw.reading.of.record" && r.value == "DOCK")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "lattice.object.first.charged" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLW" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.QUTRIT.N3.of.record" && r.value == "s0-s1.RING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.QUTRIT.N4.of.record" && r.value == "s0-s1.RING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.QUTRIT.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.QUTRIT.first.refused" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.STAR.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.STAR.first.refused" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.cells.at.face.B" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlw.reading.of.record" && r.value == "DOCK")).length = 1) /\
    ((rows.filter (fun r => r.key == "lattice.object.first.charged" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D530477_LWE3
