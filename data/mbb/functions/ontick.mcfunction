#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Execute every tick
execute if score #mbb MBB_GamePhase matches 90 run function mbb:system/setting/gui/main
execute if score #mbb MBB_GamePhase matches 95 run function mbb:system/setting/prepare/main
execute if score #mbb MBB_GamePhase matches 10 run function mbb:system/ongame/main

## Oxidization system
execute as @e[predicate=mbb:oxidization/main] at @s run function mbb:oxidization/main

## Small end portal frame system
execute as @e[predicate=mbb:small_end_portal_frame/main] at @s run function mbb:small_end_portal_frame/main