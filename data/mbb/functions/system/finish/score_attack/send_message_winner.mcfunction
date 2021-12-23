#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Send messages
tellraw @a[predicate=mbb:system/common/gamerule/individual_match] ["",{"text":"    ","color":"white"},{"selector":"@s","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_a,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamA","color":"red","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_b,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamB","color":"blue","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_c,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamC","color":"yellow","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_d,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamD","color":"green","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_e,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamE","color":"light_purple","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_f,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamF","color":"dark_red","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_g,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamG","color":"dark_blue","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_h,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamH","color":"gold","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_i,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamI","color":"dark_green","bold":true}]
execute as @s[predicate=mbb:system/common/team_leader/team_j,predicate=mbb:system/common/gamerule/team_match] run tellraw @a ["",{"text":"    ","color":"white"},{"text":"TeamJ","color":"dark_purple","bold":true}]

## Send score
tellraw @a ["",{"text":"  Score","color":"white","bold":false}]
tellraw @a[predicate=mbb:system/common/gamerule/individual_match] ["",{"text":"    ","color":"white","bold":false},{"score":{"name":"@s","objective":"MBB_NumBingo"},"color":"red","bold":true},{"text":" BINGO","color":"white","bold":false}]
tellraw @a[predicate=mbb:system/common/gamerule/team_match] ["",{"text":"    ","color":"white","bold":false},{"score":{"name":"@s[tag=MBB_TeamLeader]","objective":"MBB_NumBingo"},"color":"red","bold":true},{"text":" BINGO","color":"white","bold":false}]

## Set scoreboards
scoreboard players set #mbb MBB_ScoreWinner 1