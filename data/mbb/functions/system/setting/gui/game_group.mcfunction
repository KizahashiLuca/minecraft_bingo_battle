#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change game group
scoreboard players add #mbb MBB_GameGroup 1
execute if score #mbb MBB_GameGroup matches 3.. run scoreboard players set #mbb MBB_GameGroup 1

## Change to root
function mbb:system/setting/gui/change_to
