import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D536770_ALZB
import ChainTheory.Data.D536819_AUSC
import ChainTheory.Data.D537836_JHMT
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult
import ChainTheory.Plan.P05.Ch1

namespace ChainTheory.Frame.P05.Ch1

abbrev frame_510009_TCCD : Prop := ChainTheory.Plan.P05.Ch1.plan_510009_TCCD

abbrev frame_514784_LSRS : Prop := ChainTheory.Plan.P05.Ch1.plan_514784_LSRS

abbrev frame_515998_CRQU : Prop := ChainTheory.Plan.P05.Ch1.plan_515998_CRQU

theorem frame_516595_MTBL : type_of% ChainTheory.Plan.P05.Ch1.plan_516595_MTBL := ChainTheory.Plan.P05.Ch1.plan_516595_MTBL

theorem frame_516959_TPFX : type_of% ChainTheory.Plan.P05.Ch1.plan_516959_TPFX := ChainTheory.Plan.P05.Ch1.plan_516959_TPFX

abbrev frame_wall_517488_CROP : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_517488_CROP

abbrev frame_wall_517870_WTWT : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_517870_WTWT

abbrev frame_wall_517895_RPCZ : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_517895_RPCZ

abbrev frame_wall_518084_CFMN : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_518084_CFMN

abbrev frame_wall_518212_CLAF : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_518212_CLAF

abbrev frame_wall_518702_NRCL : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_518702_NRCL

abbrev frame_wall_518958_CFTP : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_518958_CFTP

abbrev frame_520327_MHCB : Prop := ChainTheory.Plan.P05.Ch1.plan_520327_MHCB

abbrev frame_wall_520353_RMFD : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_520353_RMFD

abbrev frame_wall_520715_CFMU : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_520715_CFMU

abbrev frame_521001_CRHL : Prop := ChainTheory.Plan.P05.Ch1.plan_521001_CRHL

abbrev frame_wall_521809_FRPK : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_521809_FRPK

abbrev frame_522422_FRRU : Prop := ChainTheory.Plan.P05.Ch1.plan_522422_FRRU

abbrev frame_wall_522500_IPMF : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_522500_IPMF

abbrev frame_523746_CCAS : Prop := ChainTheory.Plan.P05.Ch1.plan_523746_CCAS

abbrev frame_523854_CFTS : Prop := ChainTheory.Plan.P05.Ch1.plan_523854_CFTS

abbrev frame_wall_523880_CESS : Prop := ChainTheory.Plan.P05.Ch1.plan_wall_523880_CESS

theorem frame_523963_CSKC : type_of% ChainTheory.Plan.P05.Ch1.plan_523963_CSKC := ChainTheory.Plan.P05.Ch1.plan_523963_CSKC

theorem frame_523989_LNAL : type_of% ChainTheory.Plan.P05.Ch1.plan_523989_LNAL := ChainTheory.Plan.P05.Ch1.plan_523989_LNAL

theorem frame_524140_OFON : type_of% ChainTheory.Plan.P05.Ch1.plan_524140_OFON := ChainTheory.Plan.P05.Ch1.plan_524140_OFON

theorem frame_524322_LDRQ : type_of% ChainTheory.Plan.P05.Ch1.plan_524322_LDRQ := ChainTheory.Plan.P05.Ch1.plan_524322_LDRQ

abbrev frame_526818_LDRR : Prop := ChainTheory.Plan.P05.Ch1.plan_526818_LDRR

abbrev frame_527320_DRPN : Prop := ChainTheory.Plan.P05.Ch1.plan_527320_DRPN

abbrev frame_529240_WPLN : Prop := ChainTheory.Plan.P05.Ch1.plan_529240_WPLN

abbrev frame_532576_LDR5 : Prop := ChainTheory.Plan.P05.Ch1.plan_532576_LDR5

def frame_wall_534661_PLRS_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch1.wall_534661_PLRS_open

abbrev frame_535706_DRP6 : Prop := ChainTheory.Plan.P05.Ch1.row_535706_DRP6

abbrev frame_535947_DRP7 : Prop := ChainTheory.Plan.P05.Ch1.row_535947_DRP7

def frame_wall_536052_PRWG_open : ChainTheory.OpenResult := ChainTheory.Plan.P05.Ch1.wall_536052_PRWG_open

theorem row_536770_ALZB : ChainTheory.Open.cond_536770_ALZB -> type_of% ChainTheory.Data.D536770_ALZB.checks :=
  fun _ => ChainTheory.Data.D536770_ALZB.checks

theorem row_536819_AUSC : ChainTheory.Open.cond_536819_AUSC -> type_of% ChainTheory.Data.D536819_AUSC.checks :=
  fun _ => ChainTheory.Data.D536819_AUSC.checks

def wall_537169_OLWH_open : ChainTheory.OpenResult :=
  { address := 537169, stem := "OLWH", decidingClass := "EQIX", firstParting := "FACE-B-NAMED", chapter := "5-1", statement := ChainTheory.Open.wall_537169_OLWH }

theorem row_537836_JHMT : type_of% ChainTheory.Data.D537836_JHMT.checks := ChainTheory.Data.D537836_JHMT.checks

opaque row_537994_LDR8 : Prop

def wall_538789_DLRM_open : ChainTheory.OpenResult :=
  { address := 538789, stem := "DLRM", decidingClass := "EQJL", firstParting := "PARTING", chapter := "5-1", statement := ChainTheory.Open.wall_538789_DLRM }

end ChainTheory.Frame.P05.Ch1
