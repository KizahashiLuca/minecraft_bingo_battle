#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set team into MBB_TeamC
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamC @s
execute unless entity @p[team=MBB_TeamC,tag=MBB_TeamLeader] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamC","color":"yellow","bold":true}]