#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set team into MBB_TeamJ
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamJ @s
execute unless entity @p[team=MBB_TeamJ,tag=MBB_TeamLeader] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamJ","color":"dark_purple","bold":true}]