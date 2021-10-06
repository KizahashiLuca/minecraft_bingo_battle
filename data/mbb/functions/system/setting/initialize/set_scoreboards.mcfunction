#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add objectives
### Gamesystem
scoreboard objectives add MBB_NumPlayer dummy
scoreboard objectives add MBB_GamePhase dummy
### GameGroup - 1:Individual, 2:Team
scoreboard objectives add MBB_GameGroup dummy
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard objectives add MBB_WeatherCycle dummy
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard objectives add MBB_DayligtCycle dummy
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard objectives add MBB_KeepInve dummy
### TeamNumber (TeamMatch only)
scoreboard objectives add MBB_NumTeam dummy
### Gamemode - 1:ScoreAttack, 2:TimeAttack
scoreboard objectives add MBB_GameMode dummy
### Gamearea
scoreboard objectives add MBB_GameArea dummy
### Gametime (ScoreAttack mode only)
scoreboard objectives add MBB_GameTime dummy
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard objectives add MBB_Difficulty dummy
### Position
scoreboard objectives add MBB_PosX dummy
scoreboard objectives add MBB_PosY dummy
scoreboard objectives add MBB_PosZ dummy
scoreboard objectives add MBB_Angle dummy
scoreboard objectives add MBB_45 dummy
### Timer
scoreboard objectives add MBB_Tick dummy
scoreboard objectives add MBB_Second dummy
scoreboard objectives add MBB_Minute dummy
scoreboard objectives add MBB_TotalSecond dummy
scoreboard objectives add MBB_60 dummy
### Sheet
scoreboard objectives add MBB_Sheet00 dummy
scoreboard objectives add MBB_Sheet01 dummy
scoreboard objectives add MBB_Sheet02 dummy
scoreboard objectives add MBB_Sheet10 dummy
scoreboard objectives add MBB_Sheet11 dummy
scoreboard objectives add MBB_Sheet12 dummy
scoreboard objectives add MBB_Sheet20 dummy
scoreboard objectives add MBB_Sheet21 dummy
scoreboard objectives add MBB_Sheet22 dummy

## Set scoreboards
### GameGroup - 1:Individual, 2:Team
scoreboard players set @p[tag=MBB_Host] MBB_GameGroup 1
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard players set @p[tag=MBB_Host] MBB_WeatherCycle 1
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard players set @p[tag=MBB_Host] MBB_DayligtCycle 1
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard players set @p[tag=MBB_Host] MBB_KeepInve 0
### TeamNumber (TeamMatch only)
scoreboard players set @p[tag=MBB_Host] MBB_NumTeam 1
### Gamemode - 1:ScoreAttack, 2:TimeAttack
scoreboard players set @p[tag=MBB_Host] MBB_GameMode 1 
### Gamearea
scoreboard players set @p[tag=MBB_Host] MBB_GameArea 1000
### Gametime (ScoreAttack mode only)
scoreboard players set @p[tag=MBB_Host] MBB_GameTime 10
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard players set @p[tag=MBB_Host] MBB_Difficulty 2
### Position
scoreboard players set #mbb MBB_45 45
### Timer
scoreboard players set #mbb MBB_60 60