set_option maxRecDepth 100000

namespace ChainTheory.Data.D539098_KCFM

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQKF", value := "YES" },
  { key := "eqkf.apkc.superseded", value := "YES" },
  { key := "eqkf.face", value := "A" },
  { key := "eqkf.first", value := "NONE" },
  { key := "eqkf.letter", value := "EQUAL-EVERYWHERE" },
  { key := "eqkf.s.E01.first", value := "NONE" },
  { key := "eqkf.s.E01.letter", value := "EQUAL" },
  { key := "eqkf.s.E02.first", value := "NONE" },
  { key := "eqkf.s.E02.letter", value := "EQUAL" },
  { key := "eqkf.s.N01.first", value := "NONE" },
  { key := "eqkf.s.N01.letter", value := "EQUAL" },
  { key := "eqkf.s.S01.first", value := "NONE" },
  { key := "eqkf.s.S01.letter", value := "EQUAL" },
  { key := "eqkf.s.S02.first", value := "NONE" },
  { key := "eqkf.s.S02.letter", value := "EQUAL" },
  { key := "eqkf.s.S03.first", value := "NONE" },
  { key := "eqkf.s.S03.letter", value := "EQUAL" },
  { key := "eqkf.s.S04.first", value := "NONE" },
  { key := "eqkf.s.S04.letter", value := "EQUAL" }
]

theorem check_1 : rows.length = 19 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQKF" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqkf.apkc.superseded" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqkf.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqkf.first" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqkf.letter" && r.value == "EQUAL-EVERYWHERE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqkf.s.E01.first" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqkf.s.E01.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqkf.s.E02.first" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqkf.s.E02.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqkf.s.N01.first" && r.value == "NONE")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqkf.s.N01.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqkf.s.S01.first" && r.value == "NONE")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqkf.s.S01.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqkf.s.S02.first" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqkf.s.S02.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqkf.s.S03.first" && r.value == "NONE")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqkf.s.S03.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqkf.s.S04.first" && r.value == "NONE")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqkf.s.S04.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem checks :
    (rows.length = 19) /\
    ((rows.filter (fun r => r.key == "cell.C-EQKF" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.apkc.superseded" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.letter" && r.value == "EQUAL-EVERYWHERE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.E01.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.E01.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.E02.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.E02.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.N01.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.N01.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S01.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S01.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S02.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S02.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S03.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S03.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S04.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqkf.s.S04.letter" && r.value == "EQUAL")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (check_20)))))))))))))))))))

end ChainTheory.Data.D539098_KCFM
