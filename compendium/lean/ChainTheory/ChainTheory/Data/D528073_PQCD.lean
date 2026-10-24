namespace ChainTheory.Data.D528073_PQCD

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "equs.ATTACH.DOCK.defined.of", value := "8 of 8" },
  { key := "equs.ATTACH.DOCK.face", value := "A" },
  { key := "equs.KIT.DOCK.defined.of", value := "5 of 8" },
  { key := "equs.KIT.DOCK.face", value := "B" },
  { key := "equs.record.defined.of", value := "8 of 8" },
  { key := "equs.record.dock.of.record.up", value := "a.n;b.n" },
  { key := "equs.record.dock.of.record.up.at.kit.dock", value := "YES" },
  { key := "equs.record.equal.of", value := "8 of 8" },
  { key := "equs.record.face", value := "A" },
  { key := "equs.record.first.parting", value := "NONE" },
  { key := "equs.record.reading", value := "DOCK" },
  { key := "equs.record.typing", value := "ATTACH" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "equs.record.defined.of" && r.value == "8 of 8")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "equs.record.equal.of" && r.value == "8 of 8")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "equs.record.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "equs.record.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "equs.record.typing" && r.value == "ATTACH")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "equs.KIT.DOCK.defined.of" && r.value == "5 of 8")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "equs.KIT.DOCK.face" && r.value == "B")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "equs.record.defined.of" && r.value == "8 of 8")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.record.equal.of" && r.value == "8 of 8")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.record.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.record.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.record.typing" && r.value == "ATTACH")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.KIT.DOCK.defined.of" && r.value == "5 of 8")).length = 1) /\
    ((rows.filter (fun r => r.key == "equs.KIT.DOCK.face" && r.value == "B")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D528073_PQCD
