import ChainTheory.CompositeMatter.Ch14
import ChainTheory.CompositeMatter.Ch17
import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D532705_CUTK
import ChainTheory.Data.D534343_CRDU
import ChainTheory.Fields.Ch08
import ChainTheory.InformationComputation.Landed93
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch11
import ChainTheory.StandardModel.Ch12

namespace ChainTheory.Plan.P01.Ch5

abbrev plan_wall_523642_PWRS : Prop := ChainTheory.CompositeMatter.Ch17.wall_523642_EQPW

abbrev plan_wall_524193_KCUM : Prop := ChainTheory.StandardModel.Ch11.wall_524193_EQKC

def plan_wall_526437_CFPK_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_526437_CFPK_open

def plan_wall_526717_EALW_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_526717_LETU_open

def plan_wall_526741_TWJS_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_526741_TWJS_open

def plan_wall_526922_RIMP_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_526922_RIMP_open

def plan_wall_528258_GSKC_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_528258_EQCK_open

def plan_wall_528316_RWON_open : ChainTheory.OpenResult := ChainTheory.InformationComputation.Landed93.wall_528316_EQRZ_open

def plan_wall_528718_PRWF_open : ChainTheory.OpenResult := ChainTheory.InformationComputation.Landed93.wall_528718_EQPX_open

def plan_wall_528934_CGFP_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_528934_EQFW_open

def plan_wall_528988_TPCK_open : ChainTheory.OpenResult := ChainTheory.InformationComputation.Landed93.wall_528988_EQPY_open

theorem plan_529099_LSRC : type_of% ChainTheory.StandardModel.Ch11.row_529099_LSRC := ChainTheory.StandardModel.Ch11.row_529099_LSRC

def plan_wall_529292_RCHS_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_529292_EQRD_open

def plan_wall_529319_CGB2_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_529319_EQCZ_open

def plan_wall_530092_KSAT_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_530092_EQKU_open

theorem plan_530196_ERMT : type_of% ChainTheory.StandardModel.Ch11.row_530196_ERMT := ChainTheory.StandardModel.Ch11.row_530196_ERMT

def plan_wall_530352_DCHB_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_530352_EQBD_open

def plan_wall_530558_SWVK_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch11.wall_530558_EQKW_open

def plan_wall_530714_SSP2_open : ChainTheory.OpenResult := ChainTheory.CompositeMatter.Ch14.wall_530714_EQSZ_open

def plan_wall_532447_ATSV_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_532447_EQAV_open

def plan_wall_532473_GNC2_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch08.wall_532473_EQGC_open

theorem row_532705_CUTK : ChainTheory.Open.cond_532705_CUTK -> type_of% ChainTheory.Data.D532705_CUTK.checks :=
  fun _ => ChainTheory.Data.D532705_CUTK.checks

def wall_533418_TMSC_open : ChainTheory.OpenResult :=
  { address := 533418, stem := "TMSC", decidingClass := "EQTN", firstParting := "FIRST-PARTING-NAMED", chapter := "1-5", statement := ChainTheory.Open.wall_533418_TMSC }

def wall_533997_VBS2_open : ChainTheory.OpenResult :=
  { address := 533997, stem := "VBS2", decidingClass := "EQVB", firstParting := "PARTING", chapter := "1-5", statement := ChainTheory.Open.wall_533997_VBS2 }

theorem row_534343_CRDU : ChainTheory.Open.cond_534343_CRDU -> type_of% ChainTheory.Data.D534343_CRDU.checks :=
  fun _ => ChainTheory.Data.D534343_CRDU.checks

def wall_534928_SMRP_open : ChainTheory.OpenResult :=
  { address := 534928, stem := "SMRP", decidingClass := "EQUM", firstParting := "STANDS-AT-EVERY-READING", chapter := "1-5", statement := ChainTheory.Open.wall_534928_SMRP }

end ChainTheory.Plan.P01.Ch5
