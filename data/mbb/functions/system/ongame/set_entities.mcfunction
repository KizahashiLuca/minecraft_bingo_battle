#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set gamemode
gamemode survival @a[tag=MBB_Player]

## Set effect - spectator
gamemode spectator @a[tag=MBB_Spectator]
effect give @a[tag=MBB_Spectator] minecraft:night_vision 1000000 1 true
effect give @a[tag=MBB_Spectator] minecraft:invisibility 1000000 1 true
effect give @a[tag=MBB_Spectator] minecraft:resistance 1000000 1 true

## Set effect - player
effect clear @a[tag=MBB_Player]
effect give @a[tag=MBB_Player] minecraft:slow_falling 1000000 1 true
effect give @a[tag=MBB_Player] minecraft:invisibility 1000000 1 true
effect give @a[tag=MBB_Player] minecraft:resistance 1000000 1 true

## Clear inventory
clear @a

## Set experience
experience set @a 0 levels
experience set @a 0 points

## Reset advancements
advancement revoke @a everything

## Reset recipes
recipe take @a *