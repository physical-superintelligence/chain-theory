namespace ChainTheory.Data.D530196_ERMT

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQTM", value := "YES" },
  { key := "cell.C-EQTM.face", value := "A" },
  { key := "cell.C-EQTM.faceB.first", value := "J3" },
  { key := "demo.A1.max.sites", value := "3" },
  { key := "demo.A1.result", value := "STAYS-BOUNDED" },
  { key := "demo.A1.seed", value := "U" },
  { key := "demo.A2.max.sites", value := "6" },
  { key := "demo.A2.result", value := "STAYS-BOUNDED" },
  { key := "demo.A2.seed", value := "C" },
  { key := "demo.A3.max.sites", value := "7" },
  { key := "demo.A3.result", value := "STAYS-BOUNDED" },
  { key := "demo.A3.seed", value := "C" },
  { key := "demo.CUT.max.sites", value := "41" },
  { key := "demo.CUT.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.CUT.seed", value := "C" },
  { key := "demo.HF.max.sites", value := "4" },
  { key := "demo.HF.result", value := "STAYS-BOUNDED" },
  { key := "demo.HF.seed", value := "U" },
  { key := "demo.HFB.max.sites", value := "4" },
  { key := "demo.HFB.result", value := "STAYS-BOUNDED" },
  { key := "demo.HFB.seed", value := "U_DOCKED" },
  { key := "demo.HSD.max.sites", value := "41" },
  { key := "demo.HSD.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.HSD.seed", value := "C" },
  { key := "demo.HSII.max.sites", value := "5" },
  { key := "demo.HSII.result", value := "STAYS-BOUNDED" },
  { key := "demo.HSII.seed", value := "U" },
  { key := "demo.HSP.max.sites", value := "42" },
  { key := "demo.HSP.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.HSP.seed", value := "U" },
  { key := "demo.HSR.max.sites", value := "41" },
  { key := "demo.HSR.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.HSR.seed", value := "C" },
  { key := "demo.J2.max.sites", value := "18" },
  { key := "demo.J2.result", value := "STAYS-BOUNDED" },
  { key := "demo.J3.max.sites", value := "40" },
  { key := "demo.J3.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.J3.seed", value := "r-GLU" },
  { key := "demo.J4.max.sites", value := "40" },
  { key := "demo.J4.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.J4.seed", value := "r-HIG" },
  { key := "demo.PM.max.sites", value := "40" },
  { key := "demo.PM.result", value := "GROWS-TO-THE-DEMONSTRATION-CAP" },
  { key := "demo.PM.seed", value := "r-GLU" },
  { key := "faceB.R1.move", value := "CUT" },
  { key := "faceB.R1.seed", value := "C" },
  { key := "faceB.R2.move", value := "J3" },
  { key := "faceB.R2.seed", value := "r-GLU" },
  { key := "faceB.first.in.table.order", value := "J3" },
  { key := "faceB.first.site.adding.move", value := "A1" }
]

theorem check_1 : rows.length = 50 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQTM" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-EQTM.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-EQTM.faceB.first" && r.value == "J3")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "demo.A1.max.sites" && r.value == "3")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "demo.A1.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "demo.A1.seed" && r.value == "U")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "demo.A2.max.sites" && r.value == "6")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "demo.A2.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "demo.A2.seed" && r.value == "C")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "demo.A3.max.sites" && r.value == "7")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "demo.A3.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "demo.A3.seed" && r.value == "C")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "demo.CUT.max.sites" && r.value == "41")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "demo.CUT.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "demo.CUT.seed" && r.value == "C")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "demo.HF.max.sites" && r.value == "4")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "demo.HF.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "demo.HF.seed" && r.value == "U")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "demo.HFB.max.sites" && r.value == "4")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "demo.HFB.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "demo.HFB.seed" && r.value == "U_DOCKED")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "demo.HSD.max.sites" && r.value == "41")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "demo.HSD.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "demo.HSD.seed" && r.value == "C")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "demo.HSII.max.sites" && r.value == "5")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "demo.HSII.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "demo.HSII.seed" && r.value == "U")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "demo.HSP.max.sites" && r.value == "42")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "demo.HSP.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "demo.HSP.seed" && r.value == "U")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "demo.HSR.max.sites" && r.value == "41")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "demo.HSR.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "demo.HSR.seed" && r.value == "C")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "demo.J2.max.sites" && r.value == "18")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "demo.J2.result" && r.value == "STAYS-BOUNDED")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "demo.J3.max.sites" && r.value == "40")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "demo.J3.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "demo.J3.seed" && r.value == "r-GLU")).length = 1 := by decide

