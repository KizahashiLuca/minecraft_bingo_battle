#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Oxidize weathered cut copper slab
data modify entity @s Item.id set value "minecraft:oxidized_cut_copper_slab"

## Play sound
playsound minecraft:item.bottle.empty block @a ~ ~ ~ 1.0 1.5

## Particle
particle minecraft:bubble_column_up ~ ~ ~ 0.1 0.1 0.1 1 15 normal

## Drain water
setblock ~ ~ ~ minecraft:cauldron replace