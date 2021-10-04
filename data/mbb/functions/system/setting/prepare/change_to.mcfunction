#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 95

## Set game
function mbb:system/setting/initialize/set_gamerules
function mbb:system/setting/initialize/set_entities
function mbb:system/setting/initialize/set_worlds

## Set spectator
gamemode spectator @a[tag=MBB_Spectator]
effect give @a[tag=MBB_Spectator] minecraft:night_vision 1000000 1 true
effect give @a[tag=MBB_Spectator] minecraft:resistance 1000000 1 true

## Set world spawn
execute at @p[tag=MBB_Host] align xyz run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MBB_WorldSpawn"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mbb:system/settings/prepare/world_spawn] at @s run function mbb:system/setting/prepare/set_world_spawn

## Set world border
execute as @e[predicate=mbb:system/settings/prepare/world_spawn] at @s run function mbb:system/setting/prepare/set_world_border

## Set team settings
function mbb:system/setting/prepare/set_team_settings/main

## Set team randomly
tag @a[tag=MBB_Player] add MBB_PlayerNotSetTeam
execute if entity @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam] run function mbb:system/setting/prepare/set_team_randomly/main

## Set count down
scoreboard players set #mbb MBB_Tick 19
scoreboard players set #mbb MBB_Second 6
execute store result bossbar mbb:bossbar max run scoreboard players get #mbb MBB_Second