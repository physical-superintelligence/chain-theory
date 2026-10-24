namespace ChainTheory.Data.D530610_PCHS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQSC", value := "YES" },
  { key := "rings.face.A", value := "28 of 28" },
  { key := "rings.face.B.first", value := "NONE" },
  { key := "C-EQSC.rings.B", value := "NONE" },
  { key := "chains.beside.face.A", value := "5 of 5" },
  { key := "web.STAR.n1-n2.RING.N2.face.A", value := "YES" },
  { key := "web.STAR.n1-n2.RING.N3.face.A", value := "YES" },
  { key := "web.STAR.n1-n2.RING.N4.face.A", value := "YES" },
  { key := "web.STAR.n1-n2.RING.N5.face.A", value := "YES" },
  { key := "web.STAR.n1-n2.RING.N6.face.A", value := "YES" },
  { key := "web.STAR.n1-n2.RING.N7.face.A", value := "YES" },
  { key := "web.STAR.n1-n2.RING.N8.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N2.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N3.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N4.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N5.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N6.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N7.face.A", value := "YES" },
  { key := "web.STAR.n1-n3.RING.N8.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N2.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N3.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N4.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N5.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N6.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N7.face.A", value := "YES" },
  { key := "web.STAR.n2-n3.RING.N8.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N2.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N3.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N4.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N5.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N6.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N7.face.A", value := "YES" },
  { key := "web.QUTRIT.s0-s1.RING.N8.face.A", value := "YES" }
]

theorem check_1 : rows.length = 33 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQSC" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "rings.face.A" && r.value == "28 of 28")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "rings.face.B.first" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "C-EQSC.rings.B" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "chains.beside.face.A" && r.value == "5 of 5")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N2.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N3.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N4.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N5.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N6.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N7.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N8.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N2.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N3.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N4.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N5.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N6.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N7.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N8.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N2.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N3.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N4.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N5.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N6.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N7.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N8.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N2.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N3.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N4.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N5.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N6.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N7.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N8.face.A" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 33) /\
    ((rows.filter (fun r => r.key == "cell.C-EQSC" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "rings.face.A" && r.value == "28 of 28")).length = 1) /\
    ((rows.filter (fun r => r.key == "rings.face.B.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "C-EQSC.rings.B" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "chains.beside.face.A" && r.value == "5 of 5")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N2.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N3.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N4.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N5.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N6.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N7.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n2.RING.N8.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N2.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N3.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N4.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N5.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N6.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N7.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n1-n3.RING.N8.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N2.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N3.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N4.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N5.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N6.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N7.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.STAR.n2-n3.RING.N8.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N2.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N3.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N4.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N5.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N6.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N7.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "web.QUTRIT.s0-s1.RING.N8.face.A" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (check_34)))))))))))))))))))))))))))))))))

end ChainTheory.Data.D530610_PCHS
