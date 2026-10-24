set_option maxRecDepth 100000

namespace ChainTheory.Data.D524722_MOTC

structure Row where
  web : String
  rebf : String
  hdie : String
  raob : String
  raob_terms : String
  ofcs_office : String
  ofcs_order : String
  ofcs_born : String
  ofcs_support : String
  mucs : String
  sozm_hubr : String
  sozm_eqzl : String
  sozm_pora : String
  sozm_lepb : String
deriving Repr

def rows : List Row := [
  { web := "E_TWODOCK", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "YES", sozm_eqzl := "YES", sozm_pora := "YES", sozm_lepb := "YES" },
  { web := "T6-MU-LEAF", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "YES", sozm_eqzl := "YES", sozm_pora := "YES", sozm_lepb := "YES" },
  { web := "T6-TAU-LL", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "YES", sozm_eqzl := "YES", sozm_pora := "YES", sozm_lepb := "YES" },
  { web := "U_DOCKED", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "C_DOCKED", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "TA_DOCKED", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "D_DOCKED", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "S_DOCKED", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "BA_DOCKED", rebf := "YES", hdie := "YES", raob := "YES", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "r-WPM", rebf := "YES", hdie := "YES", raob := "NO", raob_terms := "NO", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "r-Z0D", rebf := "YES", hdie := "YES", raob := "NO", raob_terms := "NO", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "r-HIG", rebf := "YES", hdie := "YES", raob := "NO", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" },
  { web := "r-GLU", rebf := "YES", hdie := "YES", raob := "NO", raob_terms := "YES", ofcs_office := "YES", ofcs_order := "YES", ofcs_born := "YES", ofcs_support := "YES", mucs := "YES", sozm_hubr := "-", sozm_eqzl := "-", sozm_pora := "-", sozm_lepb := "-" }
]

theorem check_1 : rows.length = 13 := by decide

theorem check_2 : (rows.filter (fun r => r.rebf == "YES")).length = 13 := by decide

theorem check_3 : (rows.filter (fun r => r.hdie == "YES")).length = 13 := by decide

theorem check_4 : (rows.filter (fun r => r.raob == "YES")).length = 9 := by decide

theorem check_5 : (rows.filter (fun r => r.ofcs_office == "YES")).length = 13 := by decide

theorem check_6 : (rows.filter (fun r => r.mucs == "YES")).length = 13 := by decide

theorem checks :
    (rows.length = 13) /\
    ((rows.filter (fun r => r.rebf == "YES")).length = 13) /\
    ((rows.filter (fun r => r.hdie == "YES")).length = 13) /\
    ((rows.filter (fun r => r.raob == "YES")).length = 9) /\
    ((rows.filter (fun r => r.ofcs_office == "YES")).length = 13) /\
    ((rows.filter (fun r => r.mucs == "YES")).length = 13) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D524722_MOTC
