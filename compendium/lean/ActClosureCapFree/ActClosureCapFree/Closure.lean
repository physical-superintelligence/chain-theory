import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.ClosureS001
import ActClosureCapFree.ClosureS002
import ActClosureCapFree.ClosureS003
import ActClosureCapFree.ClosureS004
import ActClosureCapFree.ClosureS005
import ActClosureCapFree.ClosureS006
import ActClosureCapFree.ClosureS007
import ActClosureCapFree.ClosureS008
import ActClosureCapFree.ClosureS009
import ActClosureCapFree.ClosureS010
import ActClosureCapFree.ClosureS011
import ActClosureCapFree.ClosureS012
import ActClosureCapFree.ClosureS013
import ActClosureCapFree.ClosureS014
import ActClosureCapFree.ClosureS015
import ActClosureCapFree.ClosureS016
import ActClosureCapFree.ClosureS017
import ActClosureCapFree.ClosureS018
import ActClosureCapFree.ClosureS019
import ActClosureCapFree.ClosureS020
import ActClosureCapFree.ClosureS021
import ActClosureCapFree.ClosureS022
import ActClosureCapFree.ClosureS023
import ActClosureCapFree.ClosureS024
import ActClosureCapFree.ClosureS025
import ActClosureCapFree.ClosureS026
import ActClosureCapFree.ClosureS027
import ActClosureCapFree.ClosureS028
import ActClosureCapFree.ClosureS029
import ActClosureCapFree.ClosureS030
import ActClosureCapFree.ClosureS031
import ActClosureCapFree.ClosureS032
import ActClosureCapFree.ClosureS033
import ActClosureCapFree.ClosureS034
import ActClosureCapFree.ClosureS035
import ActClosureCapFree.ClosureS036
import ActClosureCapFree.ClosureS037
import ActClosureCapFree.ClosureS038
import ActClosureCapFree.ClosureS039
import ActClosureCapFree.ClosureS040
import ActClosureCapFree.ClosureS041
import ActClosureCapFree.ClosureS042
import ActClosureCapFree.ClosureS043
import ActClosureCapFree.ClosureS044
import ActClosureCapFree.ClosureS045
import ActClosureCapFree.ClosureS046
import ActClosureCapFree.ClosureS047
import ActClosureCapFree.ClosureS048
import ActClosureCapFree.ClosureS049
import ActClosureCapFree.ClosureS050
import ActClosureCapFree.ClosureS051
import ActClosureCapFree.ClosureS052
import ActClosureCapFree.ClosureS053
import ActClosureCapFree.ClosureS054
import ActClosureCapFree.ClosureS055
import ActClosureCapFree.ClosureS056
import ActClosureCapFree.ClosureS057
import ActClosureCapFree.ClosureS058
import ActClosureCapFree.ClosureS059
import ActClosureCapFree.ClosureS060
import ActClosureCapFree.ClosureS061
import ActClosureCapFree.ClosureS062
import ActClosureCapFree.ClosureS063
import ActClosureCapFree.ClosureS064
import ActClosureCapFree.ClosureS065
import ActClosureCapFree.ClosureS066
import ActClosureCapFree.ClosureS067
import ActClosureCapFree.ClosureS068
import ActClosureCapFree.ClosureS069
import ActClosureCapFree.ClosureS070
import ActClosureCapFree.ClosureS071
import ActClosureCapFree.ClosureS072
import ActClosureCapFree.ClosureS073
import ActClosureCapFree.ClosureS074
import ActClosureCapFree.ClosureS075
import ActClosureCapFree.ClosureS076
import ActClosureCapFree.ClosureS077
import ActClosureCapFree.ClosureS078
import ActClosureCapFree.ClosureS079
import ActClosureCapFree.ClosureS080
import ActClosureCapFree.ClosureS081
import ActClosureCapFree.ClosureS082
import ActClosureCapFree.ClosureS083
import ActClosureCapFree.ClosureS084
import ActClosureCapFree.ClosureS085
import ActClosureCapFree.ClosureS086
import ActClosureCapFree.ClosureS087
import ActClosureCapFree.ClosureS088
import ActClosureCapFree.ClosureS089
import ActClosureCapFree.ClosureS090
import ActClosureCapFree.ClosureS091
import ActClosureCapFree.ClosureS092
import ActClosureCapFree.ClosureS093
import ActClosureCapFree.ClosureS094
import ActClosureCapFree.ClosureS095
import ActClosureCapFree.ClosureS096
import ActClosureCapFree.ClosureS097
import ActClosureCapFree.ClosureS098
import ActClosureCapFree.ClosureS099
import ActClosureCapFree.ClosureS100
import ActClosureCapFree.ClosureS101
import ActClosureCapFree.ClosureS102
import ActClosureCapFree.ClosureS103
import ActClosureCapFree.ClosureS104
import ActClosureCapFree.ClosureS105
import ActClosureCapFree.ClosureS106
import ActClosureCapFree.ClosureS107
import ActClosureCapFree.ClosureS108
import ActClosureCapFree.ClosureS109
import ActClosureCapFree.ClosureS110
import ActClosureCapFree.ClosureS111
import ActClosureCapFree.ClosureS112
import ActClosureCapFree.ClosureS113
import ActClosureCapFree.ClosureS114
import ActClosureCapFree.ClosureS115
import ActClosureCapFree.ClosureS116
import ActClosureCapFree.ClosureS117
import ActClosureCapFree.ClosureS118
import ActClosureCapFree.ClosureS119
import ActClosureCapFree.ClosureS120
import ActClosureCapFree.ClosureS121
import ActClosureCapFree.ClosureS122
import ActClosureCapFree.ClosureS123
import ActClosureCapFree.ClosureS124
import ActClosureCapFree.ClosureS125
import ActClosureCapFree.ClosureS126
import ActClosureCapFree.ClosureS127
import ActClosureCapFree.ClosureS128
import ActClosureCapFree.ClosureS129
import ActClosureCapFree.ClosureS130
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem states_count : allStates.length = 7698 := by decide +kernel

