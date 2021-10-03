#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change daylight cycle
scoreboard players add @p[tag=MBB_Host] MBB_DayligtCycle 1
scoreboard players set @p[tag=MBB_Host,scores={MBB_DayligtCycle=2..}] MBB_DayligtCycle 0

## Change to root
function mbb:system/setting/gui/change_to
