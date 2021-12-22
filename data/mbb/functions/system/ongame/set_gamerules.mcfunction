#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set difficulty
execute if score #mbb MBB_Difficulty matches 1 run difficulty easy
execute if score #mbb MBB_Difficulty matches 2 run difficulty normal
execute if score #mbb MBB_Difficulty matches 3 run difficulty hard
execute if score #mbb MBB_Difficulty matches 4 run difficulty hard

## Set gamerules
gamerule spectatorsGenerateChunks true
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
execute if score #mbb MBB_GameGroup matches 1 run gamerule showDeathMessages false
execute if score #mbb MBB_GameGroup matches 2 run gamerule showDeathMessages true
gamerule reducedDebugInfo false
execute if score #mbb MBB_DayligtCycle matches 0 run gamerule doDaylightCycle false
execute if score #mbb MBB_DayligtCycle matches 1 run gamerule doDaylightCycle true
execute if score #mbb MBB_WeatherCycle matches 0 run gamerule doWeatherCycle false
execute if score #mbb MBB_WeatherCycle matches 1 run gamerule doWeatherCycle true
gamerule doMobSpawning true
execute if score #mbb MBB_KeepInve matches 0 run gamerule keepInventory false
execute if score #mbb MBB_KeepInve matches 1 run gamerule keepInventory true
gamerule doFireTick true
gamerule fallDamage true
gamerule fireDamage true