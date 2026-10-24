import ActClosure.Web

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def axiomOfRecord : List String := ["Nothing", "exists", "but", "finitely", "many", "maximally", "entangled", "pairs", "of", "qudits,", "some", "qudits", "shared,", "known", "only", "by", "distilling", "them."]

def act_A01 : Act := ⟨"A01", .attach, .forward, (2, 2), "a site of dimension 2", "a fresh qudit of dimension 2", "a free direction at the read site", "the partner an end of no pair", 1, 1, 0, "AXIOM;QUDIT;DISTILLING;READ"⟩

def act_A02 : Act := ⟨"A02", .attach, .forward, (2, 3), "a site of dimension 2 or 3", "a fresh qudit of the other dimension", "a free direction at the read site", "the partner an end of no pair", 1, 1, 0, "AXIOM;QUDIT;DISTILLING;READ"⟩

def act_A03 : Act := ⟨"A03", .attach, .forward, (2, 4), "a site of dimension 2 or 4", "a fresh qudit of the other dimension", "a free direction at the read site", "the partner an end of no pair", 1, 1, 0, "AXIOM;QUDIT;DISTILLING;READ"⟩

def act_A04 : Act := ⟨"A04", .attach, .forward, (3, 3), "a site of dimension 3", "a fresh qudit of dimension 3", "a free direction at the read site", "the partner an end of no pair", 1, 1, 0, "AXIOM;QUDIT;DISTILLING;READ"⟩

def act_A05 : Act := ⟨"A05", .attach, .forward, (3, 4), "a site of dimension 3 or 4", "a fresh qudit of the other dimension", "a free direction at the read site", "the partner an end of no pair", 1, 1, 0, "AXIOM;QUDIT;DISTILLING;READ"⟩

def act_A06 : Act := ⟨"A06", .attach, .forward, (4, 4), "a site of dimension 4", "a fresh qudit of dimension 4", "a free direction at the read site", "the partner an end of no pair", 1, 1, 0, "AXIOM;QUDIT;DISTILLING;READ"⟩

def act_J01 : Act := ⟨"J01", .joinWithin, .forward, (2, 2), "a site of dimension 2", "a site of dimension 2 of the same web", "a free direction at both sites", "the two sites in one web and not adjacent", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_J02 : Act := ⟨"J02", .joinWithin, .forward, (2, 3), "a site of dimension 2 or 3", "a site of the other dimension of the same web", "a free direction at both sites", "the two sites in one web and not adjacent", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_J03 : Act := ⟨"J03", .joinWithin, .forward, (2, 4), "a site of dimension 2 or 4", "a site of the other dimension of the same web", "a free direction at both sites", "the two sites in one web and not adjacent", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_J04 : Act := ⟨"J04", .joinWithin, .forward, (3, 3), "a site of dimension 3", "a site of dimension 3 of the same web", "a free direction at both sites", "the two sites in one web and not adjacent", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_J05 : Act := ⟨"J05", .joinWithin, .forward, (3, 4), "a site of dimension 3 or 4", "a site of the other dimension of the same web", "a free direction at both sites", "the two sites in one web and not adjacent", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_J06 : Act := ⟨"J06", .joinWithin, .forward, (4, 4), "a site of dimension 4", "a site of dimension 4 of the same web", "a free direction at both sites", "the two sites in one web and not adjacent", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_X01 : Act := ⟨"X01", .joinAcross, .forward, (2, 2), "a site of dimension 2", "a site of dimension 2 of another web", "a free direction at both sites", "the two sites in two webs", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_X02 : Act := ⟨"X02", .joinAcross, .forward, (2, 3), "a site of dimension 2 or 3", "a site of the other dimension of another web", "a free direction at both sites", "the two sites in two webs", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_X03 : Act := ⟨"X03", .joinAcross, .forward, (2, 4), "a site of dimension 2 or 4", "a site of the other dimension of another web", "a free direction at both sites", "the two sites in two webs", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_X04 : Act := ⟨"X04", .joinAcross, .forward, (3, 3), "a site of dimension 3", "a site of dimension 3 of another web", "a free direction at both sites", "the two sites in two webs", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_X05 : Act := ⟨"X05", .joinAcross, .forward, (3, 4), "a site of dimension 3 or 4", "a site of the other dimension of another web", "a free direction at both sites", "the two sites in two webs", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_X06 : Act := ⟨"X06", .joinAcross, .forward, (4, 4), "a site of dimension 4", "a site of dimension 4 of another web", "a free direction at both sites", "the two sites in two webs", 0, 1, 1, "SHARED;DISTILLING;READ"⟩

def act_H01 : Act := ⟨"H01", .hubForm, .forward, (2, 2), "a shared site of dimension 2 at a pair of genre 22", "the pair read as one qudit of dimension 4", "no free direction asked; the two ends shared", "the pair and the pairs at its two ends", (-1 : Int), (-1 : Int), 1, "QUDIT;SHARED;DISTILLING"⟩

