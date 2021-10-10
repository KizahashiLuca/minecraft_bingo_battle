#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Remove a tag
tag @a[tag=MBB_DetectChestOwner] remove MBB_ChestOwner

## Remove ender chest
kill @s
setblock ~ ~ ~ minecraft:air replace
