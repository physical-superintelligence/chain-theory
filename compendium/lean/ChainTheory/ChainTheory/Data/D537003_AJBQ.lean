set_option maxRecDepth 100000

namespace ChainTheory.Data.D537003_AJBQ

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQAK", value := "YES" },
  { key := "eqak.letter", value := "FACE-A-OUTPUT" },
  { key := "eqak.face", value := "A" },
  { key := "eqak.first.parting", value := "NONE" },
  { key := "eqak.orders.output", value := "YES" },
  { key := "eqak.first.undefined", value := "NONE" },
  { key := "eqak.order3.sign.here", value := "ZERO" },
  { key := "eqak.order3.paet.anomaly.sign", value := "ZERO" },
  { key := "eqak.order3.remet", value := "YES" },
  { key := "eqak.paet.T2.eq.whole.T2.HUB", value := "YES" },
  { key := "eqak.paet.T1.eq.whole.T1.HUB", value := "YES" },
  { key := "eqak.paet.terminates", value := "YES" },
  { key := "eqak.order0.sign", value := "PLUS" },
  { key := "eqak.order1.sign", value := "PLUS" },
  { key := "eqak.order2.sign", value := "PLUS" },
  { key := "eqak.order3.sign", value := "ZERO" },
  { key := "eqak.spelling.of.row", value := "DOCK" },
  { key := "eqak.measurement.remet", value := "YES" }
]

theorem check_1 : rows.length = 18 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQAK" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqak.letter" && r.value == "FACE-A-OUTPUT")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqak.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqak.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqak.orders.output" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqak.first.undefined" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqak.order3.sign.here" && r.value == "ZERO")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqak.order3.paet.anomaly.sign" && r.value == "ZERO")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqak.order3.remet" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqak.paet.T2.eq.whole.T2.HUB" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqak.paet.T1.eq.whole.T1.HUB" && r.value == "YES")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqak.paet.terminates" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqak.order0.sign" && r.value == "PLUS")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqak.order1.sign" && r.value == "PLUS")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqak.order2.sign" && r.value == "PLUS")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqak.order3.sign" && r.value == "ZERO")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqak.spelling.of.row" && r.value == "DOCK")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqak.measurement.remet" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 18) /\
    ((rows.filter (fun r => r.key == "cell.C-EQAK" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.letter" && r.value == "FACE-A-OUTPUT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.orders.output" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.first.undefined" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order3.sign.here" && r.value == "ZERO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order3.paet.anomaly.sign" && r.value == "ZERO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order3.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.paet.T2.eq.whole.T2.HUB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.paet.T1.eq.whole.T1.HUB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.paet.terminates" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order0.sign" && r.value == "PLUS")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order1.sign" && r.value == "PLUS")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order2.sign" && r.value == "PLUS")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.order3.sign" && r.value == "ZERO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.spelling.of.row" && r.value == "DOCK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqak.measurement.remet" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (check_19))))))))))))))))))

end ChainTheory.Data.D537003_AJBQ
