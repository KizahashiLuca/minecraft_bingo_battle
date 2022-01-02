#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect sheet true
execute as @s[predicate=mbb:system/ongame/compare_team_chest/sheet_true/main] at @s run function mbb:system/ongame/compare_team_chest/sheet_true/main

## Detect sheet false
execute as @s[predicate=mbb:system/ongame/compare_team_chest/sheet_false/main] at @s run function mbb:system/ongame/compare_team_chest/sheet_false/main

## Detect blank
execute as @s[predicate=mbb:system/ongame/compare_team_chest/detect_blank] at @s run function mbb:system/ongame/compare_team_chest/set_blank