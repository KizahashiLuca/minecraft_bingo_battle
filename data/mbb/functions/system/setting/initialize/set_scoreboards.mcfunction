#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add objectives
### Gamesystem
scoreboard objectives add MBB_NumPlayer dummy
scoreboard objectives add MBB_GamePhase dummy
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard objectives add MBB_WeatherCycle dummy
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard objectives add MBB_DayligtCycle dummy
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard objectives add MBB_KeepInve dummy
### GameRule - 0:Individual, 1:Team
scoreboard objectives add MBB_GameRule dummy
### GameMode - 0:ScoreAttack, 1:TimeAttack
scoreboard objectives add MBB_GameMode dummy
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard objectives add MBB_Difficulty dummy
### TeamNumber (TeamMatch only)
scoreboard objectives add MBB_NumTeam dummy
### Gametime (ScoreAttack mode only)
scoreboard objectives add MBB_GameTime dummy
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
scoreboard objectives add MBB_DummyTick dummy
scoreboard objectives add MBB_DummySecond dummy
scoreboard objectives add MBB_TotalSecond dummy
scoreboard objectives add MBB_5 dummy
scoreboard objectives add MBB_60 dummy
### Death
scoreboard objectives add MBB_Death minecraft.custom:minecraft.deaths
scoreboard objectives add MBB_LiveTime minecraft.custom:minecraft.time_since_death
### Teleport
scoreboard objectives add MBB_TeleportRoom minecraft.used:minecraft.carrot_on_a_stick
### Teleport source - 0:overworld, 1:nether, 2:end
scoreboard objectives add MBB_TeleportSrcD dummy
scoreboard objectives add MBB_UUID0 dummy
scoreboard objectives add MBB_UUID1 dummy
scoreboard objectives add MBB_UUID2 dummy
scoreboard objectives add MBB_UUID3 dummy
### Sheet
scoreboard objectives add MBB_Sheet00 dummy
scoreboard objectives add MBB_Sheet01 dummy
scoreboard objectives add MBB_Sheet02 dummy
scoreboard objectives add MBB_Sheet03 dummy
scoreboard objectives add MBB_Sheet04 dummy
scoreboard objectives add MBB_Sheet10 dummy
scoreboard objectives add MBB_Sheet11 dummy
scoreboard objectives add MBB_Sheet12 dummy
scoreboard objectives add MBB_Sheet13 dummy
scoreboard objectives add MBB_Sheet14 dummy
scoreboard objectives add MBB_Sheet20 dummy
scoreboard objectives add MBB_Sheet21 dummy
scoreboard objectives add MBB_Sheet22 dummy
scoreboard objectives add MBB_Sheet23 dummy
scoreboard objectives add MBB_Sheet24 dummy
scoreboard objectives add MBB_Sheet30 dummy
scoreboard objectives add MBB_Sheet31 dummy
scoreboard objectives add MBB_Sheet32 dummy
scoreboard objectives add MBB_Sheet33 dummy
scoreboard objectives add MBB_Sheet34 dummy
scoreboard objectives add MBB_Sheet40 dummy
scoreboard objectives add MBB_Sheet41 dummy
scoreboard objectives add MBB_Sheet42 dummy
scoreboard objectives add MBB_Sheet43 dummy
scoreboard objectives add MBB_Sheet44 dummy
scoreboard objectives add MBB_SheetTmp1 dummy
scoreboard objectives add MBB_SheetTmp2 dummy
scoreboard objectives add MBB_SheetTmp3 dummy
scoreboard objectives add MBB_SheetTmp4 dummy
### Bingo
scoreboard objectives add MBB_NumBingo dummy
scoreboard objectives add MBB_ScoreWinner dummy
scoreboard objectives add MBB_BingoRow0 dummy
scoreboard objectives add MBB_BingoRow1 dummy
scoreboard objectives add MBB_BingoRow2 dummy
scoreboard objectives add MBB_BingoRow3 dummy
scoreboard objectives add MBB_BingoRow4 dummy
scoreboard objectives add MBB_BingoCol0 dummy
scoreboard objectives add MBB_BingoCol1 dummy
scoreboard objectives add MBB_BingoCol2 dummy
scoreboard objectives add MBB_BingoCol3 dummy
scoreboard objectives add MBB_BingoCol4 dummy
scoreboard objectives add MBB_Diagonal dummy
scoreboard objectives add MBB_AntiDiagonal dummy

## Set scoreboards
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard players set #mbb MBB_WeatherCycle 0
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard players set #mbb MBB_DayligtCycle 0
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard players set #mbb MBB_KeepInve 0
### GameRule - 0:Individual, 1:Team
scoreboard players set #mbb MBB_GameRule 1
### GameMode - 0:ScoreAttack, 1:TimeAttack
scoreboard players set #mbb MBB_GameMode 0
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard players set #mbb MBB_Difficulty 2
### TeamNumber (TeamMatch only)
scoreboard players set #mbb MBB_NumTeam 1
### Gametime (ScoreAttack mode only)
scoreboard players set #mbb MBB_GameTime 60
### Position
scoreboard players set #mbb MBB_45 45
### Timer
scoreboard players set #mbb MBB_5 5
scoreboard players set #mbb MBB_60 60