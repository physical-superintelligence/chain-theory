set_option maxRecDepth 100000

namespace ChainTheory.Data.D539621_KCSC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQKV", value := "YES" },
  { key := "eqks.letter", value := "FACE-A-OUTPUT" },
  { key := "eqks.face", value := "A" },
  { key := "eqks.group.of.record", value := "WEYL" },
  { key := "eqks.sorting", value := "CONJUGATE-LETTER" },
  { key := "eqks.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQKV" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqks.letter" && r.value == "FACE-A-OUTPUT")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqks.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqks.group.of.record" && r.value == "WEYL")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqks.sorting" && r.value == "CONJUGATE-LETTER")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqks.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQKV" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqks.letter" && r.value == "FACE-A-OUTPUT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqks.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqks.group.of.record" && r.value == "WEYL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqks.sorting" && r.value == "CONJUGATE-LETTER")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqks.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D539621_KCSC
