#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 96

## Set gamerules
function mbb:system/setting/descend/set_gamerules

## Set time
time set day

## Set weather
weather clear

## Set spectator
gamemode spectator @a[tag=MBB_Spectator]
effect give @a[tag=MBB_Spectator] minecraft:night_vision 1000000 1 true
effect give @a[tag=MBB_Spectator] minecraft:resistance 1000000 1 true

## Set player effect
effect clear @a[tag=MBB_Player]
effect give @a[tag=MBB_Player] minecraft:slow_falling 1000000 1 true
effect give @a[tag=MBB_Player] minecraft:resistance 1000000 1 true

## Teleport randomly
