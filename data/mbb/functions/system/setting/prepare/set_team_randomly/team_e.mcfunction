#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set team into MBB_TeamE
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamE @s
execute unless entity @p[predicate=mbb:system/common/team_leader/team_e] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamE","color":"light_purple","bold":true}]