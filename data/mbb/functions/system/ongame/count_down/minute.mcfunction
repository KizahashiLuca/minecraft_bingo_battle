#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Calculate time every minute
scoreboard players remove #mbb MBB_Minute 1

## Set color
execute unless score #mbb MBB_Minute matches 0..4 run bossbar set mbb:bossbar color white
execute if score #mbb MBB_Minute matches 2..4 run bossbar set mbb:bossbar color yellow
execute if score #mbb MBB_Minute matches 0..1 run bossbar set mbb:bossbar color red