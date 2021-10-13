#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set team randomly
execute if score #mbb MBB_NumTeam matches 1.. run function mbb:system/setting/prepare/set_team_settings/team_a
execute if score #mbb MBB_NumTeam matches 2.. run function mbb:system/setting/prepare/set_team_settings/team_b
execute if score #mbb MBB_NumTeam matches 3.. run function mbb:system/setting/prepare/set_team_settings/team_c
execute if score #mbb MBB_NumTeam matches 4.. run function mbb:system/setting/prepare/set_team_settings/team_d
execute if score #mbb MBB_NumTeam matches 5.. run function mbb:system/setting/prepare/set_team_settings/team_e
execute if score #mbb MBB_NumTeam matches 6.. run function mbb:system/setting/prepare/set_team_settings/team_f
execute if score #mbb MBB_NumTeam matches 7.. run function mbb:system/setting/prepare/set_team_settings/team_g
execute if score #mbb MBB_NumTeam matches 8.. run function mbb:system/setting/prepare/set_team_settings/team_h
execute if score #mbb MBB_NumTeam matches 9.. run function mbb:system/setting/prepare/set_team_settings/team_i
execute if score #mbb MBB_NumTeam matches 10.. run function mbb:system/setting/prepare/set_team_settings/team_j