import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch13

namespace ChainTheory.Plan.P13.Ch7

theorem plan_532628 : type_of% ChainTheory.StandardModel.Ch13.row_532628 := ChainTheory.StandardModel.Ch13.row_532628

def wall_536000_NDEB_open : ChainTheory.OpenResult :=
  { address := 536000, stem := "NDEB", decidingClass := "EQNN", firstParting := "PARTING", chapter := "13-7", statement := ChainTheory.Open.wall_536000_NDEB }

def wall_536664_SRDA_open : ChainTheory.OpenResult :=
  { address := 536664, stem := "SRDA", decidingClass := "EQUQ", firstParting := "RULES-PARTING-NAMED", chapter := "13-7", statement := ChainTheory.Open.wall_536664_SRDA }

end ChainTheory.Plan.P13.Ch7
