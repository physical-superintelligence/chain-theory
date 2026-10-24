import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D535202_HRNC
import ChainTheory.Data.D535840_CHOS
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P11.Ch4

theorem row_535202_HRNC : ChainTheory.Open.cond_535202_HRNC -> type_of% ChainTheory.Data.D535202_HRNC.checks :=
  fun _ => ChainTheory.Data.D535202_HRNC.checks

theorem row_535840_CHOS : type_of% ChainTheory.Data.D535840_CHOS.checks := ChainTheory.Data.D535840_CHOS.checks

def wall_536136_FQPR_open : ChainTheory.OpenResult :=
  { address := 536136, stem := "FQPR", decidingClass := "EQGD", firstParting := "PRIMITIVE", chapter := "11-4", statement := ChainTheory.Open.wall_536136_FQPR }

end ChainTheory.Plan.P11.Ch4
