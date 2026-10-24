set_option maxRecDepth 100000

namespace ChainTheory.Data.D533150_DRM2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQDR", value := "YES" },
  { key := "eqdr.implied.type.RWSR.ARROW.OFREC.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.ARROW.OFREC.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.ARROW.OFREC.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.ARROW.EXCH.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.ARROW.EXCH.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.ARROW.EXCH.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.LABEL.OFREC.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.LABEL.OFREC.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.LABEL.OFREC.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.LABEL.EXCH.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.LABEL.EXCH.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.LABEL.EXCH.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.GENRE.OFREC.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.GENRE.OFREC.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.GENRE.OFREC.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.GENRE.EXCH.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.GENRE.EXCH.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.GENRE.EXCH.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.HUB", value := "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.DOCK", value := "INVERSE-BORN-DOCK-EQUAL-RANK" },
  { key := "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.UNIT", value := "UNIT" },
  { key := "eqdr.implied.type.CRUS.SEPARATE.n1.W", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SEPARATE.n1.U.ONEREAD", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SEPARATE.n1.U.NREADS", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SHARED.n1.W", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SHARED.n1.U.ONEREAD", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SHARED.n1.U.NREADS", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SHAREDEND.n1.W", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SHAREDEND.n1.U.ONEREAD", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.implied.type.CRUS.SHAREDEND.n1.U.NREADS", value := "INVERSE-BORN-EQUAL-CONSTRUCTION" },
  { key := "eqdr.pro2.census.remet", value := "YES" },
  { key := "eqdr.faceA", value := "YES" },
  { key := "eqdr.faceB", value := "NO" },
  { key := "eqdr.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 38 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQDR" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.OFREC.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.EXCH.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.OFREC.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.EXCH.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.OFREC.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.EXCH.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.UNIT" && r.value == "UNIT")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SEPARATE.n1.W" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SEPARATE.n1.U.ONEREAD" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SEPARATE.n1.U.NREADS" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHARED.n1.W" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHARED.n1.U.ONEREAD" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHARED.n1.U.NREADS" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHAREDEND.n1.W" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHAREDEND.n1.U.ONEREAD" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHAREDEND.n1.U.NREADS" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "eqdr.pro2.census.remet" && r.value == "YES")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "eqdr.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "eqdr.faceB" && r.value == "NO")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "eqdr.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 38) /\
    ((rows.filter (fun r => r.key == "cell.C-EQDR" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.OFREC.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.ARROW.EXCH.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.OFREC.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.LABEL.EXCH.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.OFREC.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.GENRE.EXCH.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.OFREC.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.HUB" && r.value == "INVERSE-BORN-HUB-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.DOCK" && r.value == "INVERSE-BORN-DOCK-EQUAL-RANK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.RWSR.AMPLITUDE.EXCH.UNIT" && r.value == "UNIT")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SEPARATE.n1.W" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SEPARATE.n1.U.ONEREAD" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SEPARATE.n1.U.NREADS" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHARED.n1.W" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHARED.n1.U.ONEREAD" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHARED.n1.U.NREADS" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHAREDEND.n1.W" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHAREDEND.n1.U.ONEREAD" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.implied.type.CRUS.SHAREDEND.n1.U.NREADS" && r.value == "INVERSE-BORN-EQUAL-CONSTRUCTION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.pro2.census.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.faceB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdr.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (check_39))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D533150_DRM2
