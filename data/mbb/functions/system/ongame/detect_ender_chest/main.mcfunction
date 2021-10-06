#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Detect ender chest item thrown
execute as @a[predicate=mbb:system/ongame/bingo_sheet] at @e[predicate=mbb:system/common/world_spawn] run function mbb:system/ongame/detect_ender_chest/set_enderchest
kill @e[tag=MBB_MBB_EnderChestItem]

## Clear items
clear @a #mbb:bingo_items{Tags:["MBB_EnderChestItem"]}
clear @a minecraft:white_banner{Tags:["MBB_EnderChestItem"]}
