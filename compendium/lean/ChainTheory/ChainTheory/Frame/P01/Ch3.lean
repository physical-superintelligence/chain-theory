import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D537536_LBSC
import ChainTheory.Data.D538602_RRES
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P01.Ch3

namespace ChainTheory.Frame.P01.Ch3

abbrev frame_504521_RSBD : Prop := ChainTheory.Plan.P01.Ch3.plan_504521_RSBD

abbrev frame_515736_BCHR : Prop := ChainTheory.Plan.P01.Ch3.plan_515736_BCHR

abbrev frame_wall_517250_RLAP : Prop := ChainTheory.Plan.P01.Ch3.plan_wall_517250_RLAP

abbrev frame_518778_GPTT : Prop := ChainTheory.Plan.P01.Ch3.plan_518778_GPTT

abbrev frame_wall_519574_GORN : Prop := ChainTheory.Plan.P01.Ch3.plan_wall_519574_GORN

abbrev frame_wall_519857_GIWO : Prop := ChainTheory.Plan.P01.Ch3.plan_wall_519857_GIWO

theorem frame_520119_GWDC : type_of% ChainTheory.Plan.P01.Ch3.plan_520119_GWDC := ChainTheory.Plan.P01.Ch3.plan_520119_GWDC

theorem frame_525646_RTSE : type_of% ChainTheory.Plan.P01.Ch3.plan_525646_RTSE := ChainTheory.Plan.P01.Ch3.plan_525646_RTSE

def frame_wall_529127_MIDS_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.plan_wall_529127_MIDS_open

def frame_wall_530222_BMEQ_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.plan_wall_530222_BMEQ_open

theorem frame_531081_GPOE : type_of% ChainTheory.Plan.P01.Ch3.plan_531081_GPOE := ChainTheory.Plan.P01.Ch3.plan_531081_GPOE

def frame_wall_532757_DRLR_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_532757_DRLR_open

def frame_wall_533177_FSO2_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_533177_FSO2_open

def frame_wall_533392_RDLW_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_533392_RDLW_open

def frame_wall_534317_RSWL_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_534317_RSWL_open

def frame_wall_534475_RSLW_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_534475_RSLW_open

def frame_wall_534528_WSOR_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_534528_WSOR_open

def frame_wall_534981_SFTP_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_534981_SFTP_open

theorem frame_535091_HGDN : type_of% ChainTheory.Plan.P01.Ch3.row_535091_HGDN := ChainTheory.Plan.P01.Ch3.row_535091_HGDN

theorem frame_535521_PRCI : type_of% ChainTheory.Plan.P01.Ch3.row_535521_PRCI := ChainTheory.Plan.P01.Ch3.row_535521_PRCI

def frame_wall_535732_RDWP_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_535732_RDWP_open

def frame_wall_535866_RSAC_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_535866_RSAC_open

def frame_wall_535921_ABRC_open : ChainTheory.OpenResult := ChainTheory.Plan.P01.Ch3.wall_535921_ABRC_open

def wall_536871_RCRK_open : ChainTheory.OpenResult :=
  { address := 536871, stem := "RCRK", decidingClass := "EQUY", firstParting := "PARTING-NAMED", chapter := "1-3", statement := ChainTheory.Open.wall_536871_RCRK }

theorem row_537536_LBSC : ChainTheory.Open.cond_537536_LBSC -> type_of% ChainTheory.Data.D537536_LBSC.checks :=
  fun _ => ChainTheory.Data.D537536_LBSC.checks

def wall_538020_WFLH_open : ChainTheory.OpenResult :=
  { address := 538020, stem := "WFLH", decidingClass := "EQIZ", firstParting := "FACE-B-NAMED", chapter := "1-3", statement := ChainTheory.Open.wall_538020_WFLH }

def wall_538343_GPFR_open : ChainTheory.OpenResult :=
  { address := 538343, stem := "GPFR", decidingClass := "EQIP", firstParting := "BODY-PARTING-NAMED", chapter := "1-3", statement := ChainTheory.Open.wall_538343_GPFR }

theorem row_538602_RRES : ChainTheory.Open.cond_538602_RRES -> type_of% ChainTheory.Data.D538602_RRES.checks :=
  fun _ => ChainTheory.Data.D538602_RRES.checks

end ChainTheory.Frame.P01.Ch3
