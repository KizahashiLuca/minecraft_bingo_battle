#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Log in the mid of the game
execute as @a[tag=!MBB_Player,gamemode=!spectator] run function mbb:system/common/login_midgame

## Count down
execute if predicate mbb:system/common/gamemode/score_attack run function mbb:system/ongame/count_down/tick
execute if predicate mbb:system/common/gamemode/time_attack run function mbb:system/ongame/count_up/tick

## Clear effect
tag @a[predicate=mbb:system/ongame/not_on_ground] add MBB_Descending
execute as @a[predicate=mbb:system/ongame/on_ground] run function mbb:system/ongame/on_ground

## Detect death
execute as @a[predicate=mbb:system/ongame/detect_death/main] run function mbb:system/ongame/detect_death/main

## Set position
# execute as @a run function mbb:system/common/position/main

## Teleport
execute as @a[predicate=mbb:system/ongame/teleport_room/in] run function mbb:system/ongame/teleport_room/in

## Compare team chest
execute at @e[predicate=mbb:system/common/world_spawn] positioned ~ -62 ~ if entity @p[tag=MBB_Player,distance=..20] run function mbb:system/ongame/room

## Change phase
execute if predicate mbb:system/common/gamemode/score_attack if predicate mbb:system/ongame/detect_winner/score_attack run function mbb:system/finish/score_attack/main
execute if predicate mbb:system/common/gamemode/time_attack if entity @p[predicate=mbb:system/ongame/detect_winner/time_attack] run function mbb:system/finish/time_attack/main