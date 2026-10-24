set_option maxRecDepth 100000

namespace ChainTheory.Data.D533868_MXAS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqmx.DERIVED.SEED.POLAR.face.A", value := "NO" },
  { key := "eqmx.DERIVED.SEED.POLAR.face.B", value := "YES" },
  { key := "eqmx.DERIVED.SEED.QR.face.A", value := "NO" },
  { key := "eqmx.DERIVED.SEED.QR.face.B", value := "YES" },
  { key := "eqmx.KIT.REP.POLAR.face.A", value := "NO" },
  { key := "eqmx.KIT.REP.POLAR.face.B", value := "YES" },
  { key := "eqmx.KIT.REP.QR.face.A", value := "NO" },
  { key := "eqmx.KIT.REP.QR.face.B", value := "YES" },
  { key := "eqmx.KIT.SEED.POLAR.face.A", value := "YES" },
  { key := "eqmx.KIT.SEED.POLAR.face.B", value := "NO" },
  { key := "eqmx.KIT.SEED.POLAR.named", value := "NONE" },
  { key := "eqmx.KIT.SEED.QR.face.A", value := "YES" },
  { key := "eqmx.KIT.SEED.QR.face.B", value := "NO" },
  { key := "eqmx.KIT.SEED.QR.named", value := "NONE" },
  { key := "eqmx.face.A", value := "YES" },
  { key := "eqmx.face.B", value := "NO" },
  { key := "eqmx.ladder.reading.record", value := "KIT" },
  { key := "eqmx.named", value := "NONE" },
  { key := "eqmx.overlap.reading.record", value := "POLAR" },
  { key := "eqmx.sink.reading.record", value := "SEED" },
  { key := "keys.SM-29.base.equal", value := "YES" },
  { key := "keys.SM-29.grade", value := "DERIVED" },
  { key := "keys.SM-29.located", value := "YES" },
  { key := "keys.SM-29.mxph.letter", value := "UNKEYED" },
  { key := "keys.SM-29.subtype", value := "ROW-THM-CONDITIONAL" },
  { key := "keys.SM-29.token", value := "THM" },
  { key := "keys.SM-30.base.equal", value := "YES" },
  { key := "keys.SM-30.grade", value := "DERIVED" },
  { key := "keys.SM-30.located", value := "YES" },
  { key := "keys.SM-30.mxph.letter", value := "KEYED-COMPOSED" },
  { key := "keys.SM-30.subtype", value := "ROW-THM" },
  { key := "keys.SM-30.token", value := "THM" },
  { key := "keys.dart.grade", value := "DERIVED" },
  { key := "keys.mxph.face.A", value := "NO" },
  { key := "keys.qft.grade", value := "DERIVED" },
  { key := "keys.qft.row.is.hrcp", value := "YES" }
]

theorem check_1 : rows.length = 36 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.POLAR.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.POLAR.face.B" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.QR.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.QR.face.B" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqmx.KIT.REP.POLAR.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqmx.KIT.REP.POLAR.face.B" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqmx.KIT.REP.QR.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqmx.KIT.REP.QR.face.B" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqmx.KIT.SEED.POLAR.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqmx.KIT.SEED.POLAR.face.B" && r.value == "NO")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqmx.KIT.SEED.POLAR.named" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqmx.KIT.SEED.QR.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqmx.KIT.SEED.QR.face.B" && r.value == "NO")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqmx.KIT.SEED.QR.named" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqmx.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqmx.face.B" && r.value == "NO")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqmx.ladder.reading.record" && r.value == "KIT")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqmx.named" && r.value == "NONE")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqmx.overlap.reading.record" && r.value == "POLAR")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "eqmx.sink.reading.record" && r.value == "SEED")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "keys.SM-29.base.equal" && r.value == "YES")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "keys.SM-29.grade" && r.value == "DERIVED")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "keys.SM-29.located" && r.value == "YES")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "keys.SM-29.mxph.letter" && r.value == "UNKEYED")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "keys.SM-29.subtype" && r.value == "ROW-THM-CONDITIONAL")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "keys.SM-29.token" && r.value == "THM")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "keys.SM-30.base.equal" && r.value == "YES")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "keys.SM-30.grade" && r.value == "DERIVED")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "keys.SM-30.located" && r.value == "YES")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "keys.SM-30.mxph.letter" && r.value == "KEYED-COMPOSED")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "keys.SM-30.subtype" && r.value == "ROW-THM")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "keys.SM-30.token" && r.value == "THM")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "keys.dart.grade" && r.value == "DERIVED")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "keys.mxph.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "keys.qft.grade" && r.value == "DERIVED")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "keys.qft.row.is.hrcp" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 36) /\
    ((rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.POLAR.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.POLAR.face.B" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.QR.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.DERIVED.SEED.QR.face.B" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.REP.POLAR.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.REP.POLAR.face.B" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.REP.QR.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.REP.QR.face.B" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.SEED.POLAR.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.SEED.POLAR.face.B" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.SEED.POLAR.named" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.SEED.QR.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.SEED.QR.face.B" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.KIT.SEED.QR.named" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.face.B" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.ladder.reading.record" && r.value == "KIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.named" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.overlap.reading.record" && r.value == "POLAR")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmx.sink.reading.record" && r.value == "SEED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-29.base.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-29.grade" && r.value == "DERIVED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-29.located" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-29.mxph.letter" && r.value == "UNKEYED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-29.subtype" && r.value == "ROW-THM-CONDITIONAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-29.token" && r.value == "THM")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-30.base.equal" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-30.grade" && r.value == "DERIVED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-30.located" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-30.mxph.letter" && r.value == "KEYED-COMPOSED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-30.subtype" && r.value == "ROW-THM")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.SM-30.token" && r.value == "THM")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.dart.grade" && r.value == "DERIVED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.mxph.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.qft.grade" && r.value == "DERIVED")).length = 1) /\
    ((rows.filter (fun r => r.key == "keys.qft.row.is.hrcp" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (check_37))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D533868_MXAS
