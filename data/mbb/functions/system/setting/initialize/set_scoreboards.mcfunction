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
scoreboard objectives add MBB_DummyTick dummy
scoreboard objectives add MBB_DummySecond dummy
scoreboard objectives add MBB_TotalSecond dummy
scoreboard objectives add MBB_5 dummy
scoreboard objectives add MBB_60 dummy
### Death
scoreboard objectives add MBB_Death minecraft.custom:minecraft.deaths
scoreboard objectives add MBB_LiveTime minecraft.custom:minecraft.time_since_death
### EnderChest
scoreboard objectives add MBB_UUID0 dummy
scoreboard objectives add MBB_UUID1 dummy
scoreboard objectives add MBB_UUID2 dummy
scoreboard objectives add MBB_UUID3 dummy
scoreboard objectives add MBB_OwnerUUID0 dummy
scoreboard objectives add MBB_OwnerUUID1 dummy
scoreboard objectives add MBB_OwnerUUID2 dummy
scoreboard objectives add MBB_OwnerUUID3 dummy
scoreboard objectives add MBB_SpawnChest minecraft.used:minecraft.carrot_on_a_stick
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
scoreboard objectives add MBB_SheetTmp1 dummy
scoreboard objectives add MBB_SheetTmp2 dummy
scoreboard objectives add MBB_SheetTmp3 dummy
### Bingo
scoreboard objectives add MBB_NumBingo dummy
scoreboard objectives add MBB_ScoreWinner dummy
scoreboard objectives add MBB_BingoRow0 dummy
scoreboard objectives add MBB_BingoRow1 dummy
scoreboard objectives add MBB_BingoRow2 dummy
scoreboard objectives add MBB_BingoCol0 dummy
scoreboard objectives add MBB_BingoCol1 dummy
scoreboard objectives add MBB_BingoCol2 dummy
scoreboard objectives add MBB_Diagonal dummy
scoreboard objectives add MBB_AntiDiagonal dummy

## Set scoreboards
### GameGroup - 1:Individual, 2:Team
scoreboard players set #mbb MBB_GameGroup 1
### WeatherCycle - 0:FALSE, 1:TRUE
scoreboard players set #mbb MBB_WeatherCycle 1
### DaylightCycle - 0:FALSE, 1:TRUE
scoreboard players set #mbb MBB_DayligtCycle 1
### KeepInventory - 0:FALSE, 1:TRUE
scoreboard players set #mbb MBB_KeepInve 0
### TeamNumber (TeamMatch only)
scoreboard players set #mbb MBB_NumTeam 1
### Gamemode - 1:ScoreAttack, 2:TimeAttack
scoreboard players set #mbb MBB_GameMode 1 
### Gamearea
scoreboard players set #mbb MBB_GameArea 0
### Gametime (ScoreAttack mode only)
scoreboard players set #mbb MBB_GameTime 60
### Difficulty - 1:easy, 2:normal, 3:hard, 4:hardcore
scoreboard players set #mbb MBB_Difficulty 2
### Position
scoreboard players set #mbb MBB_45 45
### Timer
scoreboard players set #mbb MBB_5 5
scoreboard players set #mbb MBB_60 60