namespace ChainTheory.Data.D529072_HGHL

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqhg.set.of.record", value := "L" },
  { key := "eqhg.legs.count", value := "7" },
  { key := "eqhg.rows.count", value := "4" },
  { key := "eqhg.keys.count", value := "28" },
  { key := "eqhg.keyed", value := "28 of 28" },
  { key := "eqhg.rows.keyed", value := "4 of 4" },
  { key := "eqhg.attach.site.output", value := "28 of 28" },
  { key := "eqhg.unit.output", value := "28 of 28" },
  { key := "eqhg.register.output", value := "28 of 28" },
  { key := "eqhg.order.carried", value := "4 of 4" },
  { key := "eqhg.scheme.carried", value := "4 of 4" },
  { key := "eqhg.face", value := "A" },
  { key := "eqhg.first.unkeyed.row", value := "NONE" },
  { key := "eqhg.first.unkeyed.reason", value := "NONE" },
  { key := "eqhg.kit.reading.keys", value := "48" },
  { key := "eqhg.kit.reading.keyed", value := "48 of 48" },
  { key := "eqhg.kit.reading.first.unkeyed.row", value := "NONE" },
  { key := "eqhg.control.attachment.keyed", value := "0 of 4" },
  { key := "eqhg.keyed.VALENCE", value := "8 of 28" },
  { key := "cell.C-EQHG", value := "YES" }
]

theorem check_1 : rows.length = 20 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqhg.set.of.record" && r.value == "L")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhg.legs.count" && r.value == "7")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhg.rows.count" && r.value == "4")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqhg.keys.count" && r.value == "28")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqhg.keyed" && r.value == "28 of 28")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqhg.rows.keyed" && r.value == "4 of 4")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqhg.attach.site.output" && r.value == "28 of 28")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqhg.unit.output" && r.value == "28 of 28")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqhg.register.output" && r.value == "28 of 28")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqhg.order.carried" && r.value == "4 of 4")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqhg.scheme.carried" && r.value == "4 of 4")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqhg.face" && r.value == "A")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqhg.first.unkeyed.row" && r.value == "NONE")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqhg.first.unkeyed.reason" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqhg.kit.reading.keys" && r.value == "48")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqhg.kit.reading.keyed" && r.value == "48 of 48")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqhg.kit.reading.first.unkeyed.row" && r.value == "NONE")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqhg.control.attachment.keyed" && r.value == "0 of 4")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqhg.keyed.VALENCE" && r.value == "8 of 28")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "cell.C-EQHG" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 20) /\
    ((rows.filter (fun r => r.key == "eqhg.set.of.record" && r.value == "L")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.legs.count" && r.value == "7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.rows.count" && r.value == "4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.keys.count" && r.value == "28")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.keyed" && r.value == "28 of 28")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.rows.keyed" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.attach.site.output" && r.value == "28 of 28")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.unit.output" && r.value == "28 of 28")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.register.output" && r.value == "28 of 28")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.order.carried" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.scheme.carried" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.first.unkeyed.row" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.first.unkeyed.reason" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.kit.reading.keys" && r.value == "48")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.kit.reading.keyed" && r.value == "48 of 48")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.kit.reading.first.unkeyed.row" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.control.attachment.keyed" && r.value == "0 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.keyed.VALENCE" && r.value == "8 of 28")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHG" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (check_21))))))))))))))))))))

end ChainTheory.Data.D529072_HGHL
