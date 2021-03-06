#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add a tag
tag @s add MBB_CompareSheet

## Compare bingo sheet
### Sheet11
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_CompareSheet"]}},PickupDelay:32767s}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_CompareSheet"]}}},limit=1] run function mbb:system/ongame/detect_bingo_sheet/compare_items/sheet11

## Remove a tag
tag @s remove MBB_CompareSheet