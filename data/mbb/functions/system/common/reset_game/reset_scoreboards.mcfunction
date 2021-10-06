#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Remove objectives
### Gamesystem
scoreboard objectives remove MBB_NumPlayer
scoreboard objectives remove MBB_GamePhase
### GameGroup - 1:Individual, 2:Team
scoreboard objectives remove MBB_GameGroup
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard objectives remove MBB_WeatherCycle
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard objectives remove MBB_DayligtCycle
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard objectives remove MBB_KeepInve
### TeamNumber (TeamMatch only)
scoreboard objectives remove MBB_NumTeam
### Gamemode - 1:ScoreAttack, 2:TimeAttack
scoreboard objectives remove MBB_GameMode
### Gamearea
scoreboard objectives remove MBB_GameArea
### Gametime (ScoreAttack mode only)
scoreboard objectives remove MBB_GameTime
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard objectives remove MBB_Difficulty
### Position
scoreboard objectives remove MBB_PosX
scoreboard objectives remove MBB_PosY
scoreboard objectives remove MBB_PosZ
scoreboard objectives remove MBB_Angle
scoreboard objectives remove MBB_45
### Timer
scoreboard objectives remove MBB_Tick
scoreboard objectives remove MBB_Second
scoreboard objectives remove MBB_Minute
scoreboard objectives remove MBB_TotalSecond
scoreboard objectives remove MBB_60
### Sheet
scoreboard objectives remove MBB_Sheet00
scoreboard objectives remove MBB_Sheet01
scoreboard objectives remove MBB_Sheet02
scoreboard objectives remove MBB_Sheet10
scoreboard objectives remove MBB_Sheet11
scoreboard objectives remove MBB_Sheet12
scoreboard objectives remove MBB_Sheet20
scoreboard objectives remove MBB_Sheet21
scoreboard objectives remove MBB_Sheet22

## Reset players
scoreboard players reset #mbb
scoreboard players reset @a