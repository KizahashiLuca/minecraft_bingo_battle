#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Leave team
team leave @s

## Set spectator
gamemode spectator @s

## Set tag
tag @s add MBB_Spectator

## Set effect
effect clear @s
effect give @s minecraft:night_vision 1000000 1 true
effect give @s minecraft:invisibility 1000000 1 true
effect give @s minecraft:resistance 1000000 1 true