#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set scoreboard
scoreboard players reset @s MBB_TeleportRoom

## Forceload
execute as @s[gamemode=survival] at @s run function mbb:system/ongame/teleport_room/store_src

## Teleport
execute as @s[gamemode=survival] at @e[predicate=mbb:system/common/world_spawn] run tp @s ~ -62 ~

## Set effects
effect give @s minecraft:resistance 1000000 10 true
effect give @s minecraft:weakness 1000000 10 true

## Set gamemode
gamemode adventure @s