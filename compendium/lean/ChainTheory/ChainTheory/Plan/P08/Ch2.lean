import ChainTheory.CompositeMatter.Ch16
import ChainTheory.CompositeMatter.Ch17
import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D533150_DRM2
import ChainTheory.Data.D533546_BRCH
import ChainTheory.Open
import ChainTheory.OpenResult

namespace ChainTheory.Plan.P08.Ch2

abbrev plan_522734_RWSR : Prop := ChainTheory.CompositeMatter.Ch16.row_522734_RWSR

abbrev plan_523567_CRUS : Prop := ChainTheory.CompositeMatter.Ch17.row_523567_CRUS

theorem row_533150_DRM2 : ChainTheory.Open.cond_533150_DRM2 -> type_of% ChainTheory.Data.D533150_DRM2.checks :=
  fun _ => ChainTheory.Data.D533150_DRM2.checks

theorem row_533546_BRCH : ChainTheory.Open.cond_533546_BRCH -> type_of% ChainTheory.Data.D533546_BRCH.checks :=
  fun _ => ChainTheory.Data.D533546_BRCH.checks

end ChainTheory.Plan.P08.Ch2