theorem seeds_in : (genreLinks.zip seedIndices).all (fun p => stateAt p.2 == p.1) = true := by decide +kernel

theorem bound_all : allStates.all stateWithinBound = true := by
  simp only [allStates, List.all_append, bound_S001, bound_S002, bound_S003, bound_S004, bound_S005, bound_S006, bound_S007, bound_S008, bound_S009, bound_S010, bound_S011, bound_S012, bound_S013, bound_S014, bound_S015, bound_S016, bound_S017, bound_S018, bound_S019, bound_S020, bound_S021, bound_S022, bound_S023, bound_S024, bound_S025, bound_S026, bound_S027, bound_S028, bound_S029, bound_S030, bound_S031, bound_S032, bound_S033, bound_S034, bound_S035, bound_S036, bound_S037, bound_S038, bound_S039, bound_S040, bound_S041, bound_S042, bound_S043, bound_S044, bound_S045, bound_S046, bound_S047, bound_S048, bound_S049, bound_S050, bound_S051, bound_S052, bound_S053, bound_S054, bound_S055, bound_S056, bound_S057, bound_S058, bound_S059, bound_S060, bound_S061, bound_S062, bound_S063, bound_S064, bound_S065, bound_S066, bound_S067, bound_S068, bound_S069, bound_S070, bound_S071, bound_S072, bound_S073, bound_S074, bound_S075, bound_S076, bound_S077, bound_S078, bound_S079, bound_S080, bound_S081, bound_S082, bound_S083, bound_S084, bound_S085, bound_S086, bound_S087, bound_S088, bound_S089, bound_S090, bound_S091, bound_S092, bound_S093, bound_S094, bound_S095, bound_S096, bound_S097, bound_S098, bound_S099, bound_S100, bound_S101, bound_S102, bound_S103, bound_S104, bound_S105, bound_S106, bound_S107, bound_S108, bound_S109, bound_S110, bound_S111, bound_S112, bound_S113, bound_S114, bound_S115, bound_S116, bound_S117, bound_S118, bound_S119, bound_S120, bound_S121, bound_S122, bound_S123, bound_S124, bound_S125, bound_S126, bound_S127, bound_S128, bound_S129, bound_S130, Bool.and_self]

