#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set team randomly
execute if score #mbb MBB_NumTeam matches 1.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_a
execute if score #mbb MBB_NumTeam matches 2.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_b
execute if score #mbb MBB_NumTeam matches 3.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_c
execute if score #mbb MBB_NumTeam matches 4.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_d
execute if score #mbb MBB_NumTeam matches 5.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_e
execute if score #mbb MBB_NumTeam matches 6.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_f
execute if score #mbb MBB_NumTeam matches 7.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_g
execute if score #mbb MBB_NumTeam matches 8.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_h
execute if score #mbb MBB_NumTeam matches 9.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_i
execute if score #mbb MBB_NumTeam matches 10.. as @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam,sort=random] run function mbb:system/setting/prepare/set_team_randomly/team_j

## Loop
execute if entity @p[tag=MBB_Player,tag=MBB_PlayerNotSetTeam] run function mbb:system/setting/prepare/set_team_randomly/main