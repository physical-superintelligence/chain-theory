namespace ChainTheory.Data.D526972_NRGE

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQER", value := "YES" },
  { key := "eqer.body13.junctions.equal", value := "27 of 27" },
  { key := "eqer.body36.junctions.equal", value := "193 of 193" },
  { key := "eqer.conserving.register", value := "B" },
  { key := "eqer.corollary", value := "YES" },
  { key := "eqer.cut.face.first.junction.differs", value := "D_DOCKED.Q" },
  { key := "eqer.cut.face.junctions.differ", value := "35" },
  { key := "eqer.dock.register", value := "B" },
  { key := "eqer.face", value := "A" },
  { key := "eqer.first.parting", value := "NONE" },
  { key := "eqer.junctions.equal", value := "577 of 577" },
  { key := "eqer.legs.equal", value := "2102 of 2102" },
  { key := "eqer.partings", value := "0" },
  { key := "eqer.registers.equal", value := "YES" },
  { key := "eqer.shared.sites.equal", value := "42 of 42" }
]

theorem check_1 : rows.length = 15 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQER" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqer.junctions.equal" && r.value == "577 of 577")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqer.legs.equal" && r.value == "2102 of 2102")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqer.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqer.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqer.partings" && r.value == "0")).length = 1 := by decide

theorem checks :
    (rows.length = 15) /\
    ((rows.filter (fun r => r.key == "cell.C-EQER" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqer.junctions.equal" && r.value == "577 of 577")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqer.legs.equal" && r.value == "2102 of 2102")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqer.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqer.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqer.partings" && r.value == "0")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D526972_NRGE
