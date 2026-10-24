import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch06
import ChainTheory.Foundations.Ch02
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P02.Ch7

abbrev plan_wall_517145_CHSC : Prop := ChainTheory.Discussion.Ch20.wall_517145_MASU

abbrev plan_wall_517460_CHS2 : Prop := ChainTheory.Discussion.Ch20.wall_517460_EMBS

abbrev plan_520611_ROSX : Prop := ChainTheory.Foundations.Ch02.row_520611_ROSX

abbrev plan_521130_RAEO : Prop := ChainTheory.Foundations.Ch02.row_521130_RAEO

abbrev plan_522015_RAOB : Prop := ChainTheory.Fields.Ch06.row_522015_RAOB

def plan_wall_529434_ACRP_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch06.wall_529434_EQPT_open

def plan_wall_529645_PINT_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch06.wall_529645_EQPI_open

def wall_533280_N2PI_open : ChainTheory.OpenResult :=
  { address := 533280, stem := "N2PI", decidingClass := "EQPO", firstParting := "PARTING-NAMED", chapter := "2-7", statement := ChainTheory.Open.wall_533280_N2PI }

end ChainTheory.Plan.P02.Ch7
