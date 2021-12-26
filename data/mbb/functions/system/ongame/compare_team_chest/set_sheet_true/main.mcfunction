#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set sheet
scoreboard players remove @s MBB_SheetTmp3 1
scoreboard players set @s MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamA] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_a] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamB] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_b] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamC] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_c] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamD] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_d] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamE] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_e] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamF] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_f] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamG] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_g] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamH] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_h] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamI] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_i] MBB_SheetTmp4 1
execute as @s[tag=MBB_TeamJ] run scoreboard players set @p[predicate=mbb:system/common/team_leader/team_j] MBB_SheetTmp4 1