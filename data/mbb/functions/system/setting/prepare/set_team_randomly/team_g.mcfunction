#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set team into MBB_TeamG
tag @s remove MBB_PlayerNotSetTeam
team join MBB_TeamG @s
execute unless entity @p[team=MBB_TeamG,tag=MBB_TeamLeader] run tag @s add MBB_TeamLeader
tellraw @s ["",{"text":"Your team is ","color":"white","bold":true},{"text":"TeamG","color":"dark_blue","bold":true}]