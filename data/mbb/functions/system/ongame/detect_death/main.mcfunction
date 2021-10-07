#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## in hardcore
execute if score #mbb MBB_Difficulty matches 4 run gamemode spectator @s

## without hardcore
execute unless score #mbb MBB_Difficulty matches 4 if score #mbb MBB_KeepInve matches 0 run loot give @s loot mbb:system/ongame/carrot_on_a_stick

## Reset scoreboard
scoreboard players set @s MBB_Death 0