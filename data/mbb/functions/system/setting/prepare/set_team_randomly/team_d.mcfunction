#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set team into MBB_TeamD
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamD @s
execute unless entity @p[predicate=mbb:system/common/team_leader/team_d] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamD","color":"green","bold":true}]