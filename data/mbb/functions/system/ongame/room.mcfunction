#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Teleport
execute as @a[predicate=mbb:system/ongame/teleport_room/out] at @s if entity @e[type=minecraft:area_effect_cloud,tag=MBB_RespawnBeacon,distance=..2] run function mbb:system/ongame/teleport_room/out

## Set room chest
execute as @e[predicate=mbb:system/ongame/compare_room_chest/main] at @s run function mbb:system/ongame/compare_room_chest/main

## Compare team chest
execute as @e[predicate=mbb:system/common/team_chest/main] at @s run function mbb:system/ongame/compare_team_chest/main

## Detect bingo
execute as @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/main] at @s run function mbb:system/ongame/compare_team_chest/set_bingo

## Clear item
kill @e[predicate=mbb:system/ongame/dropped_item]
clear @a[predicate=mbb:system/ongame/detect_have_item] minecraft:barrier{Tags:["MBB_SheetItem"]}
clear @a[predicate=mbb:system/ongame/detect_have_item] #mbb:bingo_items{Tags:["MBB_SheetItem"]}

## Set scoreboard
scoreboard players reset @a MBB_SheetTmp4