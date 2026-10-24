namespace ChainTheory.Data.D531942_CASM

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.cell", value := "2" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.definite", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.dependence", value := "CONTACT" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.face", value := "A" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.one.sign", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.reference", value := "5" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.status", value := "COMPUTED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.cell", value := "2" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.definite", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.dependence", value := "CONTACT" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.face", value := "A" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.one.sign", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.reference", value := "5" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.status", value := "COMPUTED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.cell", value := "2" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.definite", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.dependence", value := "CONTACT" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.face", value := "A" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.one.sign", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.reference", value := "6" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.status", value := "COMPUTED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.cut", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.regsum", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.whole", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.definite", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.dependence", value := "ONE-SEPARATION" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.face", value := "A" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.one.sign", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.ratios", value := "UNDEFINED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.reference", value := "1" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.separations", value := "1" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.sign.set", value := "NONE" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.status", value := "COMPUTED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.successive", value := "NONE" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.cut", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.regsum", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.whole", value := "0" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.definite", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.dependence", value := "ONE-SEPARATION" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.face", value := "A" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.one.sign", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.ratios", value := "UNDEFINED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.reference", value := "1" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.separations", value := "1" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.sign.set", value := "NONE" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.status", value := "COMPUTED" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.successive", value := "NONE" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.cell", value := "2" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.definite", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.dependence", value := "CONTACT" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.face", value := "A" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.one.sign", value := "YES" },
  { key := "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.ratios", value := "UNDEFINED" },
  { key := "eqca.cells.at.face.B", value := "NONE" },
  { key := "eqca.face", value := "A" },
  { key := "eqca.first.sign.change", value := "NONE" },
  { key := "eqca.first.undefined", value := "NONE" },
  { key := "eqca.reading.of.record", value := "RING.ARC.COUNT" }
]

theorem check_1 : rows.length = 60 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.cell" && r.value == "2")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.definite" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.dependence" && r.value == "CONTACT")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.one.sign" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.reference" && r.value == "5")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.status" && r.value == "COMPUTED")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.cell" && r.value == "2")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.definite" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.dependence" && r.value == "CONTACT")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.face" && r.value == "A")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.one.sign" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.reference" && r.value == "5")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.status" && r.value == "COMPUTED")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.cell" && r.value == "2")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.definite" && r.value == "YES")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.dependence" && r.value == "CONTACT")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.face" && r.value == "A")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.one.sign" && r.value == "YES")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.reference" && r.value == "6")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.status" && r.value == "COMPUTED")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell" && r.value == "0")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.cut" && r.value == "0")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.regsum" && r.value == "0")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.whole" && r.value == "0")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.definite" && r.value == "YES")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.dependence" && r.value == "ONE-SEPARATION")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.face" && r.value == "A")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.one.sign" && r.value == "YES")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.ratios" && r.value == "UNDEFINED")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.reference" && r.value == "1")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.separations" && r.value == "1")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.sign.set" && r.value == "NONE")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.status" && r.value == "COMPUTED")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.successive" && r.value == "NONE")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell" && r.value == "0")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.cut" && r.value == "0")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.regsum" && r.value == "0")).length = 1 := by decide

theorem check_40 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.whole" && r.value == "0")).length = 1 := by decide

theorem check_41 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.definite" && r.value == "YES")).length = 1 := by decide

theorem check_42 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.dependence" && r.value == "ONE-SEPARATION")).length = 1 := by decide

theorem check_43 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.face" && r.value == "A")).length = 1 := by decide

theorem check_44 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.one.sign" && r.value == "YES")).length = 1 := by decide

theorem check_45 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.ratios" && r.value == "UNDEFINED")).length = 1 := by decide

theorem check_46 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.reference" && r.value == "1")).length = 1 := by decide

theorem check_47 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.separations" && r.value == "1")).length = 1 := by decide

theorem check_48 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.sign.set" && r.value == "NONE")).length = 1 := by decide

theorem check_49 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.status" && r.value == "COMPUTED")).length = 1 := by decide

theorem check_50 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.successive" && r.value == "NONE")).length = 1 := by decide

theorem check_51 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.cell" && r.value == "2")).length = 1 := by decide

theorem check_52 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.definite" && r.value == "YES")).length = 1 := by decide

theorem check_53 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.dependence" && r.value == "CONTACT")).length = 1 := by decide

theorem check_54 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.face" && r.value == "A")).length = 1 := by decide

theorem check_55 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.one.sign" && r.value == "YES")).length = 1 := by decide

theorem check_56 : (rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.ratios" && r.value == "UNDEFINED")).length = 1 := by decide

theorem check_57 : (rows.filter (fun r => r.key == "eqca.cells.at.face.B" && r.value == "NONE")).length = 1 := by decide

theorem check_58 : (rows.filter (fun r => r.key == "eqca.face" && r.value == "A")).length = 1 := by decide

theorem check_59 : (rows.filter (fun r => r.key == "eqca.first.sign.change" && r.value == "NONE")).length = 1 := by decide

theorem check_60 : (rows.filter (fun r => r.key == "eqca.first.undefined" && r.value == "NONE")).length = 1 := by decide

theorem check_61 : (rows.filter (fun r => r.key == "eqca.reading.of.record" && r.value == "RING.ARC.COUNT")).length = 1 := by decide

theorem checks :
    (rows.length = 60) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.cell" && r.value == "2")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.definite" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.dependence" && r.value == "CONTACT")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.one.sign" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.reference" && r.value == "5")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N10.status" && r.value == "COMPUTED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.cell" && r.value == "2")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.definite" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.dependence" && r.value == "CONTACT")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.one.sign" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.reference" && r.value == "5")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N11.status" && r.value == "COMPUTED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.cell" && r.value == "2")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.definite" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.dependence" && r.value == "CONTACT")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.one.sign" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.reference" && r.value == "6")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N12.status" && r.value == "COMPUTED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.cut" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.regsum" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.cell.per.whole" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.definite" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.dependence" && r.value == "ONE-SEPARATION")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.one.sign" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.ratios" && r.value == "UNDEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.reference" && r.value == "1")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.separations" && r.value == "1")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.sign.set" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.status" && r.value == "COMPUTED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N2.successive" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.cut" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.regsum" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.cell.per.whole" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.definite" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.dependence" && r.value == "ONE-SEPARATION")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.one.sign" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.ratios" && r.value == "UNDEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.reference" && r.value == "1")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.separations" && r.value == "1")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.sign.set" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.status" && r.value == "COMPUTED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N3.successive" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.cell" && r.value == "2")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.definite" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.dependence" && r.value == "CONTACT")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.one.sign" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cas.SINK.ARC.COUNT.QUTRIT.s0-s1.N4.ratios" && r.value == "UNDEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqca.cells.at.face.B" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqca.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqca.first.sign.change" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqca.first.undefined" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqca.reading.of.record" && r.value == "RING.ARC.COUNT")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (And.intro check_39 (And.intro check_40 (And.intro check_41 (And.intro check_42 (And.intro check_43 (And.intro check_44 (And.intro check_45 (And.intro check_46 (And.intro check_47 (And.intro check_48 (And.intro check_49 (And.intro check_50 (And.intro check_51 (And.intro check_52 (And.intro check_53 (And.intro check_54 (And.intro check_55 (And.intro check_56 (And.intro check_57 (And.intro check_58 (And.intro check_59 (And.intro check_60 (check_61))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D531942_CASM
