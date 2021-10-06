#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Clear effects
effect clear @s

## Add a tag
tag @s add MBB_AfterDescend

## Remove tags
tag @s remove MBB_BeforeDescend
tag @s remove MBB_Descending

tellraw @a ["",{"text":"切れた"}]