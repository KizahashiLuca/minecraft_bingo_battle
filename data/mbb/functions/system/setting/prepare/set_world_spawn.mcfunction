#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set world spawn
execute store result score #mbb MBB_PosX run data get entity @s Pos[0]
execute store result score #mbb MBB_PosY run data get entity @s Pos[1]
execute store result score #mbb MBB_PosZ run data get entity @s Pos[2]
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world spawn room
function mbb:system/setting/prepare/set_room_chest/main

## Set chest 
function mbb:system/setting/prepare/set_team_chest/main