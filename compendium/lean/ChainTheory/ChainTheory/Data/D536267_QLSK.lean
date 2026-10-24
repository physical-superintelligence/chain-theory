set_option maxRecDepth 100000

namespace ChainTheory.Data.D536267_QLSK

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQQO", value := "YES" },
  { key := "eqqo.face", value := "A" },
  { key := "eqqo.first.unreached", value := "NONE" },
  { key := "eqqo.first.unreached.cells", value := "NONE" },
  { key := "eqqo.letter", value := "FOUR-FLAVOURS-REACHED" },
  { key := "eqqo.reading.of.record", value := "ISOMORPHIC" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQQO" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqqo.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqqo.first.unreached" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqqo.first.unreached.cells" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqqo.letter" && r.value == "FOUR-FLAVOURS-REACHED")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqqo.reading.of.record" && r.value == "ISOMORPHIC")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQQO" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqo.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqo.first.unreached" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqo.first.unreached.cells" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqo.letter" && r.value == "FOUR-FLAVOURS-REACHED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqo.reading.of.record" && r.value == "ISOMORPHIC")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D536267_QLSK
