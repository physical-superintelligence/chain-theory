set_option maxRecDepth 100000

namespace ChainTheory.Data.D526045_MBRJ

structure Row where
  test : String
  object : String
  letter : String
  face : String
  count : String
  first_parting : String
  note : String
deriving Repr

def rows : List Row := [
  { test := "ADMIT", object := "N2:PAIR;N2:DOUBLE-PAIR;N3:CHAIN;N3:TRIANGLE;N4:CHAIN;N4:RING", letter := "COLLECTIVE", face := "A", count := "6 of 6", first_parting := "NONE", note := "the reading of record: every pairing the docks admit at N two, three and four (NONE without a pairing)" },
  { test := "NAMED", object := "2:PAIR;3:TRIANGLE;3:CHAIN;4:CHAIN;4:RING;4:STAR;4:BRANCHED", letter := "PARTED", face := "B", count := "2", first_parting := "N4:STAR:REFUSED-AT-THE-VALENCE-BOUND:the copy at the vertex 1 at degree 3 against 2 docks", note := "the reading beside: the named shapes of the item each demanded at its N; the partings N4:STAR:REFUSED-AT-THE-VALENCE-BOUND:the copy at the vertex 1 at degree 3 against 2 docks;N4:BRANCHED:REFUSED-AT-THE-VALENCE-BOUND:the copy at the vertex 3 at degree 3 against 2 docks" },
  { test := "FACE", object := "the reading of record ADMIT", letter := "COLLECTIVE", face := "A", count := "6 of 6", first_parting := "NONE", note := "the face read at the reading of record; both faces printed, selected never" },
  { test := "WEB", object := "N2:PAIR", letter := "YES", face := "-", count := "-", first_parting := "-", note := "S2 5374791052610839/2949120000|649/150|5977541/147456000|0; the cross terms 863298|0|0|0; the ratio PLUS 1250/593|0|0|0; the ratio SWAP 592/5337|0|0|0" },
  { test := "WEB", object := "N2:DOUBLE-PAIR", letter := "YES", face := "-", count := "-", first_parting := "-", note := "S2 6582568004930839/2949120000|1286/225|5977541/147456000|0; the cross terms 1011042|0|0|0; the ratio PLUS 13778/6273|0|0|0; the ratio SWAP 144/697|0|0|0" },
  { test := "WEB", object := "N3:CHAIN", letter := "YES", face := "-", count := "-", first_parting := "-", note := "S2 25937039361992517/655360000|3233/50|17932623/32768000|0; the cross terms 24586254|0|0|0; the ratio PLUS 54289/16963|0|0|0; the ratio SWAP -13163/16963|0|0|0" },
  { test := "WEB", object := "N3:TRIANGLE", letter := "YES", face := "-", count := "-", first_parting := "-", note := "S2 29621517027272517/655360000|1929/25|17932623/32768000|0; the cross terms 27298134|0|0|0; the ratio PLUS 20667/6289|0|0|0; the ratio SWAP -4297/6289|0|0|0" },
  { test := "WEB", object := "N4:CHAIN", letter := "YES", face := "-", count := "-", first_parting := "-", note := "S2 107340836910937551/163840000|40671/50|53797869/8192000|0; the cross terms 454519836|0|0|0; the ratio PLUS 24964/5821|0|0|0; the ratio SWAP -9674/5821|0|0|0" },
  { test := "WEB", object := "N4:RING", letter := "YES", face := "-", count := "-", first_parting := "-", note := "S2 118485990119257551/163840000|23148/25|53797869/8192000|0; the cross terms 491366412|0|0|0; the ratio PLUS 27556/6305|0|0|0; the ratio SWAP -1978/1261|0|0|0" }
]

theorem check_1 : rows.length = 9 := by decide

theorem check_2 : (rows.filter (fun r => r.test == "ADMIT" && r.letter == "COLLECTIVE")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.test == "ADMIT" && r.count == "6 of 6")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.test == "ADMIT" && r.first_parting == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 9) /\
    ((rows.filter (fun r => r.test == "ADMIT" && r.letter == "COLLECTIVE")).length = 1) /\
    ((rows.filter (fun r => r.test == "ADMIT" && r.count == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.test == "ADMIT" && r.first_parting == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D526045_MBRJ
