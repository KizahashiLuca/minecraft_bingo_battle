#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change team number
scoreboard players add #mbb MBB_NumTeam 1
execute if score #mbb MBB_NumTeam > #mbb MBB_NumPlayer run scoreboard players set #mbb MBB_NumTeam 1
execute if score #mbb MBB_NumTeam matches 11.. run scoreboard players set #mbb MBB_NumTeam 1

## Change to root
function mbb:system/setting/gui/change_to
