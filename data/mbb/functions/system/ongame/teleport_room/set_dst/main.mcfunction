#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add a tag
tag @s add MBB_DetectTeleport

## Set cloud
tag @e[predicate=mbb:system/ongame/teleport_room/dst_cloud/own_cloud] add MBB_DetectTeleportDst

## Teleport
execute at @s[scores={MBB_TeleportSrcD=0}] in minecraft:overworld run tp @s @e[predicate=mbb:system/ongame/teleport_room/dst_cloud/own_cloud_detected,limit=1]
execute at @s[scores={MBB_TeleportSrcD=1}] in minecraft:the_nether run tp @s @e[predicate=mbb:system/ongame/teleport_room/dst_cloud/own_cloud_detected,limit=1]
execute at @s[scores={MBB_TeleportSrcD=2}] in minecraft:the_end run tp @s @e[predicate=mbb:system/ongame/teleport_room/dst_cloud/own_cloud_detected,limit=1]

## Kill cloud
kill @e[predicate=mbb:system/ongame/teleport_room/dst_cloud/own_cloud_detected]

## Unload forceloaded chunk
execute at @s unless entity @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,distance=..16] run forceload remove ~ ~ ~ ~

## Remove a tag
tag @s remove MBB_DetectTeleport