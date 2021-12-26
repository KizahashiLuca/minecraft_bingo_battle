#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set respawn beacon
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:glowstone
fill ~-1 ~1 ~2 ~1 ~1 ~2 minecraft:quartz_slab
fill ~-1 ~1 ~-2 ~1 ~1 ~-2 minecraft:quartz_slab
fill ~-2 ~1 ~-1 ~-2 ~1 ~1 minecraft:quartz_slab
fill ~2 ~1 ~-1 ~2 ~1 ~1 minecraft:quartz_slab
setblock ~-2 ~1 ~2 minecraft:quartz_block
setblock ~2 ~1 ~2 minecraft:quartz_block
setblock ~-2 ~1 ~-2 minecraft:quartz_block
setblock ~2 ~1 ~-2 minecraft:quartz_block
summon minecraft:area_effect_cloud ~ ~3 ~ {Tags:["MBB_RespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647,CustomName:'{"text":"RESPAWN","bold":true,"color":"green"}',CustomNameVisible:1b}