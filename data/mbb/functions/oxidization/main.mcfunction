#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Oxidization
### Weathered cut copper slab
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/weathered_cut_copper_slab] Item.id set value "minecraft:oxidized_cut_copper_slab"
### Exposed cut copper slab
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/exposed_cut_copper_slab] Item.id set value "minecraft:weathered_cut_copper_slab"
### Cut copper slab
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/cut_copper_slab] Item.id set value "minecraft:exposed_cut_copper_slab"
### Weathered cut copper stairs
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/weathered_cut_copper_stairs] Item.id set value "minecraft:oxidized_cut_copper_stairs"
### Exposed cut copper stairs
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/exposed_cut_copper_stairs] Item.id set value "minecraft:weathered_cut_copper_stairs"
### Cut copper stairs
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/cut_copper_stairs] Item.id set value "minecraft:exposed_cut_copper_stairs"
### Weathered cut copper block
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/weathered_cut_copper] Item.id set value "minecraft:oxidized_cut_copper"
### Exposed cut copper block
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/exposed_cut_copper] Item.id set value "minecraft:weathered_cut_copper"
### Cut copper block
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/cut_copper] Item.id set value "minecraft:exposed_cut_copper"
### Weathered copper block
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/weathered_copper] Item.id set value "minecraft:oxidized_copper"
### Exposed copper block
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/exposed_copper] Item.id set value "minecraft:weathered_copper"
### Copper block
data modify entity @s[predicate=mbb:oxidization/item_in_cauldron/copper_block] Item.id set value "minecraft:exposed_copper"

## Play sound
playsound minecraft:item.bottle.empty block @a ~ ~ ~ 1.0 1.5

## Particle
particle minecraft:bubble_column_up ~ ~ ~ 0.1 0.1 0.1 1 15 normal

## Drain water
setblock ~ ~ ~ minecraft:cauldron replace