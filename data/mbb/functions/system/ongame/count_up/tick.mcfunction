#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Calculate time every tick
scoreboard players add #mbb MBB_Tick 1

## Calculate time every second
execute if score #mbb MBB_Tick matches 20 run function mbb:system/ongame/count_up/second