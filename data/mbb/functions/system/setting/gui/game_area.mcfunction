#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change game area
scoreboard players add #mbb MBB_GameArea 500
execute if score #mbb MBB_GameArea matches 2500.. run scoreboard players set #mbb MBB_GameArea 0

## Change to root
function mbb:system/setting/gui/change_to
