#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change game rule
scoreboard players add #mbb MBB_GameRule 1
execute if score #mbb MBB_GameRule matches 2.. run scoreboard players set #mbb MBB_GameRule 0

## Change to root
function mbb:system/setting/gui/change_to
