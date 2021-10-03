#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Store scoreboards
scoreboard players operation #mbb MBB_GameGroup = @p[tag=MBB_Host] MBB_GameGroup
scoreboard players operation #mbb MBB_WeatherCycle = @p[tag=MBB_Host] MBB_WeatherCycle
scoreboard players operation #mbb MBB_DayligtCycle = @p[tag=MBB_Host] MBB_DayligtCycle
scoreboard players operation #mbb MBB_KeepInve = @p[tag=MBB_Host] MBB_KeepInve
scoreboard players operation #mbb MBB_NumTeam = @p[tag=MBB_Host] MBB_NumTeam
scoreboard players operation #mbb MBB_GameMode = @p[tag=MBB_Host] MBB_GameMode
scoreboard players operation #mbb MBB_GameArea = @p[tag=MBB_Host] MBB_GameArea
scoreboard players operation #mbb MBB_GameTime = @p[tag=MBB_Host] MBB_GameTime
scoreboard players operation #mbb MBB_Difficulty = @p[tag=MBB_Host] MBB_Difficulty

## Reset scoreboards
scoreboard players reset @a