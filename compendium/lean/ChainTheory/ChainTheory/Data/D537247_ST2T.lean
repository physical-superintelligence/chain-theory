set_option maxRecDepth 100000

namespace ChainTheory.Data.D537247_ST2T

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "reading.wash.record", value := "CAP" },
  { key := "reading.order.record", value := "RECORD" },
  { key := "reading.register.record", value := "SUPPORT" },
  { key := "reading.sinkset.record", value := "SR" },
  { key := "reading.group.record", value := "WEYL" },
  { key := "cell.C-WASH", value := "YES" },
  { key := "cell.C-FIXP", value := "YES" },
  { key := "cell.C-CONV", value := "YES" },
  { key := "cell.C-EQEQ", value := "YES" },
  { key := "eqeq.face", value := "FACE-A-UNIQUE-FIXED-POINT-AT-EVERY-CAPPED-WEB" },
  { key := "eqeq.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "reading.wash.record" && r.value == "CAP")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "reading.order.record" && r.value == "RECORD")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "reading.register.record" && r.value == "SUPPORT")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "reading.sinkset.record" && r.value == "SR")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "reading.group.record" && r.value == "WEYL")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-WASH" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-FIXP" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cell.C-CONV" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cell.C-EQEQ" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqeq.face" && r.value == "FACE-A-UNIQUE-FIXED-POINT-AT-EVERY-CAPPED-WEB")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqeq.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "reading.wash.record" && r.value == "CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "reading.order.record" && r.value == "RECORD")).length = 1) /\
    ((rows.filter (fun r => r.key == "reading.register.record" && r.value == "SUPPORT")).length = 1) /\
    ((rows.filter (fun r => r.key == "reading.sinkset.record" && r.value == "SR")).length = 1) /\
    ((rows.filter (fun r => r.key == "reading.group.record" && r.value == "WEYL")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-WASH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-FIXP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CONV" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQEQ" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqeq.face" && r.value == "FACE-A-UNIQUE-FIXED-POINT-AT-EVERY-CAPPED-WEB")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqeq.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D537247_ST2T
