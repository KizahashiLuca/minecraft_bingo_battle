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
function mbb:system/setting/prepare/count_down/tick

## Set position
# execute as @a run function mbb:system/common/position/main

## Set room chest
execute at @e[predicate=mbb:system/common/world_spawn] positioned ~ -62 ~ if entity @p[tag=MBB_Player,distance=..20] run function mbb:system/ongame/compare_room_chest/main

## Change phase
execute if score #mbb MBB_Second matches 0 if score #mbb MBB_Tick matches 0 run function mbb:system/ongame/change_to