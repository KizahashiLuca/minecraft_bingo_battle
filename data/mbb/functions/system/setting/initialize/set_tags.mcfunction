#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set tags - Host
tag @s add MBB_Host

## Set tags - Spectator
tag @a[gamemode=spectator] add MBB_Spectator

## Set tags - Player
tag @a[tag=!MBB_Spectator] add MBB_Player