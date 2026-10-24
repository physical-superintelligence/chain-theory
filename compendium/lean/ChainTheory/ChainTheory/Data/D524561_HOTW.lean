namespace ChainTheory.Data.D524561_HOTW

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQHD", value := "YES" },
  { key := "eqhd.bodies.derived", value := "4 of 4" },
  { key := "eqhd.doublet.orientation.names", value := "CORE" },
  { key := "eqhd.doublet.orientation.reading", value := "CORE: the read line enters the dock link at its qutrit (core) end, the KET copy at the dimension-3 end, the qubit end the BRA copy receiving the transported basis as its conjugate (the typing of record of the kit END lines at the lepton docks; the SLOT and L readings of the read engine of record, the centre 3 and the far 2)" },
  { key := "eqhd.face", value := "A" },
  { key := "eqhd.first.parting", value := "NONE" },
  { key := "eqhd.same.at.4.of.4", value := "YES" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQHD" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhd.bodies.derived" && r.value == "4 of 4")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhd.same.at.4.of.4" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqhd.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqhd.face" && r.value == "A")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqhd.doublet.orientation.names" && r.value == "CORE")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHD" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.bodies.derived" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.same.at.4.of.4" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.doublet.orientation.names" && r.value == "CORE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D524561_HOTW
