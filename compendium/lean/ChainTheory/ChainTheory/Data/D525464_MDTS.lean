set_option maxRecDepth 100000

namespace ChainTheory.Data.D525464_MDTS

structure Row where
  web : String
  measure : Int
  rank : Int
  dressing : Int
  S1 : Int
  S1_cut : Int
  pairs_eq_S1sq : String
  S2_eq_born : String
  S2_eq_product : String
  allreadable : String
deriving Repr

def rows : List Row := [
  { web := "E_TWODOCK", measure := 79, rank := 67, dressing := 3, S1 := 201, S1_cut := 67, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "T6-MU-LEAF", measure := 117, rank := 107, dressing := 9, S1 := 963, S1_cut := 107, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "T6-TAU-LL", measure := 155, rank := 147, dressing := 27, S1 := 3969, S1_cut := 147, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "U_DOCKED", measure := 12, rank := 6, dressing := 1, S1 := 6, S1_cut := 6, pairs_eq_S1sq := "YES", S2_eq_born := "YES", S2_eq_product := "YES", allreadable := "YES" },
  { web := "C_DOCKED", measure := 46, rank := 40, dressing := 3, S1 := 120, S1_cut := 40, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "TA_DOCKED", measure := 82, rank := 76, dressing := 12, S1 := 912, S1_cut := 76, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "D_DOCKED", measure := 52, rank := 46, dressing := 3, S1 := 138, S1_cut := 46, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "S_DOCKED", measure := 86, rank := 80, dressing := 9, S1 := 720, S1_cut := 80, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "BA_DOCKED", measure := 122, rank := 116, dressing := 36, S1 := 4176, S1_cut := 116, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "r-WPM", measure := 28, rank := 28, dressing := 1, S1 := 28, S1_cut := 28, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "r-Z0D", measure := 28, rank := 28, dressing := 1, S1 := 28, S1_cut := 28, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "r-HIG", measure := 16, rank := 16, dressing := 1, S1 := 16, S1_cut := 16, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "YES", allreadable := "NO" },
  { web := "r-GLU", measure := 27, rank := 27, dressing := 1, S1 := 27, S1_cut := 27, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "N0", measure := 36, rank := 20, dressing := 1, S1 := 20, S1_cut := 20, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "PJ3-WEB", measure := 85, rank := 85, dressing := 3, S1 := 255, S1_cut := 85, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" },
  { web := "NJ3-WEB", measure := 125, rank := 125, dressing := 9, S1 := 1125, S1_cut := 125, pairs_eq_S1sq := "YES", S2_eq_born := "NO", S2_eq_product := "NO", allreadable := "NO" }
]

theorem check_1 : rows.length = 16 := by decide

theorem check_2 : rows.all (fun r => r.rank * r.dressing == r.S1) = true := by decide

theorem check_3 : (rows.filter (fun r => r.pairs_eq_S1sq == "YES")).length = 16 := by decide

theorem check_4 : (rows.filter (fun r => r.web == "U_DOCKED" && r.S2_eq_born == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.allreadable == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 16) /\
    (rows.all (fun r => r.rank * r.dressing == r.S1) = true) /\
    ((rows.filter (fun r => r.pairs_eq_S1sq == "YES")).length = 16) /\
    ((rows.filter (fun r => r.web == "U_DOCKED" && r.S2_eq_born == "YES")).length = 1) /\
    ((rows.filter (fun r => r.allreadable == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D525464_MDTS
