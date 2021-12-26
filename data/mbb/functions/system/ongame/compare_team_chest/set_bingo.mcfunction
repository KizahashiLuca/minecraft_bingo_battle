#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect bingo
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/row0] MBB_BingoRow0 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/row1] MBB_BingoRow1 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/row2] MBB_BingoRow2 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/row3] MBB_BingoRow3 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/row4] MBB_BingoRow4 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/col0] MBB_BingoCol0 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/col1] MBB_BingoCol1 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/col2] MBB_BingoCol2 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/col3] MBB_BingoCol3 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/col4] MBB_BingoCol4 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/diagonal] MBB_Diagonal 1
scoreboard players set @a[predicate=mbb:system/ongame/compare_team_chest/detect_bingo/anti_diagonal] MBB_AntiDiagonal 1