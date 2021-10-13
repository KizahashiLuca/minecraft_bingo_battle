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

## Set world spawn chest
setblock ~ 0 ~ minecraft:chest
setblock ~ 1 ~ minecraft:bedrock