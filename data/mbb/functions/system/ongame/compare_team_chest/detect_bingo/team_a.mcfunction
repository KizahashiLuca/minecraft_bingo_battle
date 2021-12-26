#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect team a
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/row0 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row0
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/row1 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row1
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/row2 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row2
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/row3 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row3
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/row4 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row4
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/col0 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col0
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/col1 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col1
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/col2 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col2
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/col3 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col3
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/col4 run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col4
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/diagonal run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/diagonal
execute if predicate mbb:system/ongame/detect_team_chest/detect_bingo/anti_diagonal run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/anti_diagonal