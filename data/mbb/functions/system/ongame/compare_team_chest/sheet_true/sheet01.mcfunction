#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add a tag
tag @s add MBB_ReplaceItems

## Replace bingo sheet
### Sheet01
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_ReplaceItems"]}},PickupDelay:32767s}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MBB_ReplaceItems"]}}},limit=1] run function mbb:system/ongame/compare_team_chest/replace_items/sheet01

item replace block ~ ~ ~ container.3 with minecraft:structure_void 1
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_SetItems"]}},PickupDelay:32767s}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MBB_SetItems"]}}},limit=1] at @e[predicate=mbb:system/ongame/compare_team_chest/replace_items/main,limit=1] run function mbb:system/ongame/compare_team_chest/reset_items/sheet01

## Remove a tag
tag @s remove MBB_ReplaceItems