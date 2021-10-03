#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change game time
scoreboard players add @p[tag=MBB_Host] MBB_GameTime 10
scoreboard players set @p[tag=MBB_Host,scores={MBB_GameTime=70..}] MBB_GameTime 10

## Change to root
function mbb:system/setting/gui/change_to
