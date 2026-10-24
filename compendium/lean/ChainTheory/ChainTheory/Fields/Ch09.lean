import AlphaDerivation
import ChainTheory.Data.D524535_SCGH
import ChainTheory.Kernel.D524748_SCGI
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.Data.D526870_PAET
import ChainTheory.Data.D527777_AJBP
import ChainTheory.ConditionUnions
import ChainTheory.Data.D531706_MUG2

set_option maxRecDepth 100000

namespace ChainTheory.Fields.Ch09

opaque row_522217_SMZT : Prop

opaque row_523203_AMSP : Prop

opaque row_523306_SOZM : Prop

opaque row_523407_MSTC : Prop

end ChainTheory.Fields.Ch09

namespace ChainTheory.Fields.Ch09

opaque wall_524457_EQBS : Prop

def wall_524457_EQBS_open : ChainTheory.OpenResult :=
  { address := 524457, stem := "BSRC", decidingClass := "EQBS", firstParting := "-", chapter := "ch09", statement := wall_524457_EQBS }

theorem row_524535_SCGH : type_of% ChainTheory.Data.D524535_SCGH.checks :=
  ChainTheory.Data.D524535_SCGH.checks

theorem row_524748_SCGI : type_of% ChainTheory.Kernel.D524748_SCGI.checks :=
  ChainTheory.Kernel.D524748_SCGI.checks

abbrev cond_525754_SCAC : Prop := ChainTheory.Discussion.Landed93.cond_525754_SCAC

abbrev row_525754_SCAC : Prop := ChainTheory.Discussion.Landed93.row_525754_SCAC

def wall_526122_EQAJ_open : ChainTheory.OpenResult :=
  { address := 526122, stem := "MJWA", decidingClass := "EQAJ", firstParting := "parting", chapter := "ch09", statement := ChainTheory.Discussion.Landed93.wall_526122_EQAJ }

end ChainTheory.Fields.Ch09

namespace ChainTheory.Fields.Ch09

opaque wall_526844_EQRX : Prop

def wall_526844_EQRX_open : ChainTheory.OpenResult :=
  { address := 526844, stem := "RPRG", decidingClass := "EQRX", firstParting := "-", chapter := "ch09", statement := wall_526844_EQRX }

theorem row_526870_PAET : type_of% ChainTheory.Data.D526870_PAET.checks :=
  ChainTheory.Data.D526870_PAET.checks

opaque wall_527563_EQCB : Prop

def wall_527563_EQCB_open : ChainTheory.OpenResult :=
  { address := 527563, stem := "CSBP", decidingClass := "EQCB", firstParting := "-", chapter := "ch09", statement := wall_527563_EQCB }

theorem row_527777_AJBP : type_of% ChainTheory.Data.D527777_AJBP.checks :=
  ChainTheory.Data.D527777_AJBP.checks

opaque wall_527827_EQCY : Prop

def wall_527827_EQCY_open : ChainTheory.OpenResult :=
  { address := 527827, stem := "RXCO", decidingClass := "EQCY", firstParting := "-", chapter := "ch09", statement := wall_527827_EQCY }

end ChainTheory.Fields.Ch09

namespace ChainTheory.Fields.Ch09

opaque wall_529964_EQWA : Prop

def wall_529964_EQWA_open : ChainTheory.OpenResult :=
  { address := 529964, stem := "ASQW", decidingClass := "EQWA", firstParting := "refused", chapter := "ch09", statement := wall_529964_EQWA }

opaque wall_530326_EQWK : Prop

def wall_530326_EQWK_open : ChainTheory.OpenResult :=
  { address := 530326, stem := "WKST", decidingClass := "EQWK", firstParting := "uncarried", chapter := "ch09", statement := wall_530326_EQWK }

opaque wall_530870_EQSI : Prop

def wall_530870_EQSI_open : ChainTheory.OpenResult :=
  { address := 530870, stem := "SCG3", decidingClass := "EQSI", firstParting := "face-b-named", chapter := "ch09", statement := wall_530870_EQSI }

opaque cond_531706_MUG2 : Prop

theorem row_531706_MUG2 : cond_531706_MUG2 -> type_of% ChainTheory.Data.D531706_MUG2.checks :=
  fun _ => ChainTheory.Data.D531706_MUG2.checks

theorem row_531706_MUG2_union_census : ChainTheory.ConditionUnions.union_531706_MUG2.members.length = 1 /\ ChainTheory.ConditionUnions.union_531706_MUG2.exceedsLetter = true := by decide

end ChainTheory.Fields.Ch09