def act_A01I : Act := ⟨"A01I", .attach, .inverse, (2, 2), "a site of dimension 2", "the leaf at the far end", "no free direction asked", "the far end a leaf", (-1 : Int), (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_A02I : Act := ⟨"A02I", .attach, .inverse, (2, 3), "a site of dimension 2 or 3", "the leaf at the far end", "no free direction asked", "the far end a leaf", (-1 : Int), (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_A03I : Act := ⟨"A03I", .attach, .inverse, (2, 4), "a site of dimension 2 or 4", "the leaf at the far end", "no free direction asked", "the far end a leaf", (-1 : Int), (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_A04I : Act := ⟨"A04I", .attach, .inverse, (3, 3), "a site of dimension 3", "the leaf at the far end", "no free direction asked", "the far end a leaf", (-1 : Int), (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_A05I : Act := ⟨"A05I", .attach, .inverse, (3, 4), "a site of dimension 3 or 4", "the leaf at the far end", "no free direction asked", "the far end a leaf", (-1 : Int), (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_A06I : Act := ⟨"A06I", .attach, .inverse, (4, 4), "a site of dimension 4", "the leaf at the far end", "no free direction asked", "the far end a leaf", (-1 : Int), (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_J01I : Act := ⟨"J01I", .joinWithin, .inverse, (2, 2), "a site of dimension 2", "the far end of a pair that is no bridge", "no free direction asked", "the pair no bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_J02I : Act := ⟨"J02I", .joinWithin, .inverse, (2, 3), "a site of dimension 2 or 3", "the far end of a pair that is no bridge", "no free direction asked", "the pair no bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_J03I : Act := ⟨"J03I", .joinWithin, .inverse, (2, 4), "a site of dimension 2 or 4", "the far end of a pair that is no bridge", "no free direction asked", "the pair no bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_J04I : Act := ⟨"J04I", .joinWithin, .inverse, (3, 3), "a site of dimension 3", "the far end of a pair that is no bridge", "no free direction asked", "the pair no bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_J05I : Act := ⟨"J05I", .joinWithin, .inverse, (3, 4), "a site of dimension 3 or 4", "the far end of a pair that is no bridge", "no free direction asked", "the pair no bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_J06I : Act := ⟨"J06I", .joinWithin, .inverse, (4, 4), "a site of dimension 4", "the far end of a pair that is no bridge", "no free direction asked", "the pair no bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_X01I : Act := ⟨"X01I", .joinAcross, .inverse, (2, 2), "a site of dimension 2", "the far end of a bridge", "no free direction asked", "the pair a bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_X02I : Act := ⟨"X02I", .joinAcross, .inverse, (2, 3), "a site of dimension 2 or 3", "the far end of a bridge", "no free direction asked", "the pair a bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_X03I : Act := ⟨"X03I", .joinAcross, .inverse, (2, 4), "a site of dimension 2 or 4", "the far end of a bridge", "no free direction asked", "the pair a bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_X04I : Act := ⟨"X04I", .joinAcross, .inverse, (3, 3), "a site of dimension 3", "the far end of a bridge", "no free direction asked", "the pair a bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_X05I : Act := ⟨"X05I", .joinAcross, .inverse, (3, 4), "a site of dimension 3 or 4", "the far end of a bridge", "no free direction asked", "the pair a bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_X06I : Act := ⟨"X06I", .joinAcross, .inverse, (4, 4), "a site of dimension 4", "the far end of a bridge", "no free direction asked", "the pair a bridge and no end a leaf", 0, (-1 : Int), 1, "DISTILLING;KNOWN"⟩

def act_H01I : Act := ⟨"H01I", .hubForm, .inverse, (2, 2), "a hub of dimension 4 at valence at most 2", "the hub read as a pair of two qubits", "no free direction asked; the hub at valence at most 2", "each qubit taking one pair of the hub", 1, 1, 1, "QUDIT;DISTILLING;KNOWN"⟩

def actsOfRecord : List Act := [act_A01, act_A02, act_A03, act_A04, act_A05, act_A06, act_J01, act_J02, act_J03, act_J04, act_J05, act_J06, act_X01, act_X02, act_X03, act_X04, act_X05, act_X06, act_H01, act_A01I, act_A02I, act_A03I, act_A04I, act_A05I, act_A06I, act_J01I, act_J02I, act_J03I, act_J04I, act_J05I, act_J06I, act_X01I, act_X02I, act_X03I, act_X04I, act_X05I, act_X06I, act_H01I]

def matchOfRecord : List (String × List String) := [("A01", []), ("A02", ["A1"]), ("A03", ["A2"]), ("A04", []), ("A05", ["A3"]), ("A06", []), ("J01", ["J2"]), ("J02", []), ("J03", []), ("J04", ["J3"]), ("J05", []), ("J06", ["J4"]), ("X01", ["J2"]), ("X02", []), ("X03", []), ("X04", ["J3", "PM"]), ("X05", []), ("X06", ["J4"]), ("H01", []), ("A01I", []), ("A02I", ["A1I"]), ("A03I", ["A2I"]), ("A04I", []), ("A05I", ["A3I"]), ("A06I", []), ("J01I", ["J2I"]), ("J02I", []), ("J03I", []), ("J04I", ["J3I"]), ("J05I", []), ("J06I", ["J4I"]), ("X01I", ["J2I"]), ("X02I", []), ("X03I", []), ("X04I", ["J3I", "PMI"]), ("X05I", []), ("X06I", ["J4I"]), ("H01I", [])]

end ActClosure
