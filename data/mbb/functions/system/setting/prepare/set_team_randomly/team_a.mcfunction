#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set team into MBB_TeamA
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamA @s
execute unless entity @p[team=MBB_TeamA,tag=MBB_TeamLeader] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamA","color":"red","bold":true}]