#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Change team number
scoreboard players add @p[tag=MBB_Host] MBB_NumTeam 1
execute if score @p[tag=MBB_Host] MBB_NumTeam > #mbb MBB_NumPlayer run scoreboard players set @p[tag=MBB_Host] MBB_NumTeam 1
scoreboard players set @p[tag=MBB_Host,scores={MBB_NumTeam=11..}] MBB_NumTeam 1

## Change to root
function mbb:system/setting/gui/change_to
