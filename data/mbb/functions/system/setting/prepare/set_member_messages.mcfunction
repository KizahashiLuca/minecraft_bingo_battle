#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"Member","color":"white","bold":true}]
execute if score #mbb MBB_NumTeam matches 1.. run tellraw @a ["",{"text":"  TeamA","color":"red","bold":true}]
execute if score #mbb MBB_NumTeam matches 1.. as @a[tag=MBB_Player,team=MBB_TeamA,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 2.. run tellraw @a ["",{"text":"  TeamB","color":"blue","bold":true}]
execute if score #mbb MBB_NumTeam matches 2.. as @a[tag=MBB_Player,team=MBB_TeamB,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 3.. run tellraw @a ["",{"text":"  TeamC","color":"yellow","bold":true}]
execute if score #mbb MBB_NumTeam matches 3.. as @a[tag=MBB_Player,team=MBB_TeamC,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 4.. run tellraw @a ["",{"text":"  TeamD","color":"green","bold":true}]
execute if score #mbb MBB_NumTeam matches 4.. as @a[tag=MBB_Player,team=MBB_TeamD,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 5.. run tellraw @a ["",{"text":"  TeamE","color":"light_purple","bold":true}]
execute if score #mbb MBB_NumTeam matches 5.. as @a[tag=MBB_Player,team=MBB_TeamE,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 6.. run tellraw @a ["",{"text":"  TeamF","color":"dark_red","bold":true}]
execute if score #mbb MBB_NumTeam matches 6.. as @a[tag=MBB_Player,team=MBB_TeamF,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 7.. run tellraw @a ["",{"text":"  TeamG","color":"dark_blue","bold":true}]
execute if score #mbb MBB_NumTeam matches 7.. as @a[tag=MBB_Player,team=MBB_TeamG,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 8.. run tellraw @a ["",{"text":"  TeamH","color":"gold","bold":true}]
execute if score #mbb MBB_NumTeam matches 8.. as @a[tag=MBB_Player,team=MBB_TeamH,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 9.. run tellraw @a ["",{"text":"  TeamI","color":"dark_green","bold":true}]
execute if score #mbb MBB_NumTeam matches 9.. as @a[tag=MBB_Player,team=MBB_TeamI,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual
execute if score #mbb MBB_NumTeam matches 10.. run tellraw @a ["",{"text":"  TeamJ","color":"dark_purple","bold":true}]
execute if score #mbb MBB_NumTeam matches 10.. as @a[tag=MBB_Player,team=MBB_TeamJ,tag=!MBB_SetMemberMessage] run function mbb:system/setting/prepare/set_member_individual

## Remove a tag
tag @a remove MBB_SetMemberMessage