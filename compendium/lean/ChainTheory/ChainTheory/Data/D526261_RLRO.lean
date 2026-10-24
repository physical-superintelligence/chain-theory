set_option maxRecDepth 100000

namespace ChainTheory.Data.D526261_RLRO

structure Row where
  web : String
  capture_prefix : String
  standing : String
  c_exact : String
  equal : String
  BODYWT_equal : String
  both_engines : String
deriving Repr

def rows : List Row := [
  { web := "E_TWODOCK", capture_prefix := "web.E_TWODOCK", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "T6-MU-LEAF", capture_prefix := "web.T6-MU-LEAF", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "T6-TAU-LL", capture_prefix := "web.T6-TAU-LL", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "U_DOCKED", capture_prefix := "web.U_DOCKED", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "C_DOCKED", capture_prefix := "web.C_DOCKED", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "TA_DOCKED", capture_prefix := "web.TA_DOCKED", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "D_DOCKED", capture_prefix := "web.D_DOCKED", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "S_DOCKED", capture_prefix := "web.S_DOCKED", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "BA_DOCKED", capture_prefix := "web.BA_DOCKED", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "r-WPM", capture_prefix := "web.r-WPM", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "r-Z0D", capture_prefix := "web.r-Z0D", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "r-HIG", capture_prefix := "web.r-HIG", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "r-GLU", capture_prefix := "web.r-GLU", standing := "BODY", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "N0", capture_prefix := "neutral.N0", standing := "BESIDE", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "PJ3-WEB", capture_prefix := "star.P.WEB", standing := "BESIDE", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" },
  { web := "NJ3-WEB", capture_prefix := "star.N.WEB", standing := "BESIDE", c_exact := "YES", equal := "YES", BODYWT_equal := "YES", both_engines := "SAME" }
]

theorem check_1 : rows.length = 16 := by decide

theorem check_2 : (rows.filter (fun r => r.equal == "YES")).length = 16 := by decide

theorem check_3 : (rows.filter (fun r => r.BODYWT_equal == "YES")).length = 16 := by decide

theorem check_4 : (rows.filter (fun r => r.standing == "BODY")).length = 13 := by decide

theorem check_5 : (rows.filter (fun r => r.standing == "BESIDE")).length = 3 := by decide

theorem check_6 : (rows.filter (fun r => r.c_exact == "YES")).length = 16 := by decide

theorem checks :
    (rows.length = 16) /\
    ((rows.filter (fun r => r.equal == "YES")).length = 16) /\
    ((rows.filter (fun r => r.BODYWT_equal == "YES")).length = 16) /\
    ((rows.filter (fun r => r.standing == "BODY")).length = 13) /\
    ((rows.filter (fun r => r.standing == "BESIDE")).length = 3) /\
    ((rows.filter (fun r => r.c_exact == "YES")).length = 16) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D526261_RLRO
