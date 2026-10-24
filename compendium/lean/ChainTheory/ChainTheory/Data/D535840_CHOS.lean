set_option maxRecDepth 100000

namespace ChainTheory.Data.D535840_CHOS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQGH", value := "YES" },
  { key := "eqgh.face", value := "A" },
  { key := "eqgh.first.parting", value := "NONE" },
  { key := "eqgh.integer.reached.beyond.one", value := "YES" },
  { key := "eqgh.letter", value := "COMPOSED-INTEGER" },
  { key := "eqgh.reading.of.record", value := "ONE-PERIOD-IDENTIFIED" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQGH" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqgh.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqgh.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqgh.integer.reached.beyond.one" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqgh.letter" && r.value == "COMPOSED-INTEGER")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqgh.reading.of.record" && r.value == "ONE-PERIOD-IDENTIFIED")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQGH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgh.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgh.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgh.integer.reached.beyond.one" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgh.letter" && r.value == "COMPOSED-INTEGER")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqgh.reading.of.record" && r.value == "ONE-PERIOD-IDENTIFIED")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D535840_CHOS
