namespace ChainTheory.Data.D526564_TLWN

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "E_TWODOCK:DOCKNUM.decided", value := "YES" },
  { key := "E_TWODOCK:HUBNUM.decided", value := "YES" },
  { key := "KOIDE.decided", value := "YES" },
  { key := "T6-MU-LEAF.decided", value := "YES" },
  { key := "T6-TAU-LL.decided", value := "YES" },
  { key := "cells", value := "E_TWODOCK:HUBNUM;E_TWODOCK:DOCKNUM;T6-MU-LEAF;T6-TAU-LL;KOIDE" },
  { key := "decided", value := "5 of 5" },
  { key := "face", value := "A" },
  { key := "first.cell", value := "NONE" },
  { key := "letter", value := "DECIDED" },
  { key := "reading", value := "KIT;LINKWT;DOCK" },
  { key := "triple", value := "POSITIVE;POSITIVE;NEGATIVE" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "decided" && r.value == "5 of 5")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "letter" && r.value == "DECIDED")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "first.cell" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "triple" && r.value == "POSITIVE;POSITIVE;NEGATIVE")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "decided" && r.value == "5 of 5")).length = 1) /\
    ((rows.filter (fun r => r.key == "letter" && r.value == "DECIDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "first.cell" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "triple" && r.value == "POSITIVE;POSITIVE;NEGATIVE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D526564_TLWN
