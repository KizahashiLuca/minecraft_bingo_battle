#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 90

## Clear inventory
clear @p[tag=MBB_Host]

## Set inventory
### WeatherCycle - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.3 loot mbb:system/settings/gui/weather_cycle
### DaylightCycle - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.4 loot mbb:system/settings/gui/daylight_cycle
### KeepInventory - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.5 loot mbb:system/settings/gui/keep_inventory
### GameRule - 0:Individual, 1:Team
loot replace entity @p[tag=MBB_Host] inventory.12 loot mbb:system/settings/gui/game_rule
### GameMode - 1:ScoreAttack, 2:TimeAttack
loot replace entity @p[tag=MBB_Host] inventory.13 loot mbb:system/settings/gui/game_mode
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
loot replace entity @p[tag=MBB_Host] inventory.14 loot mbb:system/settings/gui/difficulty
### TeamNumber (TeamMatch only)
loot replace entity @p[tag=MBB_Host] inventory.7 loot mbb:system/settings/gui/team_number
### Gametime (ScoreAttack mode only)
loot replace entity @p[tag=MBB_Host] inventory.16 loot mbb:system/settings/gui/game_time
### Cancel
loot replace entity @p[tag=MBB_Host] inventory.20 loot mbb:system/settings/gui/cancel
### OK
loot replace entity @p[tag=MBB_Host] inventory.24 loot mbb:system/settings/gui/ok