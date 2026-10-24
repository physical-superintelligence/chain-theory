set_option maxRecDepth 100000

namespace ChainTheory.Data.D535008_DEFM

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqmd.faceA.met", value := "YES" },
  { key := "eqmd.faceB.met", value := "NO" },
  { key := "eqmd.first.parting", value := "NONE" },
  { key := "eqmd.face", value := "A" },
  { key := "cell.C-EQMD", value := "YES" },
  { key := "open.read.washed.reads", value := "Z" },
  { key := "open.read.rank.one.at.every.washed", value := "YES" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqmd.faceA.met" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqmd.faceB.met" && r.value == "NO")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqmd.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqmd.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-EQMD" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "open.read.washed.reads" && r.value == "Z")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "open.read.rank.one.at.every.washed" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "eqmd.faceA.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmd.faceB.met" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmd.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmd.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQMD" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "open.read.washed.reads" && r.value == "Z")).length = 1) /\
    ((rows.filter (fun r => r.key == "open.read.rank.one.at.every.washed" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D535008_DEFM
