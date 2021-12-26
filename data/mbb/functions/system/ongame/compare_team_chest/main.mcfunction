#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect sheet
execute as @e[predicate=mbb:system/ongame/compare_team_chest/main] at @s run function mbb:system/ongame/compare_team_chest/sheet_false/main

## Detect bingo
execute as @e[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/main] at @s run function mbb:system/ongame/compare_team_chest/set_bingo

## Detect blank
execute as @e[predicate=mbb:system/ongame/compare_team_chest/detect_blank] at @s run function mbb:system/ongame/compare_team_chest/set_blank

## Clear item
kill @e[predicate=mbb:system/ongame/dropped_item]
clear @a minecraft:barrier

## Set scoreboard
scoreboard players reset @a MBB_SheetTmp4