namespace ChainTheory.Data.D528827_XSSF

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQFX", value := "YES" },
  { key := "eqfx.INV.defined", value := "7 of 7" },
  { key := "eqfx.L.INV.defined", value := "7 of 7" },
  { key := "eqfx.L.defined", value := "3 of 3" },
  { key := "eqfx.L.face", value := "A" },
  { key := "eqfx.L.first.failure", value := "NONE" },
  { key := "eqfx.L.reached", value := "6 of 6" },
  { key := "eqfx.L.uniform", value := "YES" },
  { key := "eqfx.ONE.INV.defined", value := "7 of 7" },
  { key := "eqfx.ONE.defined", value := "3 of 3" },
  { key := "eqfx.ONE.face", value := "A" },
  { key := "eqfx.ONE.first.failure", value := "NONE" },
  { key := "eqfx.ONE.reached", value := "6 of 6" },
  { key := "eqfx.ONE.uniform", value := "NO" },
  { key := "eqfx.T.INV.defined", value := "0 of 7" },
  { key := "eqfx.T.defined", value := "0 of 3" },
  { key := "eqfx.T.face", value := "B" },
  { key := "eqfx.T.reached", value := "0 of 6" },
  { key := "eqfx.T.uniform", value := "NO" },
  { key := "eqfx.TDF.INV.defined", value := "7 of 7" },
  { key := "eqfx.TDF.defined", value := "3 of 3" },
  { key := "eqfx.TDF.face", value := "A" },
  { key := "eqfx.TDF.first.failure", value := "NONE" },
  { key := "eqfx.TDF.reached", value := "6 of 6" },
  { key := "eqfx.TDF.uniform", value := "NO" },
  { key := "eqfx.TDS.INV.defined", value := "7 of 7" },
  { key := "eqfx.TDS.defined", value := "3 of 3" },
  { key := "eqfx.TDS.face", value := "A" },
  { key := "eqfx.TDS.first.failure", value := "NONE" },
  { key := "eqfx.TDS.reached", value := "6 of 6" },
  { key := "eqfx.TDS.uniform", value := "NO" },
  { key := "eqfx.defined", value := "3 of 3" },
  { key := "eqfx.face", value := "A" },
  { key := "eqfx.first.failure", value := "NONE" },
  { key := "eqfx.hub.of.record", value := "H2" },
  { key := "eqfx.item2.reading", value := "R4" },
  { key := "eqfx.letter.word", value := "REACHED" },
  { key := "eqfx.port.reading", value := "PR-A" },
  { key := "eqfx.reached", value := "6 of 6" },
  { key := "eqfx.reading.applied", value := "TDF" },
  { key := "eqfx.reading.of.record", value := "TDF" },
  { key := "eqfx.uniform", value := "NO" }
]

theorem check_1 : rows.length = 42 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQFX" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqfx.INV.defined" && r.value == "7 of 7")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqfx.L.INV.defined" && r.value == "7 of 7")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqfx.L.defined" && r.value == "3 of 3")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqfx.L.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqfx.L.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqfx.L.reached" && r.value == "6 of 6")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqfx.L.uniform" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqfx.ONE.INV.defined" && r.value == "7 of 7")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqfx.ONE.defined" && r.value == "3 of 3")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqfx.ONE.face" && r.value == "A")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqfx.ONE.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqfx.ONE.reached" && r.value == "6 of 6")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqfx.ONE.uniform" && r.value == "NO")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqfx.T.INV.defined" && r.value == "0 of 7")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqfx.T.defined" && r.value == "0 of 3")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqfx.T.face" && r.value == "B")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqfx.T.reached" && r.value == "0 of 6")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqfx.T.uniform" && r.value == "NO")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "eqfx.TDF.INV.defined" && r.value == "7 of 7")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "eqfx.TDF.defined" && r.value == "3 of 3")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "eqfx.TDF.face" && r.value == "A")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "eqfx.TDF.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "eqfx.TDF.reached" && r.value == "6 of 6")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "eqfx.TDF.uniform" && r.value == "NO")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "eqfx.TDS.INV.defined" && r.value == "7 of 7")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "eqfx.TDS.defined" && r.value == "3 of 3")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "eqfx.TDS.face" && r.value == "A")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "eqfx.TDS.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "eqfx.TDS.reached" && r.value == "6 of 6")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "eqfx.TDS.uniform" && r.value == "NO")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "eqfx.defined" && r.value == "3 of 3")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "eqfx.face" && r.value == "A")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "eqfx.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "eqfx.hub.of.record" && r.value == "H2")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "eqfx.item2.reading" && r.value == "R4")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "eqfx.letter.word" && r.value == "REACHED")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "eqfx.port.reading" && r.value == "PR-A")).length = 1 := by decide

theorem check_40 : (rows.filter (fun r => r.key == "eqfx.reached" && r.value == "6 of 6")).length = 1 := by decide

theorem check_41 : (rows.filter (fun r => r.key == "eqfx.reading.applied" && r.value == "TDF")).length = 1 := by decide

theorem check_42 : (rows.filter (fun r => r.key == "eqfx.reading.of.record" && r.value == "TDF")).length = 1 := by decide

theorem check_43 : (rows.filter (fun r => r.key == "eqfx.uniform" && r.value == "NO")).length = 1 := by decide

theorem checks :
    (rows.length = 42) /\
    ((rows.filter (fun r => r.key == "cell.C-EQFX" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.INV.defined" && r.value == "7 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.L.INV.defined" && r.value == "7 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.L.defined" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.L.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.L.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.L.reached" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.L.uniform" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.ONE.INV.defined" && r.value == "7 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.ONE.defined" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.ONE.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.ONE.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.ONE.reached" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.ONE.uniform" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.T.INV.defined" && r.value == "0 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.T.defined" && r.value == "0 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.T.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.T.reached" && r.value == "0 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.T.uniform" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDF.INV.defined" && r.value == "7 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDF.defined" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDF.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDF.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDF.reached" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDF.uniform" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDS.INV.defined" && r.value == "7 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDS.defined" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDS.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDS.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDS.reached" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.TDS.uniform" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.defined" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.hub.of.record" && r.value == "H2")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.item2.reading" && r.value == "R4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.letter.word" && r.value == "REACHED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.port.reading" && r.value == "PR-A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.reached" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.reading.applied" && r.value == "TDF")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.reading.of.record" && r.value == "TDF")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.uniform" && r.value == "NO")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (And.intro check_39 (And.intro check_40 (And.intro check_41 (And.intro check_42 (check_43))))))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D528827_XSSF
