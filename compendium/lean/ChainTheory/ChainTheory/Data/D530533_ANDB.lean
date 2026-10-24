namespace ChainTheory.Data.D530533_ANDB

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQBN", value := "YES" },
  { key := "eqbn.face", value := "A" },
  { key := "eqbn.cells.at.face.B", value := "NONE" },
  { key := "eqbn.STAR.face", value := "A" },
  { key := "eqbn.STAR.first.parting", value := "NONE" },
  { key := "eqbn.QUTRIT.face", value := "A" },
  { key := "eqbn.QUTRIT.first.parting", value := "NONE" },
  { key := "web.STAR.n1-n2.RING.2.face", value := "A" },
  { key := "web.STAR.n1-n2.RING.2.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n2.RING.2.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n2.RING.3.face", value := "A" },
  { key := "web.STAR.n1-n2.RING.3.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n2.RING.3.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n2.RING.4.face", value := "A" },
  { key := "web.STAR.n1-n2.RING.4.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n2.RING.4.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n2.RING.5.face", value := "A" },
  { key := "web.STAR.n1-n2.RING.5.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n2.RING.5.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n2.RING.6.face", value := "A" },
  { key := "web.STAR.n1-n2.RING.6.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n2.RING.6.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n3.RING.2.face", value := "A" },
  { key := "web.STAR.n1-n3.RING.2.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n3.RING.2.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n3.RING.3.face", value := "A" },
  { key := "web.STAR.n1-n3.RING.3.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n3.RING.3.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n3.RING.4.face", value := "A" },
  { key := "web.STAR.n1-n3.RING.4.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n3.RING.4.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n3.RING.5.face", value := "A" },
  { key := "web.STAR.n1-n3.RING.5.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n3.RING.5.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n1-n3.RING.6.face", value := "A" },
  { key := "web.STAR.n1-n3.RING.6.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n1-n3.RING.6.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n2-n3.RING.2.face", value := "A" },
  { key := "web.STAR.n2-n3.RING.2.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n2-n3.RING.2.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n2-n3.RING.3.face", value := "A" },
  { key := "web.STAR.n2-n3.RING.3.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n2-n3.RING.3.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n2-n3.RING.4.face", value := "A" },
  { key := "web.STAR.n2-n3.RING.4.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n2-n3.RING.4.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n2-n3.RING.5.face", value := "A" },
  { key := "web.STAR.n2-n3.RING.5.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n2-n3.RING.5.spectrum.translation.equal", value := "YES" },
  { key := "web.STAR.n2-n3.RING.6.face", value := "A" },
  { key := "web.STAR.n2-n3.RING.6.tiled.spectrum.eq", value := "YES" },
  { key := "web.STAR.n2-n3.RING.6.spectrum.translation.equal", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.2.face", value := "A" },
  { key := "web.QUTRIT.s0-s1.RING.2.tiled.spectrum.eq", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.2.spectrum.translation.equal", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.3.face", value := "A" },
  { key := "web.QUTRIT.s0-s1.RING.3.tiled.spectrum.eq", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.3.spectrum.translation.equal", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.4.face", value := "A" },
  { key := "web.QUTRIT.s0-s1.RING.4.tiled.spectrum.eq", value := "YES" }
]

theorem check_1 : rows.length = 60 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQBN" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqbn.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqbn.cells.at.face.B" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqbn.STAR.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqbn.STAR.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqbn.QUTRIT.face" && r.value == "A")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqbn.QUTRIT.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.2.face" && r.value == "A")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.3.face" && r.value == "A")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.4.face" && r.value == "A")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.4.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.5.face" && r.value == "A")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.5.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.5.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.6.face" && r.value == "A")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.6.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.6.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.2.face" && r.value == "A")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.3.face" && r.value == "A")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.4.face" && r.value == "A")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.4.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.5.face" && r.value == "A")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.5.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.5.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.6.face" && r.value == "A")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.6.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.6.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.2.face" && r.value == "A")).length = 1 := by decide

theorem check_40 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_41 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_42 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.3.face" && r.value == "A")).length = 1 := by decide

theorem check_43 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_44 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_45 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.4.face" && r.value == "A")).length = 1 := by decide

theorem check_46 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_47 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.4.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_48 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.5.face" && r.value == "A")).length = 1 := by decide

theorem check_49 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.5.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_50 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.5.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_51 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.6.face" && r.value == "A")).length = 1 := by decide

theorem check_52 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.6.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_53 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.6.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_54 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.2.face" && r.value == "A")).length = 1 := by decide

theorem check_55 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_56 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_57 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.3.face" && r.value == "A")).length = 1 := by decide

theorem check_58 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem check_59 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1 := by decide

theorem check_60 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.4.face" && r.value == "A")).length = 1 := by decide

theorem check_61 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 60) /\
    ((rows.filter (fun r => r.key == "cell.C-EQBN" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbn.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbn.cells.at.face.B" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbn.STAR.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbn.STAR.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbn.QUTRIT.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbn.QUTRIT.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.2.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.3.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.4.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.4.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.5.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.5.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.5.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.6.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.6.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.6.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.2.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.3.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.4.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.4.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.5.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.5.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.5.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.6.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.6.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.6.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.2.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.3.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.4.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.4.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.5.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.5.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.5.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.6.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.6.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.6.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.2.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.2.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.2.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.3.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.3.tiled.spectrum.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.3.spectrum.translation.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.4.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.4.tiled.spectrum.eq" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (And.intro check_39 (And.intro check_40 (And.intro check_41 (And.intro check_42 (And.intro check_43 (And.intro check_44 (And.intro check_45 (And.intro check_46 (And.intro check_47 (And.intro check_48 (And.intro check_49 (And.intro check_50 (And.intro check_51 (And.intro check_52 (And.intro check_53 (And.intro check_54 (And.intro check_55 (And.intro check_56 (And.intro check_57 (And.intro check_58 (And.intro check_59 (And.intro check_60 (check_61))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D530533_ANDB
