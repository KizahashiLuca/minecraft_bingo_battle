#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Replace structure
setblock ~-1 ~ ~ minecraft:end_portal_frame[facing=east,eye=true]
setblock ~1 ~ ~ minecraft:end_portal_frame[facing=west,eye=true]
setblock ~ ~ ~-1 minecraft:end_portal_frame[facing=north,eye=true]
setblock ~ ~ ~1 minecraft:end_portal_frame[facing=south,eye=true]
setblock ~ ~ ~ minecraft:end_portal

## Play sound
summon minecraft:lightning_bolt ~ ~ ~

## Kill me
kill @s