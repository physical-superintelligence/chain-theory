namespace ChainTheory.Data.D524535_SCGH

structure Row where
  body : String
  face : String
deriving Repr

def rows : List Row := [
  { body := "P", face := "whole" },
  { body := "P", face := "cut.leg" },
  { body := "N", face := "whole" },
  { body := "N", face := "cut.leg" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.body == "P")).length = 2 := by decide

theorem check_3 : (rows.filter (fun r => r.body == "N")).length = 2 := by decide

theorem check_4 : (rows.filter (fun r => r.face == "whole")).length = 2 := by decide

theorem check_5 : (rows.filter (fun r => r.face == "cut.leg")).length = 2 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.body == "P")).length = 2) /\
    ((rows.filter (fun r => r.body == "N")).length = 2) /\
    ((rows.filter (fun r => r.face == "whole")).length = 2) /\
    ((rows.filter (fun r => r.face == "cut.leg")).length = 2) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D524535_SCGH
