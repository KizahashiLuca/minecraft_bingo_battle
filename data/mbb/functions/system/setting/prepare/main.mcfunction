#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Log in the mid of the game
execute as @a[tag=!MBB_Player,gamemode=!spectator] run function mbb:system/common/login_midgame

## Count down
function mbb:system/setting/prepare/count_down/tick

## Set position
execute as @a run function mbb:system/common/position/main

## Change phase
execute if score #mbb MBB_Second matches 0 if score #mbb MBB_Tick matches 0 run function mbb:system/setting/descend/change_to