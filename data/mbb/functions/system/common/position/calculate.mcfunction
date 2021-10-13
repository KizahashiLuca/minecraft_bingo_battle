#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set position
execute store result score @s MBB_PosX run data get entity @s Pos[0] 1
execute store result score @s MBB_PosY run data get entity @s Pos[1] 1
execute store result score @s MBB_PosZ run data get entity @s Pos[2] 1
execute store result score @s MBB_Angle run data get entity @s Rotation[0] 1
scoreboard players add @s MBB_Angle 22
scoreboard players add @s[scores={MBB_Angle=..0}] MBB_Angle 360
scoreboard players operation @s MBB_Angle /= #mbb MBB_45