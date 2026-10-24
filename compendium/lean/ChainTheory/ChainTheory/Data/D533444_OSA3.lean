set_option maxRecDepth 100000

namespace ChainTheory.Data.D533444_OSA3

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQOS", value := "YES" },
  { key := "eqos.face.A", value := "YES" },
  { key := "eqos.first.parting", value := "NONE" },
  { key := "eqos.outside.sinks", value := "NONE" },
  { key := "cell.C-TAUH", value := "YES" },
  { key := "eqor.E.S1", value := "EQUAL" },
  { key := "eqor.MU.S1", value := "EQUAL" },
  { key := "eqor.TAU.S1", value := "PARTING" },
  { key := "eqor.all.equal", value := "NO" },
  { key := "sink.E_TWODOCK.W.multiset", value := "EQUAL" },
  { key := "sink.E_TWODOCK.W.outside", value := "NONE" },
  { key := "sink.E_TWODOCK.W.remet", value := "YES" },
  { key := "sink.E_TWODOCK.X.multiset", value := "EQUAL" },
  { key := "sink.E_TWODOCK.X.outside", value := "NONE" },
  { key := "sink.E_TWODOCK.X.remet", value := "YES" },
  { key := "sink.T6-MU-LEAF.W.multiset", value := "EQUAL" },
  { key := "sink.T6-MU-LEAF.W.outside", value := "NONE" },
  { key := "sink.T6-MU-LEAF.W.remet", value := "YES" }
]

theorem check_1 : rows.length = 18 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQOS" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqos.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqos.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqos.outside.sinks" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-TAUH" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqor.E.S1" && r.value == "EQUAL")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqor.MU.S1" && r.value == "EQUAL")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqor.TAU.S1" && r.value == "PARTING")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqor.all.equal" && r.value == "NO")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "sink.E_TWODOCK.W.multiset" && r.value == "EQUAL")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "sink.E_TWODOCK.W.outside" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "sink.E_TWODOCK.W.remet" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "sink.E_TWODOCK.X.multiset" && r.value == "EQUAL")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "sink.E_TWODOCK.X.outside" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "sink.E_TWODOCK.X.remet" && r.value == "YES")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "sink.T6-MU-LEAF.W.multiset" && r.value == "EQUAL")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "sink.T6-MU-LEAF.W.outside" && r.value == "NONE")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "sink.T6-MU-LEAF.W.remet" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 18) /\
    ((rows.filter (fun r => r.key == "cell.C-EQOS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqos.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqos.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqos.outside.sinks" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-TAUH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqor.E.S1" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqor.MU.S1" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqor.TAU.S1" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqor.all.equal" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.E_TWODOCK.W.multiset" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.E_TWODOCK.W.outside" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.E_TWODOCK.W.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.E_TWODOCK.X.multiset" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.E_TWODOCK.X.outside" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.E_TWODOCK.X.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.T6-MU-LEAF.W.multiset" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.T6-MU-LEAF.W.outside" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "sink.T6-MU-LEAF.W.remet" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (check_19))))))))))))))))))

end ChainTheory.Data.D533444_OSA3
