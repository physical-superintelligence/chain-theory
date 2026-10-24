set_option maxRecDepth 100000

namespace ChainTheory.Data.D535412_OLUS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQUS", value := "YES" },
  { key := "equs.face", value := "A" },
  { key := "equs.first.parting", value := "NONE" },
  { key := "cell.C-UNIT", value := "YES" },
  { key := "cell.C-POLE", value := "YES" },
  { key := "cell.C-NORM", value := "YES" },
  { key := "lean.ward.no.hypothesis", value := "YES" },
  { key := "lean.union.names.binder", value := "YES" },
  { key := "lean.exp.eq.computed", value := "YES" },
  { key := "census.L3.ward.type", value := "PACKAGE-THEOREM" },
  { key := "census.L3.ward.borne", value := "BORNE" },
  { key := "census.L3.scheme.type", value := "LIVE-LANE" },
  { key := "census.L3.typing", value := "PARTIAL" },
  { key := "census.L3.lemma.names.def", value := "YES" },
  { key := "gate.refused", value := "NO" }
]

theorem check_1 : rows.length = 15 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQUS" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "equs.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "equs.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-UNIT" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-POLE" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-NORM" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "lean.ward.no.hypothesis" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "lean.union.names.binder" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "lean.exp.eq.computed" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "census.L3.ward.type" && r.value == "PACKAGE-THEOREM")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "census.L3.ward.borne" && r.value == "BORNE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "census.L3.scheme.type" && r.value == "LIVE-LANE")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "census.L3.typing" && r.value == "PARTIAL")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "census.L3.lemma.names.def" && r.value == "YES")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "gate.refused" && r.value == "NO")).length = 1 := by decide

theorem checks :
    (rows.length = 15) /\
    ((rows.filter (fun r => r.key == "cell.C-EQUS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-UNIT" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-POLE" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-NORM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "lean.ward.no.hypothesis" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "lean.union.names.binder" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "lean.exp.eq.computed" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.L3.ward.type" && r.value == "PACKAGE-THEOREM")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.L3.ward.borne" && r.value == "BORNE")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.L3.scheme.type" && r.value == "LIVE-LANE")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.L3.typing" && r.value == "PARTIAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.L3.lemma.names.def" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "gate.refused" && r.value == "NO")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (check_16)))))))))))))))

end ChainTheory.Data.D535412_OLUS
