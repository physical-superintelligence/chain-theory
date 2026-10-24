namespace ChainTheory.Data.D532023_DST2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqdj.CGB2.mono.cell", value := "YES" },
  { key := "eqdj.CGB2.sink.cell", value := "YES" },
  { key := "eqdj.CGB2.eqds.cell", value := "YES" },
  { key := "eqdj.CGB2.eqds.face", value := "A" },
  { key := "eqdj.CGB2.eqds.missing", value := "NONE" },
  { key := "eqdj.KSAT.W.mono.cell", value := "YES" },
  { key := "eqdj.KSAT.W.sink.cell", value := "YES" },
  { key := "eqdj.KSAT.W.eqds.cell", value := "YES" },
  { key := "eqdj.KSAT.W.eqds.face", value := "A" },
  { key := "eqdj.KSAT.W.eqds.missing", value := "NONE" },
  { key := "eqdj.KSAT.X.mono.cell", value := "YES" },
  { key := "eqdj.KSAT.X.sink.cell", value := "YES" },
  { key := "eqdj.KSAT.X.eqds.cell", value := "YES" },
  { key := "eqdj.KSAT.X.eqds.face", value := "A" },
  { key := "eqdj.KSAT.X.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.E.ALL.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.E.ALL.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.E.ALL.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.E.ALL.eqds.face", value := "A" },
  { key := "eqdj.SSPW.E.ALL.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.E.PM.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.E.PM.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.E.PM.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.E.PM.eqds.face", value := "A" },
  { key := "eqdj.SSPW.E.PM.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.N.ALL.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.N.ALL.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.N.ALL.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.N.ALL.eqds.face", value := "A" },
  { key := "eqdj.SSPW.N.ALL.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.N.PM.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.N.PM.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.N.PM.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.N.PM.eqds.face", value := "A" },
  { key := "eqdj.SSPW.N.PM.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.P.ALL.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.P.ALL.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.P.ALL.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.P.ALL.eqds.face", value := "A" },
  { key := "eqdj.SSPW.P.ALL.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.P.PM.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.P.PM.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.P.PM.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.P.PM.eqds.face", value := "A" },
  { key := "eqdj.SSPW.P.PM.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.R.ALL.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.R.ALL.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.R.ALL.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.R.ALL.eqds.face", value := "A" },
  { key := "eqdj.SSPW.R.ALL.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.S.ALL.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.S.ALL.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.S.ALL.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.S.ALL.eqds.face", value := "A" },
  { key := "eqdj.SSPW.S.ALL.eqds.missing", value := "NONE" },
  { key := "eqdj.SSPW.S.PM.mono.cell", value := "YES" },
  { key := "eqdj.SSPW.S.PM.sink.cell", value := "YES" },
  { key := "eqdj.SSPW.S.PM.eqds.cell", value := "YES" },
  { key := "eqdj.SSPW.S.PM.eqds.face", value := "A" },
  { key := "eqdj.SSPW.S.PM.eqds.missing", value := "NONE" }
]

theorem check_1 : rows.length = 60 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqdj.CGB2.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqdj.CGB2.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqdj.CGB2.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqdj.CGB2.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqdj.CGB2.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqdj.KSAT.W.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqdj.KSAT.W.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqdj.KSAT.W.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqdj.KSAT.W.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqdj.KSAT.W.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqdj.KSAT.X.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqdj.KSAT.X.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqdj.KSAT.X.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqdj.KSAT.X.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqdj.KSAT.X.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_40 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_41 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_42 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_43 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_44 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_45 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_46 : (rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_47 : (rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_48 : (rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_49 : (rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_50 : (rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_51 : (rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_52 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_53 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_54 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_55 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_56 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_57 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.mono.cell" && r.value == "YES")).length = 1 := by decide

theorem check_58 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.sink.cell" && r.value == "YES")).length = 1 := by decide

theorem check_59 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.eqds.cell" && r.value == "YES")).length = 1 := by decide

theorem check_60 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.eqds.face" && r.value == "A")).length = 1 := by decide

theorem check_61 : (rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.eqds.missing" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 60) /\
    ((rows.filter (fun r => r.key == "eqdj.CGB2.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.CGB2.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.CGB2.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.CGB2.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.CGB2.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.W.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.W.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.W.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.W.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.W.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.X.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.X.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.X.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.X.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.KSAT.X.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.ALL.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.E.PM.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.ALL.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.N.PM.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.ALL.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.P.PM.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.R.ALL.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.ALL.eqds.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.mono.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.sink.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.eqds.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.eqds.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdj.SSPW.S.PM.eqds.missing" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (And.intro check_39 (And.intro check_40 (And.intro check_41 (And.intro check_42 (And.intro check_43 (And.intro check_44 (And.intro check_45 (And.intro check_46 (And.intro check_47 (And.intro check_48 (And.intro check_49 (And.intro check_50 (And.intro check_51 (And.intro check_52 (And.intro check_53 (And.intro check_54 (And.intro check_55 (And.intro check_56 (And.intro check_57 (And.intro check_58 (And.intro check_59 (And.intro check_60 (check_61))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D532023_DST2
