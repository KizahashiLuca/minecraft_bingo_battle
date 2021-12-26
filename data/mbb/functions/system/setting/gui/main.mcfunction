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
### WeatherCycle - 0:FALSE, 1:TRUE
execute as @p[predicate=mbb:system/settings/gui/weather_cycle] run function mbb:system/setting/gui/weather_cycle
### DaylightCycle - 0:FALSE, 1:TRUE
execute as @p[predicate=mbb:system/settings/gui/daylight_cycle] run function mbb:system/setting/gui/daylight_cycle
### KeepInventory - 0:FALSE, 1:TRUE
execute as @p[predicate=mbb:system/settings/gui/keep_inventory] run function mbb:system/setting/gui/keep_inventory
### GameRule - 0:Individual, 1:Team (Current ver. TeamMatch only)
# execute as @p[predicate=mbb:system/settings/gui/game_rule] run function mbb:system/setting/gui/game_rule
execute as @p[predicate=mbb:system/settings/gui/game_rule] run function mbb:system/setting/gui/change_to
### GameMode - 1:ScoreAttack, 2:TimeAttack
execute as @p[predicate=mbb:system/settings/gui/game_mode] run function mbb:system/setting/gui/game_mode
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
execute as @p[predicate=mbb:system/settings/gui/difficulty] run function mbb:system/setting/gui/difficulty
### TeamNumber (TeamMatch only)
execute as @p[predicate=mbb:system/settings/gui/team_number] run function mbb:system/setting/gui/team_number
### Gametime (ScoreAttack mode only)
execute as @p[predicate=mbb:system/settings/gui/game_time] run function mbb:system/setting/gui/game_time
### Cancel
execute as @p[predicate=mbb:system/settings/gui/cancel] run function mbb:system/setting/gui/cancel
### OK
execute as @p[predicate=mbb:system/settings/gui/ok] run function mbb:system/setting/prepare/change_to

## Count players
function mbb:system/common/count_players