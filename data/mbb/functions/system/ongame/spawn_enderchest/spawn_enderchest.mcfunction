#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add a tag
tag @s add MBB_ChestOwner

## Spawn ender chest
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MBB_SpawnChest","MBB_NotSetPlayerChest"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
setblock ~ ~ ~ minecraft:ender_chest destroy

## Set player
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest,tag=MBB_NotSetPlayerChest,sort=nearest,limit=1] MBB_OwnerUUID0 = @s MBB_UUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest,tag=MBB_NotSetPlayerChest,sort=nearest,limit=1] MBB_OwnerUUID1 = @s MBB_UUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest,tag=MBB_NotSetPlayerChest,sort=nearest,limit=1] MBB_OwnerUUID2 = @s MBB_UUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest,tag=MBB_NotSetPlayerChest,sort=nearest,limit=1] MBB_OwnerUUID3 = @s MBB_UUID3
tag @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest,tag=MBB_NotSetPlayerChest,sort=nearest,limit=1] remove MBB_NotSetPlayerChest
