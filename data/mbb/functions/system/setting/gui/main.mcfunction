#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Detect dropping item
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MBB_SettingItem"]}}}] run function mbb:system/setting/gui/change_to
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MBB_SettingItem"]}}}]

## Set each settings
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/game_group] run function mbb:system/setting/gui/game_group
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/weather_cycle] run function mbb:system/setting/gui/weather_cycle
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/daylight_cycle] run function mbb:system/setting/gui/daylight_cycle
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/keep_inventory] run function mbb:system/setting/gui/keep_inventory
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/team_number] run function mbb:system/setting/gui/team_number
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/game_mode] run function mbb:system/setting/gui/game_mode
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/game_area] run function mbb:system/setting/gui/game_area
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/game_time] run function mbb:system/setting/gui/game_time
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/difficulty] run function mbb:system/setting/gui/difficulty

execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/cancel] run function mbb:system/setting/gui/cancel
execute if score #mbb MBB_GamePhase matches 90 as @p[tag=MBB_Host,predicate=mbb:system/settings/gui/ok] run function mbb:system/setting/gui/ok

## Count players
function mbb:system/common/count_players