#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change game mode
scoreboard players add #mbb MBB_GameMode 1
execute if score #mbb MBB_GameMode matches 2.. run scoreboard players set #mbb MBB_GameMode 0

## Change to root
function mbb:system/setting/gui/change_to
