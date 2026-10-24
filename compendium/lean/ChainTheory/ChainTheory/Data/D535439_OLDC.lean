set_option maxRecDepth 100000

namespace ChainTheory.Data.D535439_OLDC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqdo.reading.entry", value := "QUBIT" },
  { key := "eqdo.reading.hub", value := "DEGREE" },
  { key := "eqdo.reading.strike", value := "UNSTRUCK" },
  { key := "eqdo.reading.dress", value := "HUB" },
  { key := "eqdo.reading.depth", value := "NEAR-END" },
  { key := "eqdo.reading.register", value := "PRODUCT" },
  { key := "eqdo.QUBIT.DEGREE.NEAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUBIT.DEGREE.FAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUBIT.DIMENSION.NEAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUBIT.DIMENSION.FAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUBIT.KITLINE.NEAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUBIT.KITLINE.FAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUTRIT.DEGREE.NEAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUTRIT.DEGREE.FAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUTRIT.DIMENSION.NEAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUTRIT.DIMENSION.FAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUTRIT.KITLINE.NEAR-END.first.parting", value := "NONE" },
  { key := "eqdo.QUTRIT.KITLINE.FAR-END.first.parting", value := "NONE" },
  { key := "eqdo.quantifier", value := "VACUOUS" },
  { key := "eqdo.face", value := "FACE-A-DECOUPLED-AT-EVERY-DEPTH" },
  { key := "eqdo.first.parting", value := "NONE" },
  { key := "cell.C-EQDO", value := "YES" }
]

theorem check_1 : rows.length = 22 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqdo.reading.entry" && r.value == "QUBIT")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqdo.reading.hub" && r.value == "DEGREE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqdo.reading.strike" && r.value == "UNSTRUCK")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqdo.reading.dress" && r.value == "HUB")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqdo.reading.depth" && r.value == "NEAR-END")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqdo.reading.register" && r.value == "PRODUCT")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqdo.QUBIT.DEGREE.NEAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqdo.QUBIT.DEGREE.FAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqdo.QUBIT.DIMENSION.NEAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqdo.QUBIT.DIMENSION.FAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqdo.QUBIT.KITLINE.NEAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqdo.QUBIT.KITLINE.FAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqdo.QUTRIT.DEGREE.NEAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqdo.QUTRIT.DEGREE.FAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqdo.QUTRIT.DIMENSION.NEAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqdo.QUTRIT.DIMENSION.FAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqdo.QUTRIT.KITLINE.NEAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqdo.QUTRIT.KITLINE.FAR-END.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqdo.quantifier" && r.value == "VACUOUS")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "eqdo.face" && r.value == "FACE-A-DECOUPLED-AT-EVERY-DEPTH")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "eqdo.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "cell.C-EQDO" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 22) /\
    ((rows.filter (fun r => r.key == "eqdo.reading.entry" && r.value == "QUBIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.reading.hub" && r.value == "DEGREE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.reading.strike" && r.value == "UNSTRUCK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.reading.dress" && r.value == "HUB")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.reading.depth" && r.value == "NEAR-END")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.reading.register" && r.value == "PRODUCT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUBIT.DEGREE.NEAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUBIT.DEGREE.FAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUBIT.DIMENSION.NEAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUBIT.DIMENSION.FAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUBIT.KITLINE.NEAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUBIT.KITLINE.FAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUTRIT.DEGREE.NEAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUTRIT.DEGREE.FAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUTRIT.DIMENSION.NEAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUTRIT.DIMENSION.FAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUTRIT.KITLINE.NEAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.QUTRIT.KITLINE.FAR-END.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.quantifier" && r.value == "VACUOUS")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.face" && r.value == "FACE-A-DECOUPLED-AT-EVERY-DEPTH")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdo.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQDO" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (check_23))))))))))))))))))))))

end ChainTheory.Data.D535439_OLDC
