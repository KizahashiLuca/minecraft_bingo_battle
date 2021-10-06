#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Calculate time every second
execute if score #mbb MBB_Tick matches 0 run function mbb:system/ongame/count_down/second

## Calculate time every tick
scoreboard players remove #mbb MBB_Tick 1
execute if score #mbb MBB_Tick matches -1 run scoreboard players set #mbb MBB_Tick 19