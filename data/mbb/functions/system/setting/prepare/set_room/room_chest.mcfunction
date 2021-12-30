#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set world spawn chest
fill ~-1 ~1 ~ ~-2 ~1 ~ minecraft:quartz_stairs[facing=north]
fill ~1 ~1 ~ ~2 ~1 ~ minecraft:quartz_stairs[facing=north]
fill ~-1 ~ ~ ~-2 ~ ~ minecraft:chest[type=right]{Lock:"Host Chest - Do not touch"}
fill ~1 ~ ~ ~2 ~ ~ minecraft:chest[type=right]{CustomName:'{"text":"見本のシート"}'}

## Summon cloud
summon minecraft:area_effect_cloud ~-1 ~ ~ {Tags:["MBB_RoomChest","MBB_RoomChestA"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~2 ~ ~ {Tags:["MBB_RoomChest","MBB_RoomChestB"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}