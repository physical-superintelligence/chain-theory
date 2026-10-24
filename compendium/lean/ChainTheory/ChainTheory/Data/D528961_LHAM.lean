namespace ChainTheory.Data.D528961_LHAM

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQLH", value := "YES" },
  { key := "eqlh.face", value := "A" },
  { key := "eqlh.first.parting", value := "NONE" },
  { key := "eqlh.partings", value := "NONE" },
  { key := "eqlh.partings.count", value := "0" },
  { key := "star.core.eq.triangle", value := "YES" },
  { key := "star.dockstruck.eq.electron.unstruck", value := "YES" },
  { key := "star.hub.eq.assembly", value := "YES" },
  { key := "star.links", value := "11" },
  { key := "star.sum.eq.measure", value := "YES" }
]

theorem check_1 : rows.length = 10 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQLH" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqlh.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqlh.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqlh.partings" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqlh.partings.count" && r.value == "0")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "star.core.eq.triangle" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "star.dockstruck.eq.electron.unstruck" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "star.hub.eq.assembly" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "star.links" && r.value == "11")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "star.sum.eq.measure" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 10) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlh.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlh.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlh.partings" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqlh.partings.count" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "star.core.eq.triangle" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "star.dockstruck.eq.electron.unstruck" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "star.hub.eq.assembly" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "star.links" && r.value == "11")).length = 1) /\
    ((rows.filter (fun r => r.key == "star.sum.eq.measure" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (check_11))))))))))

end ChainTheory.Data.D528961_LHAM
