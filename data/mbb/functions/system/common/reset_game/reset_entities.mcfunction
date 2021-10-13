#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set gamemode
gamemode adventure @a

## Set effect
effect clear @a

## Teleport to host
tp @a @p[tag=MBB_Host]

## Clear inventory
execute if score #mbb MBB_GamePhase matches 90.. run clear @a