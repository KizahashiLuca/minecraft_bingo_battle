#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set team into MBB_TeamF
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamF @s
execute unless entity @p[predicate=mbb:system/common/team_leader/team_f] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamF","color":"dark_red","bold":true}]