#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Teleport
execute as @a[predicate=mbb:system/ongame/teleport_room/out] at @s if entity @e[type=minecraft:area_effect_cloud,tag=MBB_RespawnBeacon,distance=..2] run function mbb:system/ongame/teleport_room/out

## Compare team chest
function mbb:system/ongame/compare_team_chest/main

## Set room chest
function mbb:system/ongame/compare_room_chest/main

## Clear item
kill @e[predicate=mbb:system/ongame/dropped_item]
clear @a #mbb:bingo_items{Tags:["MBB_SheetItem"]}

## Set scoreboard
scoreboard players reset @a MBB_SheetTmp4