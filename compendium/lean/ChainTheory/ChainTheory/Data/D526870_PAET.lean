namespace ChainTheory.Data.D526870_PAET

structure Row where
  test : String
  reading : String
  of_record : String
  letter : String
  count : String
  first_parting : String
deriving Repr

def rows : List Row := [
  { test := "ORDER-TWO-READOUT", reading := "W1", of_record := "YES", letter := "EQUAL", count := "8 of 8", first_parting := "NONE" },
  { test := "ORDER-TWO-READOUT", reading := "W2", of_record := "NO", letter := "PARTING", count := "0 of 8", first_parting := "L1:e.A-e.B:299725/18246703251456|0|41875/4561675812864|0 against 11989/6879707136|0|1675/1719926784|0" },
  { test := "ORDER-TWO-READOUT", reading := "W3", of_record := "NO", letter := "PARTING", count := "0 of 8", first_parting := "L1:e.A-e.B:53818621/72986813005824|0|7519075/18246703251456|0 against 11989/6879707136|0|1675/1719926784|0" },
  { test := "ORDER-TWO-READOUT", reading := "PWONCE", of_record := "NO", letter := "PARTING", count := "0 of 8", first_parting := "L1:e.A-e.B:11989/901071765504|0|1675/225267941376|0 against 11989/6879707136|0|1675/1719926784|0" },
  { test := "ORDER-THREE-TERM", reading := "W1", of_record := "YES", letter := "ZERO", count := "YES", first_parting := "-" },
  { test := "FACE", reading := "W1", of_record := "YES", letter := "EQUAL", count := "8 of 8", first_parting := "NONE" },
  { test := "BESIDE-MUON", reading := "W1", of_record := "BESIDE", letter := "EQUAL", count := "14 of 14", first_parting := "NONE" },
  { test := "BESIDE-TAU", reading := "W1", of_record := "BESIDE", letter := "EQUAL", count := "20 of 20", first_parting := "NONE" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.test == "ORDER-TWO-READOUT" && r.reading == "W1" && r.of_record == "YES" && r.letter == "EQUAL")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.test == "ORDER-THREE-TERM" && r.letter == "ZERO")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.letter == "PARTING")).length = 3 := by decide

theorem check_5 : (rows.filter (fun r => r.test == "FACE" && r.letter == "EQUAL" && r.count == "8 of 8")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.test == "ORDER-TWO-READOUT" && r.reading == "W1" && r.of_record == "YES" && r.letter == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.test == "ORDER-THREE-TERM" && r.letter == "ZERO")).length = 1) /\
    ((rows.filter (fun r => r.letter == "PARTING")).length = 3) /\
    ((rows.filter (fun r => r.test == "FACE" && r.letter == "EQUAL" && r.count == "8 of 8")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D526870_PAET
