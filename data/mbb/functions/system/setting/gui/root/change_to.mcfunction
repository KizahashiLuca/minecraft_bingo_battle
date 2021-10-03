#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change phase
scoreboard players set #mbb MBB_GamePhase 900

## Clear inventory
clear @p[tag=MBB_Host]

## Set inventory
### Gamemode - 1:ScoreAttack, 2:TimeAttack
loot replace entity @p[tag=MBB_Host] inventory.9 loot mbb:system/settings/gui/root/game_mode
### Gamearea
loot replace entity @p[tag=MBB_Host] inventory.12 loot mbb:system/settings/gui/root/game_area
### Gametime (ScoreAttack mode only)
loot replace entity @p[tag=MBB_Host,scores={MBB_GameMode=1}] inventory.13 loot mbb:system/settings/gui/root/game_time
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
loot replace entity @p[tag=MBB_Host] inventory.12 loot mbb:system/settings/gui/root/difficulty
### WeatherCycle - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.3 loot mbb:system/settings/gui/root/weather_cycle
### DaylightCycle - 0:FALSE, 1:TRUE
loot replace entity @p[tag=MBB_Host] inventory.4 loot mbb:system/settings/gui/root/daylight_cycle
### KeepInventory
loot replace entity @p[tag=MBB_Host] inventory.5 loot mbb:system/settings/gui/root/keep_inventory
### Gamegroup - 1:Individual, 2:Team
loot replace entity @p[tag=MBB_Host] inventory.17 loot mbb:system/settings/gui/root/game_group