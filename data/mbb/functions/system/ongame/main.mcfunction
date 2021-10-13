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
execute if score #mbb MBB_GameMode matches 1 run function mbb:system/ongame/count_down/tick
execute if score #mbb MBB_GameMode matches 2 run function mbb:system/ongame/count_up/tick

## Clear effect
tag @a[predicate=mbb:system/ongame/not_on_ground] add MBB_Descending
execute as @a[predicate=mbb:system/ongame/on_ground] run function mbb:system/ongame/on_ground

## Detect death
execute as @a[tag=MBB_Player,scores={MBB_Death=1,MBB_LiveTime=10..}] run function mbb:system/ongame/detect_death/main

## Set position
execute as @a run function mbb:system/common/position/main

## Detect bingo
function mbb:system/ongame/detect_bingo_sheet/main

## Detect ender chest
function mbb:system/ongame/detect_ender_chest/main

## Change phase
execute if score #mbb MBB_GameMode matches 1 if score #mbb MBB_Minute matches 0 if score #mbb MBB_Second matches 0 if score #mbb MBB_Tick matches 0 run function mbb:system/finish/score_attack/main
execute if score #mbb MBB_GameMode matches 2 if entity @p[predicate=mbb:system/ongame/detect_winner/time_attack] run function mbb:system/finish/time_attack/main