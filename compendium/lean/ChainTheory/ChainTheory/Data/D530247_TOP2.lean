namespace ChainTheory.Data.D530247_TOP2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqtf.face", value := "A" },
  { key := "eqtf.mono", value := "MONOTONE" },
  { key := "eqtf.first.fall", value := "NONE" },
  { key := "eqtf.strict", value := "STRICTLY-INCREASING" },
  { key := "eqtf.transition", value := "YES" },
  { key := "eqtf.clss", value := "FIXED" },
  { key := "eqtf.first.change", value := "NONE" },
  { key := "eqtf.missing", value := "NONE" },
  { key := "eqtf.twin.cell", value := "YES" },
  { key := "eqtf.twin.face", value := "A" },
  { key := "eqtf.twin.missing", value := "NONE" },
  { key := "cell.C-EQTF", value := "YES" },
  { key := "CGB2.eqtf.mono", value := "MONOTONE" },
  { key := "CGB2.eqtf.first.fall", value := "NONE" },
  { key := "CGB2.eqtf.strict", value := "STRICTLY-INCREASING" },
  { key := "CGB2.eqtf.first.equal", value := "NONE" },
  { key := "CGB2.eqtf.transition", value := "YES" },
  { key := "CGB2.eqtf.transition.kinds.present", value := "5 of 12" },
  { key := "CGB2.eqtf.clss", value := "FIXED" },
  { key := "CGB2.eqtf.first.change", value := "NONE" },
  { key := "CGB2.eqtf.cell", value := "YES" },
  { key := "CGB2.eqtf.face", value := "A" },
  { key := "CGB2.eqtf.missing", value := "NONE" },
  { key := "LSRC.eqtf.mono", value := "MONOTONE" },
  { key := "LSRC.eqtf.first.fall", value := "NONE" },
  { key := "LSRC.eqtf.strict", value := "STRICTLY-INCREASING" },
  { key := "LSRC.eqtf.first.equal", value := "NONE" },
  { key := "LSRC.eqtf.transition", value := "YES" },
  { key := "LSRC.eqtf.transition.kinds.present", value := "8 of 12" },
  { key := "LSRC.eqtf.clss", value := "FIXED" },
  { key := "LSRC.eqtf.first.change", value := "NONE" },
  { key := "LSRC.eqtf.cell", value := "YES" },
  { key := "LSRC.eqtf.face", value := "A" },
  { key := "LSRC.eqtf.missing", value := "NONE" }
]

theorem check_1 : rows.length = 34 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqtf.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqtf.mono" && r.value == "MONOTONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqtf.first.fall" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqtf.strict" && r.value == "STRICTLY-INCREASING")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqtf.transition" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqtf.clss" && r.value == "FIXED")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqtf.first.change" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqtf.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqtf.twin.cell" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqtf.twin.face" && r.value == "A")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqtf.twin.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "cell.C-EQTF" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "CGB2.eqtf.mono" && r.value == "MONOTONE")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "CGB2.eqtf.first.fall" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "CGB2.eqtf.strict" && r.value == "STRICTLY-INCREASING")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "CGB2.eqtf.first.equal" && r.value == "NONE")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "CGB2.eqtf.transition" && r.value == "YES")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "CGB2.eqtf.transition.kinds.present" && r.value == "5 of 12")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "CGB2.eqtf.clss" && r.value == "FIXED")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "CGB2.eqtf.first.change" && r.value == "NONE")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "CGB2.eqtf.cell" && r.value == "YES")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "CGB2.eqtf.face" && r.value == "A")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "CGB2.eqtf.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "LSRC.eqtf.mono" && r.value == "MONOTONE")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "LSRC.eqtf.first.fall" && r.value == "NONE")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "LSRC.eqtf.strict" && r.value == "STRICTLY-INCREASING")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "LSRC.eqtf.first.equal" && r.value == "NONE")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "LSRC.eqtf.transition" && r.value == "YES")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "LSRC.eqtf.transition.kinds.present" && r.value == "8 of 12")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "LSRC.eqtf.clss" && r.value == "FIXED")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "LSRC.eqtf.first.change" && r.value == "NONE")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "LSRC.eqtf.cell" && r.value == "YES")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "LSRC.eqtf.face" && r.value == "A")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "LSRC.eqtf.missing" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 34) /\
    ((rows.filter (fun r => r.key == "eqtf.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.mono" && r.value == "MONOTONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.first.fall" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.strict" && r.value == "STRICTLY-INCREASING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.transition" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.clss" && r.value == "FIXED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.first.change" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.twin.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.twin.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtf.twin.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTF" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.mono" && r.value == "MONOTONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.first.fall" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.strict" && r.value == "STRICTLY-INCREASING")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.first.equal" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.transition" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.transition.kinds.present" && r.value == "5 of 12")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.clss" && r.value == "FIXED")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.first.change" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "CGB2.eqtf.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.mono" && r.value == "MONOTONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.first.fall" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.strict" && r.value == "STRICTLY-INCREASING")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.first.equal" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.transition" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.transition.kinds.present" && r.value == "8 of 12")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.clss" && r.value == "FIXED")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.first.change" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "LSRC.eqtf.missing" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (check_35))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D530247_TOP2
