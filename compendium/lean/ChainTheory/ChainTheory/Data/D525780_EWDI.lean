set_option maxRecDepth 100000

namespace ChainTheory.Data.D525780_EWDI

structure Row where
  reading : String
  record : String
  body : String
  reads : Int
  internal_reads : Int
  internal_doublet_count : Int
  z6_met : String
deriving Repr

def rows : List Row := [
  { reading := "TB.JK.SFAR", record := "YES", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 1, z6_met := "20 of 20" },
  { reading := "TB.JK.SFAR", record := "YES", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 1, z6_met := "30 of 30" },
  { reading := "TB.JK.SFAR", record := "YES", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 1, z6_met := "40 of 40" },
  { reading := "TB.JK.SFAR", record := "YES", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 0, z6_met := "12 of 12" },
  { reading := "TB.JK.SREAD", record := "NO", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 1, z6_met := "20 of 20" },
  { reading := "TB.JK.SREAD", record := "NO", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 1, z6_met := "30 of 30" },
  { reading := "TB.JK.SREAD", record := "NO", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 1, z6_met := "40 of 40" },
  { reading := "TB.JK.SREAD", record := "NO", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 0, z6_met := "12 of 12" },
  { reading := "TB.JT.SFAR", record := "NO", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 3, z6_met := "20 of 20" },
  { reading := "TB.JT.SFAR", record := "NO", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 5, z6_met := "30 of 30" },
  { reading := "TB.JT.SFAR", record := "NO", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 7, z6_met := "40 of 40" },
  { reading := "TB.JT.SFAR", record := "NO", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 2, z6_met := "12 of 12" },
  { reading := "TB.JT.SREAD", record := "NO", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 3, z6_met := "20 of 20" },
  { reading := "TB.JT.SREAD", record := "NO", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 5, z6_met := "30 of 30" },
  { reading := "TB.JT.SREAD", record := "NO", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 7, z6_met := "40 of 40" },
  { reading := "TB.JT.SREAD", record := "NO", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 2, z6_met := "12 of 12" },
  { reading := "T.JK.SFAR", record := "4717", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 0, z6_met := "20 of 20" },
  { reading := "T.JK.SFAR", record := "4717", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 0, z6_met := "30 of 30" },
  { reading := "T.JK.SFAR", record := "4717", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 0, z6_met := "40 of 40" },
  { reading := "T.JK.SFAR", record := "4717", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 0, z6_met := "12 of 12" },
  { reading := "T.JK.SREAD", record := "NO", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 0, z6_met := "20 of 20" },
  { reading := "T.JK.SREAD", record := "NO", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 0, z6_met := "30 of 30" },
  { reading := "T.JK.SREAD", record := "NO", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 0, z6_met := "40 of 40" },
  { reading := "T.JK.SREAD", record := "NO", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 0, z6_met := "12 of 12" },
  { reading := "T.JT.SFAR", record := "NO", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 0, z6_met := "20 of 20" },
  { reading := "T.JT.SFAR", record := "NO", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 0, z6_met := "30 of 30" },
  { reading := "T.JT.SFAR", record := "NO", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 0, z6_met := "40 of 40" },
  { reading := "T.JT.SFAR", record := "NO", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 2, z6_met := "12 of 12" },
  { reading := "T.JT.SREAD", record := "NO", body := "E_TWODOCK", reads := 20, internal_reads := 8, internal_doublet_count := 0, z6_met := "20 of 20" },
  { reading := "T.JT.SREAD", record := "NO", body := "T6-MU-LEAF", reads := 30, internal_reads := 14, internal_doublet_count := 0, z6_met := "30 of 30" },
  { reading := "T.JT.SREAD", record := "NO", body := "T6-TAU-LL", reads := 40, internal_reads := 20, internal_doublet_count := 0, z6_met := "40 of 40" },
  { reading := "T.JT.SREAD", record := "NO", body := "U0:NEUTRAL:U", reads := 12, internal_reads := 4, internal_doublet_count := 2, z6_met := "12 of 12" }
]

theorem check_1 : rows.length = 32 := by decide

theorem check_2 : (rows.filter (fun r => r.record == "YES" && r.internal_doublet_count == 1)).length = 3 := by decide

theorem check_3 : (rows.filter (fun r => r.record == "YES" && r.internal_doublet_count == 0)).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.record == "YES")).length = 4 := by decide

theorem checks :
    (rows.length = 32) /\
    ((rows.filter (fun r => r.record == "YES" && r.internal_doublet_count == 1)).length = 3) /\
    ((rows.filter (fun r => r.record == "YES" && r.internal_doublet_count == 0)).length = 1) /\
    ((rows.filter (fun r => r.record == "YES")).length = 4) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D525780_EWDI
