#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set time
time set noon

## Set weather
weather clear

## Reset ender chest
execute at @e[type=minecraft:area_effect_cloud,tag=MBB_SpawnChest] run setblock ~ ~ ~ minecraft:air replace

## Reset world spawn chest
execute at @e[predicate=mbb:system/common/world_spawn] run setblock ~ 0 ~ minecraft:bedrock

## Kill entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]

## Set world border & cloud
worldborder center 0 0
worldborder set 59999968