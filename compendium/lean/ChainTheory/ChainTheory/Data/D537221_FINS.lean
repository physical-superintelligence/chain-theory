set_option maxRecDepth 100000

namespace ChainTheory.Data.D537221_FINS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqfs.faceA.strike.met", value := "YES" },
  { key := "eqfs.faceB.strike.met", value := "YES" },
  { key := "eqfs.transcript.reading.literal.byte.equal.at.strikeB", value := "NO" },
  { key := "eqfs.first.failing.declaration", value := "NONE" },
  { key := "eqfs.face", value := "A" },
  { key := "eqfs.letter", value := "FACE-A-PROVED" },
  { key := "finiteness.typing.reading.one.by.words", value := "CITED-AT-THE-STOP-CONDITION-ROWS" },
  { key := "finiteness.typing.reading.two.in.substance", value := "UNUSED-BEYOND-THE-AXIOM-QUOTATION" },
  { key := "stop.TOPS.question.cites.clause", value := "YES" },
  { key := "stop.TSC2.question.cites.clause", value := "YES" },
  { key := "cell.C-EQIG", value := "FACE-A-PROVED" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqfs.faceA.strike.met" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqfs.faceB.strike.met" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqfs.transcript.reading.literal.byte.equal.at.strikeB" && r.value == "NO")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqfs.first.failing.declaration" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqfs.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqfs.letter" && r.value == "FACE-A-PROVED")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "finiteness.typing.reading.one.by.words" && r.value == "CITED-AT-THE-STOP-CONDITION-ROWS")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "finiteness.typing.reading.two.in.substance" && r.value == "UNUSED-BEYOND-THE-AXIOM-QUOTATION")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "stop.TOPS.question.cites.clause" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "stop.TSC2.question.cites.clause" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "cell.C-EQIG" && r.value == "FACE-A-PROVED")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "eqfs.faceA.strike.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfs.faceB.strike.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfs.transcript.reading.literal.byte.equal.at.strikeB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfs.first.failing.declaration" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfs.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfs.letter" && r.value == "FACE-A-PROVED")).length = 1) /\
    ((rows.filter (fun r => r.key == "finiteness.typing.reading.one.by.words" && r.value == "CITED-AT-THE-STOP-CONDITION-ROWS")).length = 1) /\
    ((rows.filter (fun r => r.key == "finiteness.typing.reading.two.in.substance" && r.value == "UNUSED-BEYOND-THE-AXIOM-QUOTATION")).length = 1) /\
    ((rows.filter (fun r => r.key == "stop.TOPS.question.cites.clause" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "stop.TSC2.question.cites.clause" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQIG" && r.value == "FACE-A-PROVED")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D537221_FINS