def closedAll : Bool := closedShard stateAt statesS001 stepsS001 && closedShard stateAt statesS002 stepsS002 && closedShard stateAt statesS003 stepsS003 && closedShard stateAt statesS004 stepsS004 && closedShard stateAt statesS005 stepsS005 && closedShard stateAt statesS006 stepsS006 && closedShard stateAt statesS007 stepsS007 && closedShard stateAt statesS008 stepsS008 && closedShard stateAt statesS009 stepsS009 && closedShard stateAt statesS010 stepsS010 && closedShard stateAt statesS011 stepsS011 && closedShard stateAt statesS012 stepsS012 && closedShard stateAt statesS013 stepsS013 && closedShard stateAt statesS014 stepsS014 && closedShard stateAt statesS015 stepsS015 && closedShard stateAt statesS016 stepsS016 && closedShard stateAt statesS017 stepsS017 && closedShard stateAt statesS018 stepsS018 && closedShard stateAt statesS019 stepsS019 && closedShard stateAt statesS020 stepsS020 && closedShard stateAt statesS021 stepsS021 && closedShard stateAt statesS022 stepsS022 && closedShard stateAt statesS023 stepsS023 && closedShard stateAt statesS024 stepsS024 && closedShard stateAt statesS025 stepsS025 && closedShard stateAt statesS026 stepsS026 && closedShard stateAt statesS027 stepsS027 && closedShard stateAt statesS028 stepsS028 && closedShard stateAt statesS029 stepsS029 && closedShard stateAt statesS030 stepsS030 && closedShard stateAt statesS031 stepsS031 && closedShard stateAt statesS032 stepsS032 && closedShard stateAt statesS033 stepsS033 && closedShard stateAt statesS034 stepsS034 && closedShard stateAt statesS035 stepsS035 && closedShard stateAt statesS036 stepsS036 && closedShard stateAt statesS037 stepsS037 && closedShard stateAt statesS038 stepsS038 && closedShard stateAt statesS039 stepsS039 && closedShard stateAt statesS040 stepsS040 && closedShard stateAt statesS041 stepsS041 && closedShard stateAt statesS042 stepsS042 && closedShard stateAt statesS043 stepsS043 && closedShard stateAt statesS044 stepsS044 && closedShard stateAt statesS045 stepsS045 && closedShard stateAt statesS046 stepsS046 && closedShard stateAt statesS047 stepsS047 && closedShard stateAt statesS048 stepsS048 && closedShard stateAt statesS049 stepsS049 && closedShard stateAt statesS050 stepsS050 && closedShard stateAt statesS051 stepsS051 && closedShard stateAt statesS052 stepsS052 && closedShard stateAt statesS053 stepsS053 && closedShard stateAt statesS054 stepsS054 && closedShard stateAt statesS055 stepsS055 && closedShard stateAt statesS056 stepsS056 && closedShard stateAt statesS057 stepsS057 && closedShard stateAt statesS058 stepsS058 && closedShard stateAt statesS059 stepsS059 && closedShard stateAt statesS060 stepsS060 && closedShard stateAt statesS061 stepsS061 && closedShard stateAt statesS062 stepsS062 && closedShard stateAt statesS063 stepsS063 && closedShard stateAt statesS064 stepsS064 && closedShard stateAt statesS065 stepsS065 && closedShard stateAt statesS066 stepsS066 && closedShard stateAt statesS067 stepsS067 && closedShard stateAt statesS068 stepsS068 && closedShard stateAt statesS069 stepsS069 && closedShard stateAt statesS070 stepsS070 && closedShard stateAt statesS071 stepsS071 && closedShard stateAt statesS072 stepsS072 && closedShard stateAt statesS073 stepsS073 && closedShard stateAt statesS074 stepsS074 && closedShard stateAt statesS075 stepsS075 && closedShard stateAt statesS076 stepsS076 && closedShard stateAt statesS077 stepsS077 && closedShard stateAt statesS078 stepsS078 && closedShard stateAt statesS079 stepsS079 && closedShard stateAt statesS080 stepsS080 && closedShard stateAt statesS081 stepsS081 && closedShard stateAt statesS082 stepsS082 && closedShard stateAt statesS083 stepsS083 && closedShard stateAt statesS084 stepsS084 && closedShard stateAt statesS085 stepsS085 && closedShard stateAt statesS086 stepsS086 && closedShard stateAt statesS087 stepsS087 && closedShard stateAt statesS088 stepsS088 && closedShard stateAt statesS089 stepsS089 && closedShard stateAt statesS090 stepsS090 && closedShard stateAt statesS091 stepsS091 && closedShard stateAt statesS092 stepsS092 && closedShard stateAt statesS093 stepsS093 && closedShard stateAt statesS094 stepsS094 && closedShard stateAt statesS095 stepsS095 && closedShard stateAt statesS096 stepsS096 && closedShard stateAt statesS097 stepsS097 && closedShard stateAt statesS098 stepsS098 && closedShard stateAt statesS099 stepsS099 && closedShard stateAt statesS100 stepsS100 && closedShard stateAt statesS101 stepsS101 && closedShard stateAt statesS102 stepsS102 && closedShard stateAt statesS103 stepsS103 && closedShard stateAt statesS104 stepsS104 && closedShard stateAt statesS105 stepsS105 && closedShard stateAt statesS106 stepsS106 && closedShard stateAt statesS107 stepsS107 && closedShard stateAt statesS108 stepsS108 && closedShard stateAt statesS109 stepsS109 && closedShard stateAt statesS110 stepsS110 && closedShard stateAt statesS111 stepsS111 && closedShard stateAt statesS112 stepsS112 && closedShard stateAt statesS113 stepsS113 && closedShard stateAt statesS114 stepsS114 && closedShard stateAt statesS115 stepsS115 && closedShard stateAt statesS116 stepsS116 && closedShard stateAt statesS117 stepsS117 && closedShard stateAt statesS118 stepsS118 && closedShard stateAt statesS119 stepsS119 && closedShard stateAt statesS120 stepsS120 && closedShard stateAt statesS121 stepsS121 && closedShard stateAt statesS122 stepsS122 && closedShard stateAt statesS123 stepsS123 && closedShard stateAt statesS124 stepsS124 && closedShard stateAt statesS125 stepsS125 && closedShard stateAt statesS126 stepsS126 && closedShard stateAt statesS127 stepsS127 && closedShard stateAt statesS128 stepsS128 && closedShard stateAt statesS129 stepsS129 && closedShard stateAt statesS130 stepsS130

