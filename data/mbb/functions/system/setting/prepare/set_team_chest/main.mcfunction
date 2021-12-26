#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set chest - client
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 1.. positioned ~8 -62 ~7 run function mbb:system/setting/prepare/set_team_chest/team_a
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 2.. positioned ~3 -62 ~7 run function mbb:system/setting/prepare/set_team_chest/team_b
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 3.. positioned ~-2 -62 ~7 run function mbb:system/setting/prepare/set_team_chest/team_c
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 4.. positioned ~-7 -62 ~7 run function mbb:system/setting/prepare/set_team_chest/team_d
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 5.. positioned ~8 -62 ~2 run function mbb:system/setting/prepare/set_team_chest/team_e
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 6.. positioned ~3 -62 ~2 run function mbb:system/setting/prepare/set_team_chest/team_f
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 7.. positioned ~-2 -62 ~2 run function mbb:system/setting/prepare/set_team_chest/team_g
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 8.. positioned ~-7 -62 ~2 run function mbb:system/setting/prepare/set_team_chest/team_h
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 9.. positioned ~8 -62 ~-3 run function mbb:system/setting/prepare/set_team_chest/team_i
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 10.. positioned ~-7 -62 ~-3 run function mbb:system/setting/prepare/set_team_chest/team_j