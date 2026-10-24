import AlphaDerivation
import ChainTheory.ConditionUnions

namespace ChainTheory.Discussion.Appendices

opaque cond_524692_SLPP : Prop

opaque row_524692_SLPP : Prop

end ChainTheory.Discussion.Appendices

namespace ChainTheory.Discussion.Appendices

opaque cond_526788_SLL3 : Prop

opaque row_526788_SLL3 : Prop

opaque cond_526818_LDRR : Prop

opaque row_526818_LDRR : Prop

opaque cond_527320_DRPN : Prop

opaque row_527320_DRPN : Prop

opaque cond_527615_SLL4 : Prop

opaque row_527615_SLL4 : Prop

end ChainTheory.Discussion.Appendices

namespace ChainTheory.Discussion.Appendices

opaque cond_529377_SLL5 : Prop

opaque claim_529377_SLL5 : Prop

abbrev row_529377_SLL5 : Prop := cond_529377_SLL5 -> claim_529377_SLL5

theorem row_529377_SLL5_union_census : ChainTheory.ConditionUnions.union_529377_SLL5.members.length = 2 /\ ChainTheory.ConditionUnions.union_529377_SLL5.exceedsLetter = true := by decide

opaque cond_532576_LDR5 : Prop

opaque claim_532576_LDR5 : Prop

abbrev row_532576_LDR5 : Prop := cond_532576_LDR5 -> claim_532576_LDR5

theorem row_532576_LDR5_union_census : ChainTheory.ConditionUnions.union_532576_LDR5.members.length = 2 /\ ChainTheory.ConditionUnions.union_532576_LDR5.exceedsLetter = false := by decide

end ChainTheory.Discussion.Appendices
