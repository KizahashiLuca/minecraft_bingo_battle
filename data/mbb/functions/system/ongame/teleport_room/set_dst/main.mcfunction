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
execute as @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst] if score @s MBB_UUID0 = @p[tag=MBB_DetectTeleport] MBB_UUID0 if score @s MBB_UUID1 = @p[tag=MBB_DetectTeleport] MBB_UUID1 if score @s MBB_UUID2 = @p[tag=MBB_DetectTeleport] MBB_UUID2 if score @s MBB_UUID3 = @p[tag=MBB_DetectTeleport] MBB_UUID3 run tag @s add MBB_DetectTeleport

## Teleport
execute at @s[scores={MBB_TeleportSrcD=0}] in minecraft:overworld run tp @s @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_DetectTeleport,limit=1]
execute at @s[scores={MBB_TeleportSrcD=1}] in minecraft:the_nether run tp @s @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_DetectTeleport,limit=1]
execute at @s[scores={MBB_TeleportSrcD=2}] in minecraft:the_end run tp @s @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_DetectTeleport,limit=1]

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_DetectTeleport]

## Unload forceloaded chunk
execute at @s unless entity @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,distance=..16] run forceload remove ~ ~ ~ ~

## Remove a tag
tag @s remove MBB_DetectTeleport