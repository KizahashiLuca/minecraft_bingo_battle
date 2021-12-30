#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Teleport
function mbb:system/ongame/teleport_room/set_dst/main

## Reset scoreboard
scoreboard players reset @s MBB_TeleportSrcD
scoreboard players reset @s MBB_TeleportSrcX
scoreboard players reset @s MBB_TeleportSrcY
scoreboard players reset @s MBB_TeleportSrcZ
scoreboard players set @s MBB_TeleportSrcN 0

## Set effects 
effect clear @s

## Set gamemode
gamemode survival @s