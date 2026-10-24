import AlphaDerivation
import ChainTheory.Discussion.Landed93
import ChainTheory.OpenResult
import ChainTheory.ConditionUnions
import ChainTheory.Data.D529618_NSKC
import ChainTheory.Data.D530067_HRCP
import ChainTheory.Data.D532628_NKS2

set_option maxRecDepth 100000

namespace ChainTheory.StandardModel.Ch13

opaque row_516700_CPAS : Prop

opaque row_518419_GDPM : Prop

opaque row_519215_MDEO : Prop

opaque row_520457_SKDM : Prop

opaque row_521156 : Prop

opaque row_521911_CPRO : Prop

opaque row_523593_CCDD : Prop

opaque wall_522556_SELS : Prop

opaque wall_523152_EQFS : Prop

opaque wall_523516_EQMO : Prop

opaque wall_523542_EQNC : Prop

end ChainTheory.StandardModel.Ch13

namespace ChainTheory.StandardModel.Ch13

def wall_526336_EQWE_open : ChainTheory.OpenResult :=
  { address := 526336, stem := "WRGE", decidingClass := "EQWE", firstParting := "-", chapter := "ch13", statement := ChainTheory.Discussion.Landed93.wall_526336_EQWE }

end ChainTheory.StandardModel.Ch13

namespace ChainTheory.StandardModel.Ch13

opaque wall_526589_NUON : Prop

def wall_526589_NUON_open : ChainTheory.OpenResult :=
  { address := 526589, stem := "NUON", decidingClass := "-", firstParting := "-", chapter := "ch13", statement := wall_526589_NUON }

opaque wall_526896_HLPN : Prop

def wall_526896_HLPN_open : ChainTheory.OpenResult :=
  { address := 526896, stem := "HLPN", decidingClass := "-", firstParting := "-", chapter := "ch13", statement := wall_526896_HLPN }

opaque wall_527483_DFNM : Prop

def wall_527483_DFNM_open : ChainTheory.OpenResult :=
  { address := 527483, stem := "DFNM", decidingClass := "-", firstParting := "-", chapter := "ch13", statement := wall_527483_DFNM }

opaque wall_527590_MPON : Prop

def wall_527590_MPON_open : ChainTheory.OpenResult :=
  { address := 527590, stem := "MPON", decidingClass := "-", firstParting := "-", chapter := "ch13", statement := wall_527590_MPON }

end ChainTheory.StandardModel.Ch13

namespace ChainTheory.StandardModel.Ch13

opaque cond_529618_NSKC : Prop

theorem row_529618_NSKC : cond_529618_NSKC -> type_of% ChainTheory.Data.D529618_NSKC.checks :=
  fun _ => ChainTheory.Data.D529618_NSKC.checks

theorem row_529618_NSKC_union_census : ChainTheory.ConditionUnions.union_529618_NSKC.members.length = 5 /\ ChainTheory.ConditionUnions.union_529618_NSKC.exceedsLetter = true := by decide

opaque wall_529777_EQDR : Prop

def wall_529777_EQDR_open : ChainTheory.OpenResult :=
  { address := 529777, stem := "CPH2", decidingClass := "EQDR", firstParting := "-", chapter := "ch13", statement := wall_529777_EQDR }

opaque cond_530067_HRCP : Prop

theorem row_530067_HRCP : cond_530067_HRCP -> type_of% ChainTheory.Data.D530067_HRCP.checks :=
  fun _ => ChainTheory.Data.D530067_HRCP.checks

theorem row_530067_HRCP_union_census : ChainTheory.ConditionUnions.union_530067_HRCP.members.length = 4 /\ ChainTheory.ConditionUnions.union_530067_HRCP.exceedsLetter = false := by decide

opaque wall_530120_NURL : Prop

def wall_530120_NURL_open : ChainTheory.OpenResult :=
  { address := 530120, stem := "NURL", decidingClass := "-", firstParting := "-", chapter := "ch13", statement := wall_530120_NURL }

opaque wall_530171_UO2N : Prop

def wall_530171_UO2N_open : ChainTheory.OpenResult :=
  { address := 530171, stem := "UO2N", decidingClass := "-", firstParting := "-", chapter := "ch13", statement := wall_530171_UO2N }

opaque wall_530818_EQNX : Prop

def wall_530818_EQNX_open : ChainTheory.OpenResult :=
  { address := 530818, stem := "MXPH", decidingClass := "EQNX", firstParting := "face-b-named", chapter := "ch13", statement := wall_530818_EQNX }

opaque wall_531184_EQNB : Prop

def wall_531184_EQNB_open : ChainTheory.OpenResult :=
  { address := 531184, stem := "NUDK", decidingClass := "EQNB", firstParting := "-", chapter := "ch13", statement := wall_531184_EQNB }

theorem row_532628 : type_of% ChainTheory.Data.D532628_NKS2.checks :=
  ChainTheory.Data.D532628_NKS2.checks

end ChainTheory.StandardModel.Ch13
