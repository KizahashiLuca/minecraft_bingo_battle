#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 95

## Set game
function mbb:system/setting/initialize/set_gamerules
function mbb:system/setting/initialize/set_entities
function mbb:system/setting/initialize/set_worlds

## Set scoreboards
function mbb:system/setting/prepare/set_scoreboards

## Set spectator
gamemode spectator @a[tag=MBB_Spectator]
effect give @a[tag=MBB_Spectator] minecraft:night_vision 1000000 1 true
effect give @a[tag=MBB_Spectator] minecraft:resistance 1000000 1 true

## Set world spawn
execute at @p[tag=MBB_Host] align xyz run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MBB_WorldSpawn"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mbb:system/common/world_spawn] at @s run function mbb:system/setting/prepare/set_world_spawn

## Set world border
execute as @e[predicate=mbb:system/common/world_spawn] at @s run function mbb:system/setting/prepare/set_world_border

## Set team settings
execute if predicate mbb:system/common/gamerule/team_match run function mbb:system/setting/prepare/set_team_settings/main

## Set team randomly
execute if predicate mbb:system/common/gamerule/team_match run tag @a[tag=MBB_Player] add MBB_PlayerNotSetTeam

execute if predicate mbb:system/common/gamerule/team_match run function mbb:system/setting/prepare/set_team_randomly/main

## Send messages
function mbb:system/common/message/begin
tellraw @a ["",{"text":"Gamerules","color":"white","bold":true}]
tellraw @a ["",{"text":"  Mode : ","color":"white","bold":false}]
tellraw @a[predicate=mbb:system/common/gamemode/score_attack] ["",{"text":"    ","color":"white","bold":false},{"text":"Score Attack","color":"light_purple","bold":true}]
tellraw @a[predicate=mbb:system/common/gamemode/time_attack] ["",{"text":"    ","color":"white","bold":false},{"text":"Time Attack","color":"aqua","bold":true}]
tellraw @a[predicate=mbb:system/common/gamerule/individual_match] ["",{"text":"    ","color":"white","bold":false},{"text":"Individual Match","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/gamerule/team_match] ["",{"text":"    ","color":"white","bold":false},{"text":"Team Match","color":"red","bold":true}]
tellraw @a[predicate=mbb:system/common/gamemode/score_attack] ["",{"text":"    Time Limit : ","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_GameTime"},"color":"green","bold":true},{"text":" min.","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/difficulty/easy] ["",{"text":"  Difficulty : ","color":"white","bold":false},{"text":"Easy","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/difficulty/normal] ["",{"text":"  Difficulty : ","color":"white","bold":false},{"text":"Normal","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/difficulty/hard] ["",{"text":"  Difficulty : ","color":"white","bold":false},{"text":"Hard","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/difficulty/hardcore] ["",{"text":"  Difficulty : ","color":"white","bold":false},{"text":"Hardcore","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/keep_inventory/false] ["",{"text":"  Keep Inventory : ","color":"white","bold":false},{"text":"FALSE","color":"red","bold":true}]
tellraw @a[predicate=mbb:system/common/keep_inventory/true] ["",{"text":"  Keep Inventory : ","color":"white","bold":false},{"text":"TRUE","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/weather_cycle/false] ["",{"text":"  Weather Cycle  : ","color":"white","bold":false},{"text":"FALSE","color":"red","bold":true}]
tellraw @a[predicate=mbb:system/common/weather_cycle/true] ["",{"text":"  Weather Cycle  : ","color":"white","bold":false},{"text":"TRUE","color":"green","bold":true}]
tellraw @a[predicate=mbb:system/common/daylight_cycle/false] ["",{"text":"  Daylight Cycle : ","color":"white","bold":false},{"text":"FALSE","color":"red","bold":true}]
tellraw @a[predicate=mbb:system/common/daylight_cycle/true] ["",{"text":"  Daylight Cycle : ","color":"white","bold":false},{"text":"TRUE","color":"green","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match run function mbb:system/setting/prepare/set_member_messages
function mbb:system/common/message/end

## Set count down
scoreboard players set #mbb MBB_Tick 0
scoreboard players set #mbb MBB_Second 5
execute store result bossbar mbb:bossbar max run scoreboard players get #mbb MBB_Second