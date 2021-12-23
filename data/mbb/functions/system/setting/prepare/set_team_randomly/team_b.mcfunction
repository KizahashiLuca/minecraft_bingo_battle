#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set team into MBB_TeamB
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamB @s
execute unless entity @p[predicate=mbb:system/common/team_leader/team_b] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamB","color":"blue","bold":true}]