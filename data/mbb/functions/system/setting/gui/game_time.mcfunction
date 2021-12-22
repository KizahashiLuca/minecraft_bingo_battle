#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change game time
scoreboard players add #mbb MBB_GameTime 10
execute if score #mbb MBB_GameTime matches 70.. run scoreboard players set #mbb MBB_GameTime 10

## Change to root
function mbb:system/setting/gui/change_to
