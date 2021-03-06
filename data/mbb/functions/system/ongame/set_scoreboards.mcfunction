#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set scoreboards
scoreboard players set #mbb MBB_Tick 0
scoreboard players set #mbb MBB_Second 0
scoreboard players set #mbb MBB_Minute 0
execute if score #mbb MBB_GameMode matches 1 run scoreboard players operation #mbb MBB_Minute = #mbb MBB_GameTime
scoreboard players operation #mbb MBB_TotalSecond = #mbb MBB_GameTime
scoreboard players operation #mbb MBB_TotalSecond *= #mbb MBB_60
execute store result bossbar mbb:bossbar max run scoreboard players get #mbb MBB_TotalSecond
bossbar set mbb:bossbar style notched_10
bossbar set mbb:bossbar color white