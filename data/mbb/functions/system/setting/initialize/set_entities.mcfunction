#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set gamemode
gamemode adventure @a[gamemode=!spectator]
gamemode adventure @p[tag=MBB_Host]

## Set effect
effect clear @a
effect give @a[gamemode=!spectator] minecraft:resistance 1000000 6 true

## Clear inventory
clear @a

## Set experience
experience set @a 0 levels
experience set @a 0 points

## Remove advancements
advancement revoke @a everything