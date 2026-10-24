set_option maxRecDepth 100000

namespace ChainTheory.Data.D524963_MCQH

structure Row where
  body : String
  face : String
  register_face : String
  register : Int
  ratio : String
  eq_motc : String
deriving Repr

def rows : List Row := [
  { body := "U_DOCKED", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "U_DOCKED", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "U_DOCKED", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "U_DOCKED", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "U_DOCKED", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "NO-ROW (a reading beside)" },
  { body := "U_DOCKED", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "NO-ROW (a reading beside)" },
  { body := "C_DOCKED", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "C_DOCKED", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "C_DOCKED", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "C_DOCKED", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "C_DOCKED", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "NO-ROW (a reading beside)" },
  { body := "C_DOCKED", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "NO-ROW (a reading beside)" },
  { body := "TA_DOCKED", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "TA_DOCKED", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "TA_DOCKED", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "TA_DOCKED", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "TA_DOCKED", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "NO-ROW (a reading beside)" },
  { body := "TA_DOCKED", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "NO-ROW (a reading beside)" },
  { body := "D_DOCKED", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "D_DOCKED", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "D_DOCKED", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "D_DOCKED", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "D_DOCKED", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "NO-ROW (a reading beside)" },
  { body := "D_DOCKED", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "NO-ROW (a reading beside)" },
  { body := "S_DOCKED", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "S_DOCKED", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "S_DOCKED", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "S_DOCKED", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "S_DOCKED", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "NO-ROW (a reading beside)" },
  { body := "S_DOCKED", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "NO-ROW (a reading beside)" },
  { body := "BA_DOCKED", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "BA_DOCKED", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "BA_DOCKED", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "BA_DOCKED", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "BA_DOCKED", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "NO-ROW (a reading beside)" },
  { body := "BA_DOCKED", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "NO-ROW (a reading beside)" },
  { body := "P", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "P", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "P", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "P", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "P", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "P", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "N", face := "one", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "N", face := "one", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "N", face := "two", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "N", face := "two", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" },
  { body := "N", face := "twob", register_face := "dock", register := 16, ratio := "1/1", eq_motc := "YES" },
  { body := "N", face := "twob", register_face := "port", register := 81, ratio := "81/16", eq_motc := "YES" }
]

theorem check_1 : rows.length = 48 := by decide

theorem check_2 : (rows.filter (fun r => r.register_face == "dock")).length = 24 := by decide

theorem check_3 : (rows.filter (fun r => r.register_face == "port")).length = 24 := by decide

theorem checks :
    (rows.length = 48) /\
    ((rows.filter (fun r => r.register_face == "dock")).length = 24) /\
    ((rows.filter (fun r => r.register_face == "port")).length = 24) :=
  And.intro check_1 (And.intro check_2 (check_3))

end ChainTheory.Data.D524963_MCQH
