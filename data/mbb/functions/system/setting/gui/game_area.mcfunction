#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change game area
scoreboard players add @p[tag=MBB_Host] MBB_GameArea 500
scoreboard players set @p[tag=MBB_Host,scores={MBB_GameArea=2500..}] MBB_GameArea 0

## Change to root
function mbb:system/setting/gui/change_to