theorem closure_closed : closedAll = true := by
  simp only [closedAll, closed_S001, closed_S002, closed_S003, closed_S004, closed_S005, closed_S006, closed_S007, closed_S008, closed_S009, closed_S010, closed_S011, closed_S012, closed_S013, closed_S014, closed_S015, closed_S016, closed_S017, closed_S018, closed_S019, closed_S020, closed_S021, closed_S022, closed_S023, closed_S024, closed_S025, closed_S026, closed_S027, closed_S028, closed_S029, closed_S030, closed_S031, closed_S032, closed_S033, closed_S034, closed_S035, closed_S036, closed_S037, closed_S038, closed_S039, closed_S040, closed_S041, closed_S042, closed_S043, closed_S044, closed_S045, closed_S046, closed_S047, closed_S048, closed_S049, closed_S050, closed_S051, closed_S052, closed_S053, closed_S054, closed_S055, closed_S056, closed_S057, closed_S058, closed_S059, closed_S060, closed_S061, closed_S062, closed_S063, closed_S064, closed_S065, closed_S066, closed_S067, closed_S068, closed_S069, closed_S070, closed_S071, closed_S072, closed_S073, closed_S074, closed_S075, closed_S076, closed_S077, closed_S078, closed_S079, closed_S080, closed_S081, closed_S082, closed_S083, closed_S084, closed_S085, closed_S086, closed_S087, closed_S088, closed_S089, closed_S090, closed_S091, closed_S092, closed_S093, closed_S094, closed_S095, closed_S096, closed_S097, closed_S098, closed_S099, closed_S100, closed_S101, closed_S102, closed_S103, closed_S104, closed_S105, closed_S106, closed_S107, closed_S108, closed_S109, closed_S110, closed_S111, closed_S112, closed_S113, closed_S114, closed_S115, closed_S116, closed_S117, closed_S118, closed_S119, closed_S120, closed_S121, closed_S122, closed_S123, closed_S124, closed_S125, closed_S126, closed_S127, closed_S128, closed_S129, closed_S130, Bool.and_self]

