set_option maxRecDepth 100000

namespace ChainTheory.Data.D525911_QLHL

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "up.faceA.count", value := "35" },
  { key := "up.faceA.both.count", value := "33" },
  { key := "up.faceA.deciding.count", value := "9" },
  { key := "up.faceA.deciding.both.count", value := "9" },
  { key := "up.faceA.acts.census", value := "CORE/CORE:2;CORE/DOCK:2;CORE/HUB:9;DOCK/CORE:2;DOCK/DOCK:2;DOCK/HUB:18" },
  { key := "up.faceA.deciding.pure.list", value := "P:Q/P:k3" },
  { key := "up.faceA.deciding.first", value := "P:Q/P:k3" },
  { key := "up.faceA.first", value := "P:Jd/P:Q" },
  { key := "up.faceB.count", value := "22" },
  { key := "up.faceB.step1.count", value := "0" },
  { key := "up.faceB.deciding.first", value := "P:Q/P:K: step two: over the valence bound at K" },
  { key := "up.faceB.pure.hub.first", value := "NONE" },
  { key := "up.faceB.pure.core.first", value := "NONE" },
  { key := "up.faceB.junction.moved.count", value := "3" },
  { key := "up.ladder.ids", value := "P:Q/P:k3" },
  { key := "up.ladder.hub", value := "0;1;2" },
  { key := "up.ladder.docklinks", value := "2;2;2" },
  { key := "up.ladder.junctions", value := "1;1;1" },
  { key := "up.ladder.readdocks", value := "1;1;1" },
  { key := "up.ladder.hublegs", value := "0;1;1" },
  { key := "down.faceA.count", value := "241" },
  { key := "down.faceA.both.count", value := "183" },
  { key := "down.faceA.deciding.count", value := "124" },
  { key := "down.faceA.deciding.both.count", value := "124" },
  { key := "down.faceA.acts.census", value := "CORE/DOCK:2;CORE/ELSEWHERE:1;CORE/HUB:35;DOCK/CORE:2;DOCK/DOCK:2;DOCK/HUB:36;HUB/CORE:18;HUB/DOCK:18;HUB/ELSEWHERE:3;HUB/HUB:124" },
  { key := "down.faceA.deciding.pure.list", value := "P:f3/P:k3" },
  { key := "down.faceA.deciding.first", value := "P:f3/P:k3" },
  { key := "down.faceA.first", value := "P:Jd/P:f3" },
  { key := "down.faceB.count", value := "255" },
  { key := "down.faceB.step1.count", value := "8" },
  { key := "down.faceB.deciding.first", value := "P:f3/P:F: step two: over the valence bound at F" },
  { key := "down.faceB.pure.hub.first", value := "P:F: step one: over the valence bound at F" },
  { key := "down.faceB.pure.core.first", value := "P:Q: step one: over the valence bound at Q" },
  { key := "down.faceB.junction.moved.count", value := "95" },
  { key := "down.ladder.ids", value := "P:f3/P:k3" },
  { key := "down.ladder.hub", value := "1;2;3" },
  { key := "down.ladder.docklinks", value := "2;2;2" },
  { key := "down.ladder.junctions", value := "1;1;1" },
  { key := "down.ladder.readdocks", value := "1;1;1" },
  { key := "down.ladder.hublegs", value := "1;1;1" },
  { key := "gen.ladder.kit.up", value := "0;1;2" },
  { key := "gen.ladder.kit.down", value := "1;2;3" },
  { key := "kitq.types.record", value := "charm:NONE;top:NONE;strange:FACE-A-BESIDE-THE-DECIDING-SET;bottom:FACE-A-BESIDE-THE-DECIDING-SET" },
  { key := "kitq.types.beside", value := "charm:SAME;top:SAME;strange:FACE-A-BESIDE-THE-DECIDING-SET;bottom:FACE-A-BESIDE-THE-DECIDING-SET" },
  { key := "reads.ladder.up.content", value := "DOUBLET:-3:-3:1;SINGLET:0:-6:1 / DOUBLET:-3:-3:1;SINGLET:0:-6:1 / DOUBLET:-3:-3:1;SINGLET:0:-6:1" },
  { key := "reads.ladder.down.content", value := "DOUBLET:-3:-3:1;SINGLET:0:-6:1 / DOUBLET:-3:-3:1;SINGLET:0:-6:1 / DOUBLET:-3:-3:1;SINGLET:0:-6:1" },
  { key := "reads.kit.ladder.up.content", value := "DOUBLET:-3:-3:1;SINGLET:0:-6:1 / DOUBLET:-3:-3:1 / DOUBLET:-3:-3:1" },
  { key := "reads.kit.ladder.down.content", value := "DOUBLET:-3:-3:1;SINGLET:0:-6:1 / DOUBLET:-3:-3:1 / DOUBLET:-3:-3:1" },
  { key := "content.deciding.up.source_content_at_three.count", value := "9 of 9" },
  { key := "content.deciding.down.source_content_at_three.count", value := "124 of 124" },
  { key := "qfsu.flavour.reading", value := "the generation label of every body of 523152 the hub count (518419); at this seat the label moves by one at every hub step and by nothing at any (3,3) cut (523152: the (3,3) cuts change a typed count at 0 of 1972); the hub-leg cuts of record at the seat side that change a count (20 of 350) detach a hub from the core, the inverse of a hub attachment at the core; the flavour-changing object the hub count of the ladder and not a cut" },
  { key := "cell.C-EQQL", value := "YES" },
  { key := "eqql.letter.cell", value := "DERIVED" },
  { key := "cmp.rows.parsed", value := "16 of 16" },
  { key := "cmp.rows.keys.found", value := "4 of 4" },
  { key := "cmp.kit.ladder.up.quark.rows", value := "0;0;0" },
  { key := "cmp.kit.ladder.down.quark.rows", value := "0;0;0" },
  { key := "cmp.ladder.up.quark.rows", value := "0;0;0" },
  { key := "cmp.ladder.down.quark.rows", value := "0;0;0" },
  { key := "cmp.deciding.up.rows_as_source", value := "9 of 9" },
  { key := "cmp.deciding.down.rows_as_source", value := "124 of 124" }
]

theorem check_1 : rows.length = 61 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "up.faceA.deciding.count" && r.value == "9")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "down.faceA.deciding.count" && r.value == "124")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-EQQL" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "content.deciding.up.source_content_at_three.count" && r.value == "9 of 9")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "content.deciding.down.source_content_at_three.count" && r.value == "124 of 124")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "up.ladder.hub" && r.value == "0;1;2")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "down.ladder.hub" && r.value == "1;2;3")).length = 1 := by decide

theorem checks :
    (rows.length = 61) /\
    ((rows.filter (fun r => r.key == "up.faceA.deciding.count" && r.value == "9")).length = 1) /\
    ((rows.filter (fun r => r.key == "down.faceA.deciding.count" && r.value == "124")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQQL" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "content.deciding.up.source_content_at_three.count" && r.value == "9 of 9")).length = 1) /\
    ((rows.filter (fun r => r.key == "content.deciding.down.source_content_at_three.count" && r.value == "124 of 124")).length = 1) /\
    ((rows.filter (fun r => r.key == "up.ladder.hub" && r.value == "0;1;2")).length = 1) /\
    ((rows.filter (fun r => r.key == "down.ladder.hub" && r.value == "1;2;3")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D525911_QLHL
