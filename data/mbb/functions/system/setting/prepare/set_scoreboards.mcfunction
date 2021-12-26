#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Reset scoreboards
scoreboard players reset @a
### Death
scoreboard players set @a[tag=MBB_Player] MBB_Death 0
### Sheet
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet00 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet01 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet02 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet03 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet04 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet10 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet11 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet12 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet13 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet14 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet20 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet21 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet22 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet23 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet24 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet30 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet31 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet32 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet33 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet34 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet40 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet41 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet42 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet43 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Sheet44 0
### Bingo
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_NumBingo 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_ScoreWinner 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoRow0 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoRow1 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoRow2 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoRow3 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoRow4 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoCol0 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoCol1 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoCol2 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoCol3 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_BingoCol4 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_Diagonal 0
scoreboard players set @a[predicate=mbb:system/common/team_leader/main] MBB_AntiDiagonal 0
### Sheet
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet00 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet01 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet02 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet03 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet04 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet10 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet11 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet12 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet13 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet14 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet20 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet21 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet22 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet23 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet24 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet30 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet31 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet32 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet33 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet34 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet40 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet41 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet42 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet43 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Sheet44 0
### Bingo
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_NumBingo 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_ScoreWinner 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoRow0 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoRow1 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoRow2 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoRow3 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoRow4 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoCol0 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoCol1 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoCol2 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoCol3 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_BingoCol4 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_Diagonal 0
scoreboard players set @e[predicate=mbb:system/common/team_chest/main] MBB_AntiDiagonal 0