#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Send messages
execute if predicate mbb:system/common/gamerule/individual_match run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamA,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamA","color":"red","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamB,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamB","color":"blue","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamC,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamC","color":"yellow","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamD,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamD","color":"green","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamE,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamE","color":"light_purple","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamF,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamF","color":"dark_red","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamG,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamG","color":"dark_blue","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamH,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamH","color":"gold","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamI,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamI","color":"dark_green","bold":true}]
execute if predicate mbb:system/common/gamerule/team_match as @s[team=MBB_TeamJ,tag=MBB_TeamLeader] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamJ","color":"dark_purple","bold":true}]

## Send score
tellraw @a ["",{"text":"  Score","color":"white","bold":false}]
execute if predicate mbb:system/common/gamerule/individual_match run tellraw @a ["",{"text":"    ","color":"white","bold":false},{"score":{"name":"@s","objective":"MBB_NumBingo"},"color":"red","bold":true},{"text":" BINGO","color":"white","bold":false}]
execute if predicate mbb:system/common/gamerule/team_match run tellraw @a ["",{"text":"    ","color":"white","bold":false},{"score":{"name":"@s[tag=MBB_TeamLeader]","objective":"MBB_NumBingo"},"color":"red","bold":true},{"text":" BINGO","color":"white","bold":false}]

## Set scoreboards
scoreboard players set #mbb MBB_ScoreWinner 1