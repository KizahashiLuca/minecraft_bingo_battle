#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Detect enderchest item thrown
execute as @a[predicate=mbb:system/ongame/bingo_sheet] at @e[predicate=mbb:system/common/world_spawn] run function mbb:system/ongame/detect_ender_chest/set_enderchest
kill @e[tag=MBB_MBB_EnderChestItem]

## Clear items
clear @a #mbb:bingo_items{Tags:["MBB_EnderChestItem"]}
clear @a minecraft:white_banner{Tags:["MBB_EnderChestItem"]}

## Detect enderchest spawn
execute as @a[tag=MBB_Player,nbt={OnGround:1b},scores={MBB_SpawnChest=1..},tag=!MBB_ChestOwner] at @s run function mbb:system/ongame/detect_ender_chest/spawn_enderchest
scoreboard players set @a[tag=MBB_Player] MBB_SpawnChest 0

## Detect owner leaves enderchest
execute as @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest] at @s run function mbb:system/ongame/detect_ender_chest/detect_player