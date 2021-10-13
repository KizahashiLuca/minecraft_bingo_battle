#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Calculate time every tick
execute if score #mbb MBB_Tick matches 0 run scoreboard players set #mbb MBB_Tick 20
scoreboard players remove #mbb MBB_Tick 1

## Calculate time every second
execute if score #mbb MBB_Tick matches 0 run function mbb:system/setting/prepare/count_down/second