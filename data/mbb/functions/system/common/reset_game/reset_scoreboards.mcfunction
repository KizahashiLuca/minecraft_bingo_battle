#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Remove objectives
### Gamesystem
scoreboard objectives remove MBB_NumPlayer
scoreboard objectives remove MBB_GamePhase
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard objectives remove MBB_WeatherCycle
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard objectives remove MBB_DayligtCycle
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard objectives remove MBB_KeepInve
### GameRule - 0:Individual, 1:Team
scoreboard objectives remove MBB_GameRule
### GameMode - 0:ScoreAttack, 1:TimeAttack
scoreboard objectives remove MBB_GameMode
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard objectives remove MBB_Difficulty
### TeamNumber (TeamMatch only)
scoreboard objectives remove MBB_NumTeam
### Gametime (ScoreAttack mode only)
scoreboard objectives remove MBB_GameTime
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
scoreboard objectives remove MBB_DummyTick
scoreboard objectives remove MBB_DummySecond
scoreboard objectives remove MBB_TotalSecond
scoreboard objectives remove MBB_5
scoreboard objectives remove MBB_60
### Death
scoreboard objectives remove MBB_Death
scoreboard objectives remove MBB_LiveTime
### Teleport
scoreboard objectives remove MBB_TeleportRoom
### Sheet
scoreboard objectives remove MBB_Sheet00
scoreboard objectives remove MBB_Sheet01
scoreboard objectives remove MBB_Sheet02
scoreboard objectives remove MBB_Sheet03
scoreboard objectives remove MBB_Sheet04
scoreboard objectives remove MBB_Sheet10
scoreboard objectives remove MBB_Sheet11
scoreboard objectives remove MBB_Sheet12
scoreboard objectives remove MBB_Sheet13
scoreboard objectives remove MBB_Sheet14
scoreboard objectives remove MBB_Sheet20
scoreboard objectives remove MBB_Sheet21
scoreboard objectives remove MBB_Sheet22
scoreboard objectives remove MBB_Sheet23
scoreboard objectives remove MBB_Sheet24
scoreboard objectives remove MBB_Sheet30
scoreboard objectives remove MBB_Sheet31
scoreboard objectives remove MBB_Sheet32
scoreboard objectives remove MBB_Sheet33
scoreboard objectives remove MBB_Sheet34
scoreboard objectives remove MBB_Sheet40
scoreboard objectives remove MBB_Sheet41
scoreboard objectives remove MBB_Sheet42
scoreboard objectives remove MBB_Sheet43
scoreboard objectives remove MBB_Sheet44
scoreboard objectives remove MBB_SheetTmp1
scoreboard objectives remove MBB_SheetTmp2
scoreboard objectives remove MBB_SheetTmp3
scoreboard objectives remove MBB_SheetTmp4
### Bingo
scoreboard objectives remove MBB_NumBingo
scoreboard objectives remove MBB_ScoreWinner
scoreboard objectives remove MBB_BingoRow0
scoreboard objectives remove MBB_BingoRow1
scoreboard objectives remove MBB_BingoRow2
scoreboard objectives remove MBB_BingoRow3
scoreboard objectives remove MBB_BingoRow4
scoreboard objectives remove MBB_BingoCol0
scoreboard objectives remove MBB_BingoCol1
scoreboard objectives remove MBB_BingoCol2
scoreboard objectives remove MBB_BingoCol3
scoreboard objectives remove MBB_BingoCol4
scoreboard objectives remove MBB_Diagonal
scoreboard objectives remove MBB_Diagonal
scoreboard objectives remove MBB_AntiDiagonal

## Reset players
scoreboard players reset #mbb
scoreboard players reset @a