def acrossAll : Bool := acrossShard stateAt smallIndexed statesS001 acrossS001 && acrossShard stateAt smallIndexed statesS002 acrossS002 && acrossShard stateAt smallIndexed statesS003 acrossS003 && acrossShard stateAt smallIndexed statesS004 acrossS004 && acrossShard stateAt smallIndexed statesS005 acrossS005 && acrossShard stateAt smallIndexed statesS006 acrossS006 && acrossShard stateAt smallIndexed statesS007 acrossS007 && acrossShard stateAt smallIndexed statesS008 acrossS008 && acrossShard stateAt smallIndexed statesS009 acrossS009 && acrossShard stateAt smallIndexed statesS010 acrossS010 && acrossShard stateAt smallIndexed statesS011 acrossS011 && acrossShard stateAt smallIndexed statesS012 acrossS012 && acrossShard stateAt smallIndexed statesS013 acrossS013 && acrossShard stateAt smallIndexed statesS014 acrossS014 && acrossShard stateAt smallIndexed statesS015 acrossS015 && acrossShard stateAt smallIndexed statesS016 acrossS016 && acrossShard stateAt smallIndexed statesS017 acrossS017 && acrossShard stateAt smallIndexed statesS018 acrossS018 && acrossShard stateAt smallIndexed statesS019 acrossS019 && acrossShard stateAt smallIndexed statesS020 acrossS020 && acrossShard stateAt smallIndexed statesS021 acrossS021 && acrossShard stateAt smallIndexed statesS022 acrossS022 && acrossShard stateAt smallIndexed statesS023 acrossS023 && acrossShard stateAt smallIndexed statesS024 acrossS024 && acrossShard stateAt smallIndexed statesS025 acrossS025 && acrossShard stateAt smallIndexed statesS026 acrossS026 && acrossShard stateAt smallIndexed statesS027 acrossS027 && acrossShard stateAt smallIndexed statesS028 acrossS028 && acrossShard stateAt smallIndexed statesS029 acrossS029 && acrossShard stateAt smallIndexed statesS030 acrossS030 && acrossShard stateAt smallIndexed statesS031 acrossS031 && acrossShard stateAt smallIndexed statesS032 acrossS032 && acrossShard stateAt smallIndexed statesS033 acrossS033 && acrossShard stateAt smallIndexed statesS034 acrossS034 && acrossShard stateAt smallIndexed statesS035 acrossS035 && acrossShard stateAt smallIndexed statesS036 acrossS036 && acrossShard stateAt smallIndexed statesS037 acrossS037 && acrossShard stateAt smallIndexed statesS038 acrossS038 && acrossShard stateAt smallIndexed statesS039 acrossS039 && acrossShard stateAt smallIndexed statesS040 acrossS040 && acrossShard stateAt smallIndexed statesS041 acrossS041 && acrossShard stateAt smallIndexed statesS042 acrossS042 && acrossShard stateAt smallIndexed statesS043 acrossS043 && acrossShard stateAt smallIndexed statesS044 acrossS044 && acrossShard stateAt smallIndexed statesS045 acrossS045 && acrossShard stateAt smallIndexed statesS046 acrossS046 && acrossShard stateAt smallIndexed statesS047 acrossS047 && acrossShard stateAt smallIndexed statesS048 acrossS048 && acrossShard stateAt smallIndexed statesS049 acrossS049 && acrossShard stateAt smallIndexed statesS050 acrossS050 && acrossShard stateAt smallIndexed statesS051 acrossS051 && acrossShard stateAt smallIndexed statesS052 acrossS052 && acrossShard stateAt smallIndexed statesS053 acrossS053 && acrossShard stateAt smallIndexed statesS054 acrossS054 && acrossShard stateAt smallIndexed statesS055 acrossS055 && acrossShard stateAt smallIndexed statesS056 acrossS056 && acrossShard stateAt smallIndexed statesS057 acrossS057 && acrossShard stateAt smallIndexed statesS058 acrossS058 && acrossShard stateAt smallIndexed statesS059 acrossS059 && acrossShard stateAt smallIndexed statesS060 acrossS060 && acrossShard stateAt smallIndexed statesS061 acrossS061 && acrossShard stateAt smallIndexed statesS062 acrossS062 && acrossShard stateAt smallIndexed statesS063 acrossS063 && acrossShard stateAt smallIndexed statesS064 acrossS064 && acrossShard stateAt smallIndexed statesS065 acrossS065 && acrossShard stateAt smallIndexed statesS066 acrossS066 && acrossShard stateAt smallIndexed statesS067 acrossS067 && acrossShard stateAt smallIndexed statesS068 acrossS068 && acrossShard stateAt smallIndexed statesS069 acrossS069 && acrossShard stateAt smallIndexed statesS070 acrossS070 && acrossShard stateAt smallIndexed statesS071 acrossS071 && acrossShard stateAt smallIndexed statesS072 acrossS072 && acrossShard stateAt smallIndexed statesS073 acrossS073 && acrossShard stateAt smallIndexed statesS074 acrossS074 && acrossShard stateAt smallIndexed statesS075 acrossS075 && acrossShard stateAt smallIndexed statesS076 acrossS076 && acrossShard stateAt smallIndexed statesS077 acrossS077 && acrossShard stateAt smallIndexed statesS078 acrossS078 && acrossShard stateAt smallIndexed statesS079 acrossS079 && acrossShard stateAt smallIndexed statesS080 acrossS080 && acrossShard stateAt smallIndexed statesS081 acrossS081 && acrossShard stateAt smallIndexed statesS082 acrossS082 && acrossShard stateAt smallIndexed statesS083 acrossS083 && acrossShard stateAt smallIndexed statesS084 acrossS084 && acrossShard stateAt smallIndexed statesS085 acrossS085 && acrossShard stateAt smallIndexed statesS086 acrossS086 && acrossShard stateAt smallIndexed statesS087 acrossS087 && acrossShard stateAt smallIndexed statesS088 acrossS088 && acrossShard stateAt smallIndexed statesS089 acrossS089 && acrossShard stateAt smallIndexed statesS090 acrossS090 && acrossShard stateAt smallIndexed statesS091 acrossS091 && acrossShard stateAt smallIndexed statesS092 acrossS092 && acrossShard stateAt smallIndexed statesS093 acrossS093 && acrossShard stateAt smallIndexed statesS094 acrossS094 && acrossShard stateAt smallIndexed statesS095 acrossS095 && acrossShard stateAt smallIndexed statesS096 acrossS096 && acrossShard stateAt smallIndexed statesS097 acrossS097 && acrossShard stateAt smallIndexed statesS098 acrossS098 && acrossShard stateAt smallIndexed statesS099 acrossS099 && acrossShard stateAt smallIndexed statesS100 acrossS100 && acrossShard stateAt smallIndexed statesS101 acrossS101 && acrossShard stateAt smallIndexed statesS102 acrossS102 && acrossShard stateAt smallIndexed statesS103 acrossS103 && acrossShard stateAt smallIndexed statesS104 acrossS104 && acrossShard stateAt smallIndexed statesS105 acrossS105 && acrossShard stateAt smallIndexed statesS106 acrossS106 && acrossShard stateAt smallIndexed statesS107 acrossS107 && acrossShard stateAt smallIndexed statesS108 acrossS108 && acrossShard stateAt smallIndexed statesS109 acrossS109 && acrossShard stateAt smallIndexed statesS110 acrossS110 && acrossShard stateAt smallIndexed statesS111 acrossS111 && acrossShard stateAt smallIndexed statesS112 acrossS112 && acrossShard stateAt smallIndexed statesS113 acrossS113 && acrossShard stateAt smallIndexed statesS114 acrossS114 && acrossShard stateAt smallIndexed statesS115 acrossS115 && acrossShard stateAt smallIndexed statesS116 acrossS116 && acrossShard stateAt smallIndexed statesS117 acrossS117 && acrossShard stateAt smallIndexed statesS118 acrossS118 && acrossShard stateAt smallIndexed statesS119 acrossS119 && acrossShard stateAt smallIndexed statesS120 acrossS120 && acrossShard stateAt smallIndexed statesS121 acrossS121 && acrossShard stateAt smallIndexed statesS122 acrossS122 && acrossShard stateAt smallIndexed statesS123 acrossS123 && acrossShard stateAt smallIndexed statesS124 acrossS124 && acrossShard stateAt smallIndexed statesS125 acrossS125 && acrossShard stateAt smallIndexed statesS126 acrossS126 && acrossShard stateAt smallIndexed statesS127 acrossS127 && acrossShard stateAt smallIndexed statesS128 acrossS128 && acrossShard stateAt smallIndexed statesS129 acrossS129 && acrossShard stateAt smallIndexed statesS130 acrossS130

