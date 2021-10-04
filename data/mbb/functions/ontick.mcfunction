#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Execute every tick
execute if score #mbb MBB_GamePhase matches 90 run function mbb:system/setting/gui/main
execute if score #mbb MBB_GamePhase matches 95 run function mbb:system/setting/prepare/main
execute if score #mbb MBB_GamePhase matches 96 run function mbb:system/setting/descend/main 