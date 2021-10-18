#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect bingo
### Row 0
execute as @s[predicate=mbb:system/ongame/detect_bingo/row0] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row0
### Row 1
execute as @s[predicate=mbb:system/ongame/detect_bingo/row1] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row1
### Row 2
execute as @s[predicate=mbb:system/ongame/detect_bingo/row2] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row2
### Column 0
execute as @s[predicate=mbb:system/ongame/detect_bingo/col0] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col0
### Column 1
execute as @s[predicate=mbb:system/ongame/detect_bingo/col1] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col1
### Column 2
execute as @s[predicate=mbb:system/ongame/detect_bingo/col2] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col2
### Diagonal
execute as @s[predicate=mbb:system/ongame/detect_bingo/diagonal] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/diagonal
### Anti-Diagonal
execute as @s[predicate=mbb:system/ongame/detect_bingo/anti_diagonal] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/anti_diagonal