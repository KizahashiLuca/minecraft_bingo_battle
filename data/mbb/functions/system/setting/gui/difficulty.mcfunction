#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change difficulty
scoreboard players add #mbb MBB_Difficulty 1
execute if score #mbb MBB_Difficulty matches 5.. run scoreboard players set #mbb MBB_Difficulty 1

## Change to root
function mbb:system/setting/gui/change_to
