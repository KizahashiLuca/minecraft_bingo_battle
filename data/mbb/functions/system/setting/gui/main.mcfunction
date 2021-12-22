#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect dropping item
execute if entity @e[predicate=mbb:system/settings/gui/items] run function mbb:system/setting/gui/change_to
kill @e[predicate=mbb:system/settings/gui/items]

## Set each settings
execute as @p[predicate=mbb:system/settings/gui/game_group] run function mbb:system/setting/gui/game_group
execute as @p[predicate=mbb:system/settings/gui/weather_cycle] run function mbb:system/setting/gui/weather_cycle
execute as @p[predicate=mbb:system/settings/gui/daylight_cycle] run function mbb:system/setting/gui/daylight_cycle
execute as @p[predicate=mbb:system/settings/gui/keep_inventory] run function mbb:system/setting/gui/keep_inventory
execute as @p[predicate=mbb:system/settings/gui/team_number] run function mbb:system/setting/gui/team_number
execute as @p[predicate=mbb:system/settings/gui/game_mode] run function mbb:system/setting/gui/game_mode
execute as @p[predicate=mbb:system/settings/gui/game_area] run function mbb:system/setting/gui/game_area
execute as @p[predicate=mbb:system/settings/gui/game_time] run function mbb:system/setting/gui/game_time
execute as @p[predicate=mbb:system/settings/gui/difficulty] run function mbb:system/setting/gui/difficulty

execute as @p[predicate=mbb:system/settings/gui/cancel] run function mbb:system/setting/gui/cancel
execute as @p[predicate=mbb:system/settings/gui/ok] run function mbb:system/setting/prepare/change_to

## Count players
function mbb:system/common/count_players