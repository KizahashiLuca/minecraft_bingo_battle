#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Oxidize exposed copper block
data modify entity @s Item.id set value "minecraft:weathered_copper"

## Drain water
setblock ~ ~ ~ minecraft:cauldron replace