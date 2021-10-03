#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 90

## Clear inventory
clear @p[tag=MBB_Host]

## Set inventory
### Gamegroup - 1:Individual, 2:Team
loot replace entity @p[tag=MBB_Host] inventory.0 loot mbb:system/settings/gui/game_group
### WeatherCycle - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.3 loot mbb:system/settings/gui/weather_cycle
### DaylightCycle - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.4 loot mbb:system/settings/gui/daylight_cycle
### KeepInventory
loot replace entity @p[tag=MBB_Host] inventory.5 loot mbb:system/settings/gui/keep_inventory
### TeamNumber (TeamBattle only)
loot replace entity @p[tag=MBB_Host] inventory.7 loot mbb:system/settings/gui/team_number
### Gamemode - 1:ScoreAttack, 2:TimeAttack
loot replace entity @p[tag=MBB_Host] inventory.9 loot mbb:system/settings/gui/game_mode
### Gamearea
loot replace entity @p[tag=MBB_Host] inventory.12 loot mbb:system/settings/gui/game_area
### Gametime (ScoreAttack mode only)
loot replace entity @p[tag=MBB_Host,scores={MBB_GameMode=1}] inventory.13 loot mbb:system/settings/gui/game_time
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
loot replace entity @p[tag=MBB_Host] inventory.14 loot mbb:system/settings/gui/difficulty
### Cancel
loot replace entity @p[tag=MBB_Host] inventory.20 loot mbb:system/settings/gui/cancel
### OK
loot replace entity @p[tag=MBB_Host] inventory.24 loot mbb:system/settings/gui/ok