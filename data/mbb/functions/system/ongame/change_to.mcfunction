#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 10

## Set gamerules
function mbb:system/ongame/set_gamerules
function mbb:system/ongame/set_entities
function mbb:system/ongame/set_worlds

## Set scoreboards
function mbb:system/ongame/set_scoreboards

## Teleport randomly
execute at @e[predicate=mbb:system/common/world_spawn,limit=1] run function mbb:system/ongame/set_destination
execute as @a[tag=MBB_Player] at @s run tp @s ~ 200 ~

## Send title messages
title @a title ["",{"text":"Game start","color":"white"}]
execute if predicate mbb:system/common/gamemode/score_attack run title @a subtitle ["",{"text":"As many as possible within ","color":"white"},{"score":{"name":"#mbb","objective":"MBB_GameTime"},"color":"white"},{"text":" min.!!","color":"white"}]
execute if predicate mbb:system/common/gamemode/time_attack run title @a subtitle ["",{"text":"As soon as possible!!","color":"white"}]
title @a times 20 80 20