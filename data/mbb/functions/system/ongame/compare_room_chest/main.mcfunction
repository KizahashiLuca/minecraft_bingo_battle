#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect blank
execute as @e[predicate=mbb:system/ongame/compare_room_chest/main] at @s run function mbb:system/ongame/compare_room_chest/set_client

## Clear item
kill @e[predicate=mbb:system/ongame/dropped_item]
clear @a #mbb:bingo_items{Tags:["MBB_SheetItem"]}