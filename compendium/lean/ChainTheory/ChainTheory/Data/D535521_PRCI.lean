set_option maxRecDepth 100000

namespace ChainTheory.Data.D535521_PRCI

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eq.23.count.END-PRODUCT.letter", value := "EQUAL" },
  { key := "eq.23.count.PER-END-BASES.letter", value := "PARTING" },
  { key := "eq.23.count.letter", value := "EQUAL" },
  { key := "eq.23.structure.letter", value := "EQUAL" },
  { key := "eq.23.letter", value := "EQUAL" },
  { key := "cell.C-RRUL", value := "YES" },
  { key := "cell.C-SPCP", value := "YES" },
  { key := "cell.C-EQLV", value := "YES" },
  { key := "cell.C-EQRC", value := "YES" },
  { key := "eqrc.face", value := "FACE-A-READ-CAP-EQUAL-THE-SPECTRUM-CAP" },
  { key := "eqrc.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eq.23.count.END-PRODUCT.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eq.23.count.PER-END-BASES.letter" && r.value == "PARTING")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eq.23.count.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eq.23.structure.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eq.23.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-RRUL" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-SPCP" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cell.C-EQLV" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cell.C-EQRC" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqrc.face" && r.value == "FACE-A-READ-CAP-EQUAL-THE-SPECTRUM-CAP")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqrc.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "eq.23.count.END-PRODUCT.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.23.count.PER-END-BASES.letter" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.23.count.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.23.structure.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.23.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-RRUL" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-SPCP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLV" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQRC" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqrc.face" && r.value == "FACE-A-READ-CAP-EQUAL-THE-SPECTRUM-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqrc.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D535521_PRCI
