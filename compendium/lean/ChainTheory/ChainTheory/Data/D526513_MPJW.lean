namespace ChainTheory.Data.D526513_MPJW

structure Row where
  test : String
  reading : String
  of_record : String
  letter : String
  count : String
  face : String
deriving Repr

def rows : List Row := [
  { test := "T1-PERWEB", reading := "W1", of_record := "YES", letter := "EQUAL", count := "8 of 8", face := "A" },
  { test := "T1-PERWEB", reading := "W2", of_record := "NO", letter := "PARTING", count := "0 of 8", face := "-" },
  { test := "T1-PERWEB", reading := "W3", of_record := "NO", letter := "PARTING", count := "0 of 8", face := "-" },
  { test := "T1-PERWEB", reading := "PWONCE", of_record := "NO", letter := "PARTING", count := "0 of 8", face := "-" },
  { test := "FACE", reading := "W1", of_record := "YES", letter := "EQUAL", count := "8 of 8", face := "A" }
]

theorem check_1 : rows.length = 5 := by decide

theorem check_2 : (rows.filter (fun r => r.of_record == "YES")).length = 2 := by decide

theorem check_3 : (rows.filter (fun r => r.test == "T1-PERWEB" && r.reading == "W1" && r.letter == "EQUAL" && r.count == "8 of 8")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.test == "FACE" && r.reading == "W1" && r.letter == "EQUAL" && r.face == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.letter == "PARTING")).length = 3 := by decide

theorem checks :
    (rows.length = 5) /\
    ((rows.filter (fun r => r.of_record == "YES")).length = 2) /\
    ((rows.filter (fun r => r.test == "T1-PERWEB" && r.reading == "W1" && r.letter == "EQUAL" && r.count == "8 of 8")).length = 1) /\
    ((rows.filter (fun r => r.test == "FACE" && r.reading == "W1" && r.letter == "EQUAL" && r.face == "A")).length = 1) /\
    ((rows.filter (fun r => r.letter == "PARTING")).length = 3) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D526513_MPJW
