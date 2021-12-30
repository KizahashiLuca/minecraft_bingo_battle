#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Store teleport source
scoreboard players set @s[predicate=mbb:system/ongame/teleport_room/overworld] MBB_TeleportSrcD 0
scoreboard players set @s[predicate=mbb:system/ongame/teleport_room/the_nether] MBB_TeleportSrcD 1
scoreboard players set @s[predicate=mbb:system/ongame/teleport_room/the_end] MBB_TeleportSrcD 2
execute store result score @s MBB_TeleportSrcX run data get entity @s Pos[0]
execute store result score @s MBB_TeleportSrcY run data get entity @s Pos[1]
execute store result score @s MBB_TeleportSrcZ run data get entity @s Pos[2]
scoreboard players set @s MBB_TeleportSrcN 0

## Forceload
forceload add ~ ~ ~ ~

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MBB_TeleportDst","MBB_NotSetPlayer"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}

## Set scoreboard
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_NotSetPlayer] MBB_UUID0 = @s MBB_UUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_NotSetPlayer] MBB_UUID1 = @s MBB_UUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_NotSetPlayer] MBB_UUID2 = @s MBB_UUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_NotSetPlayer] MBB_UUID3 = @s MBB_UUID3

## Remove a tag
tag @e[type=minecraft:area_effect_cloud,tag=MBB_TeleportDst,tag=MBB_NotSetPlayer] remove MBB_NotSetPlayer