theorem closure_across : acrossAll = true := by
  simp only [acrossAll, across_S001, across_S002, across_S003, across_S004, across_S005, across_S006, across_S007, across_S008, across_S009, across_S010, across_S011, across_S012, across_S013, across_S014, across_S015, across_S016, across_S017, across_S018, across_S019, across_S020, across_S021, across_S022, across_S023, across_S024, across_S025, across_S026, across_S027, across_S028, across_S029, across_S030, across_S031, across_S032, across_S033, across_S034, across_S035, across_S036, across_S037, across_S038, across_S039, across_S040, across_S041, across_S042, across_S043, across_S044, across_S045, across_S046, across_S047, across_S048, across_S049, across_S050, across_S051, across_S052, across_S053, across_S054, across_S055, across_S056, across_S057, across_S058, across_S059, across_S060, across_S061, across_S062, across_S063, across_S064, across_S065, across_S066, across_S067, across_S068, across_S069, across_S070, across_S071, across_S072, across_S073, across_S074, across_S075, across_S076, across_S077, across_S078, across_S079, across_S080, across_S081, across_S082, across_S083, across_S084, across_S085, across_S086, across_S087, across_S088, across_S089, across_S090, across_S091, across_S092, across_S093, across_S094, across_S095, across_S096, across_S097, across_S098, across_S099, across_S100, across_S101, across_S102, across_S103, across_S104, across_S105, across_S106, across_S107, across_S108, across_S109, across_S110, across_S111, across_S112, across_S113, across_S114, across_S115, across_S116, across_S117, across_S118, across_S119, across_S120, across_S121, across_S122, across_S123, across_S124, across_S125, across_S126, across_S127, across_S128, across_S129, across_S130, Bool.and_self]
end ActClosureCapFree
