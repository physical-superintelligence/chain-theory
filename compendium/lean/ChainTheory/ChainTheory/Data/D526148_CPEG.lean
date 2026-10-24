set_option maxRecDepth 100000

namespace ChainTheory.Data.D526148_CPEG

structure Row where
  web : String
  degree_eq_k0 : String
  degree_eq_k1 : String
  degree_eq_k2 : String
  degree_eq_k3 : String
  degree_eq_all : String
  literal_face : String
deriving Repr

def rows : List Row := [
  { web := "ONELINK-READ", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "ONE-READOUT" },
  { web := "ONELINK-DOCK", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "NO-READOUT" },
  { web := "E_TWODOCK", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "T6-MU-LEAF", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "T6-TAU-LL", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "U_DOCKED", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "ONE-READOUT" },
  { web := "C_DOCKED", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "TA_DOCKED", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "D_DOCKED", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "S_DOCKED", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "BA_DOCKED", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "r-WPM", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "r-Z0D", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "r-HIG", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "ONE-READOUT" },
  { web := "r-GLU", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "ONE-READOUT" },
  { web := "N0", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "PJ3-WEB", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" },
  { web := "NJ3-WEB", degree_eq_k0 := "YES", degree_eq_k1 := "YES", degree_eq_k2 := "YES", degree_eq_k3 := "YES", degree_eq_all := "4 of 4", literal_face := "MANY-READOUT" }
]

theorem check_1 : rows.length = 18 := by decide

theorem check_2 : (rows.filter (fun r => r.degree_eq_all == "4 of 4")).length = 18 := by decide

theorem check_3 : (rows.filter (fun r => r.degree_eq_k0 == "YES")).length = 18 := by decide

theorem check_4 : (rows.filter (fun r => r.web == "ONELINK-READ" && r.literal_face == "ONE-READOUT")).length = 1 := by decide

theorem checks :
    (rows.length = 18) /\
    ((rows.filter (fun r => r.degree_eq_all == "4 of 4")).length = 18) /\
    ((rows.filter (fun r => r.degree_eq_k0 == "YES")).length = 18) /\
    ((rows.filter (fun r => r.web == "ONELINK-READ" && r.literal_face == "ONE-READOUT")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D526148_CPEG
