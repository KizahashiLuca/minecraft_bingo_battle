#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set difficulty
execute if predicate mbb:system/common/difficulty/easy run difficulty easy
execute if predicate mbb:system/common/difficulty/normal run difficulty normal
execute if predicate mbb:system/common/difficulty/hard run difficulty hard
execute if predicate mbb:system/common/difficulty/hardcore run difficulty hard

## Set gamerules
gamerule spectatorsGenerateChunks true
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
execute if predicate mbb:system/common/gamerule/individual_match run gamerule showDeathMessages false
execute if predicate mbb:system/common/gamerule/team_match run gamerule showDeathMessages true
gamerule reducedDebugInfo false
execute if predicate mbb:system/common/daylight_cycle/false run gamerule doDaylightCycle false
execute if predicate mbb:system/common/daylight_cycle/true run gamerule doDaylightCycle true
execute if predicate mbb:system/common/weather_cycle/false run gamerule doWeatherCycle false
execute if predicate mbb:system/common/weather_cycle/true run gamerule doWeatherCycle true
gamerule doMobSpawning true
execute if predicate mbb:system/common/keep_inventory/false run gamerule keepInventory false
execute if predicate mbb:system/common/keep_inventory/true run gamerule keepInventory true
gamerule doFireTick true
gamerule fallDamage true
gamerule fireDamage true