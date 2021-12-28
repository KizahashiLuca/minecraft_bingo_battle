#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## in hardcore
gamemode survival @s[predicate=!mbb:system/common/difficulty/hardcore]
gamemode spectator @s[predicate=mbb:system/common/difficulty/hardcore]
title @s[predicate=mbb:system/common/difficulty/hardcore] title ["",{"text":"Game Over","color":"red","bold":true}]

## without hardcore
loot give @s[predicate=!mbb:system/common/difficulty/hardcore,predicate=mbb:system/common/keep_inventory/false] loot mbb:system/ongame/carrot_on_a_stick

## Reset scoreboard
scoreboard players set @s MBB_Death 0