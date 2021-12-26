#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect team chest
#clear @a #mbb:bingo_items{Tags:["MBB_SheetItem"]}
#execute positioned ~-1 -62 ~13 run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/room_chest
#execute positioned ~2 -62 ~13 run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/room_chest
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 1.. positioned ~8 -62 ~7 as @p[predicate=mbb:system/common/team_leader/team_a] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_a
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 2.. positioned ~3 -62 ~7 as @p[predicate=mbb:system/common/team_leader/team_b] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_b
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 3.. positioned ~-2 -62 ~7 as @p[predicate=mbb:system/common/team_leader/team_c] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_c
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 4.. positioned ~-7 -62 ~7 as @p[predicate=mbb:system/common/team_leader/team_d] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_d
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 5.. positioned ~8 -62 ~2 as @p[predicate=mbb:system/common/team_leader/team_e] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_e
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 6.. positioned ~3 -62 ~2 as @p[predicate=mbb:system/common/team_leader/team_f] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_f
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 7.. positioned ~-2 -62 ~2 as @p[predicate=mbb:system/common/team_leader/team_g] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_g
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 8.. positioned ~-7 -62 ~2 as @p[predicate=mbb:system/common/team_leader/team_h] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_h
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 9.. positioned ~8 -62 ~-3 as @p[predicate=mbb:system/common/team_leader/team_i] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_i
execute if predicate mbb:system/common/gamerule/team_match if score #mbb MBB_NumTeam matches 10.. positioned ~-7 -62 ~-3 as @p[predicate=mbb:system/common/team_leader/team_j] run function mbb:system/ongame/detect_bingo_sheet/detect_team_chest/team_j