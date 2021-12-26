#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## in hardcore
execute unless predicate mbb:system/common/difficulty/hardcore run gamemode survival @s
execute if predicate mbb:system/common/difficulty/hardcore run gamemode spectator @s
execute if predicate mbb:system/common/difficulty/hardcore run title @s title ["",{"text":"Game Over","color":"red","bold":true}]

## without hardcore
execute unless predicate mbb:system/common/difficulty/hardcore if predicate mbb:system/common/keep_inventory/false run loot give @s loot mbb:system/ongame/carrot_on_a_stick

## Reset scoreboard
scoreboard players set @s MBB_Death 0