theorem check_40 : (rows.filter (fun r => r.key == "demo.J4.max.sites" && r.value == "40")).length = 1 := by decide

theorem check_41 : (rows.filter (fun r => r.key == "demo.J4.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_42 : (rows.filter (fun r => r.key == "demo.J4.seed" && r.value == "r-HIG")).length = 1 := by decide

theorem check_43 : (rows.filter (fun r => r.key == "demo.PM.max.sites" && r.value == "40")).length = 1 := by decide

theorem check_44 : (rows.filter (fun r => r.key == "demo.PM.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1 := by decide

theorem check_45 : (rows.filter (fun r => r.key == "demo.PM.seed" && r.value == "r-GLU")).length = 1 := by decide

theorem check_46 : (rows.filter (fun r => r.key == "faceB.R1.move" && r.value == "CUT")).length = 1 := by decide

theorem check_47 : (rows.filter (fun r => r.key == "faceB.R1.seed" && r.value == "C")).length = 1 := by decide

theorem check_48 : (rows.filter (fun r => r.key == "faceB.R2.move" && r.value == "J3")).length = 1 := by decide

theorem check_49 : (rows.filter (fun r => r.key == "faceB.R2.seed" && r.value == "r-GLU")).length = 1 := by decide

theorem check_50 : (rows.filter (fun r => r.key == "faceB.first.in.table.order" && r.value == "J3")).length = 1 := by decide

theorem check_51 : (rows.filter (fun r => r.key == "faceB.first.site.adding.move" && r.value == "A1")).length = 1 := by decide

theorem checks :
    (rows.length = 50) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTM.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTM.faceB.first" && r.value == "J3")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A1.max.sites" && r.value == "3")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A1.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A1.seed" && r.value == "U")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A2.max.sites" && r.value == "6")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A2.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A2.seed" && r.value == "C")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A3.max.sites" && r.value == "7")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A3.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.A3.seed" && r.value == "C")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.CUT.max.sites" && r.value == "41")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.CUT.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.CUT.seed" && r.value == "C")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HF.max.sites" && r.value == "4")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HF.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HF.seed" && r.value == "U")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HFB.max.sites" && r.value == "4")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HFB.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HFB.seed" && r.value == "U_DOCKED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSD.max.sites" && r.value == "41")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSD.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSD.seed" && r.value == "C")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSII.max.sites" && r.value == "5")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSII.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSII.seed" && r.value == "U")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSP.max.sites" && r.value == "42")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSP.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSP.seed" && r.value == "U")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSR.max.sites" && r.value == "41")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSR.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.HSR.seed" && r.value == "C")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J2.max.sites" && r.value == "18")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J2.result" && r.value == "STAYS-BOUNDED")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J3.max.sites" && r.value == "40")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J3.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J3.seed" && r.value == "r-GLU")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J4.max.sites" && r.value == "40")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J4.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.J4.seed" && r.value == "r-HIG")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.PM.max.sites" && r.value == "40")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.PM.result" && r.value == "GROWS-TO-THE-DEMONSTRATION-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "demo.PM.seed" && r.value == "r-GLU")).length = 1) /\
    ((rows.filter (fun r => r.key == "faceB.R1.move" && r.value == "CUT")).length = 1) /\
    ((rows.filter (fun r => r.key == "faceB.R1.seed" && r.value == "C")).length = 1) /\
    ((rows.filter (fun r => r.key == "faceB.R2.move" && r.value == "J3")).length = 1) /\
    ((rows.filter (fun r => r.key == "faceB.R2.seed" && r.value == "r-GLU")).length = 1) /\
    ((rows.filter (fun r => r.key == "faceB.first.in.table.order" && r.value == "J3")).length = 1) /\
    ((rows.filter (fun r => r.key == "faceB.first.site.adding.move" && r.value == "A1")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (And.intro check_39 (And.intro check_40 (And.intro check_41 (And.intro check_42 (And.intro check_43 (And.intro check_44 (And.intro check_45 (And.intro check_46 (And.intro check_47 (And.intro check_48 (And.intro check_49 (And.intro check_50 (check_51))))))))))))))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D530196_ERMT
