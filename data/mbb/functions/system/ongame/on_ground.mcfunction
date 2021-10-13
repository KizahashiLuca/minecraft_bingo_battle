#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Clear effects
effect clear @s

## Add a tag
tag @s add MBB_AfterDescend

## Remove tags
tag @s remove MBB_BeforeDescend
tag @s remove MBB_Descending

## Give items
loot give @s loot mbb:system/ongame/carrot_on_a_stick

## Set spawnpoint
spawnpoint @s ~ ~ ~