#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare bingo sheet
### Sheet00
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet00] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet00
### Sheet01
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet01] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet01
### Sheet02
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet02] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet02
### Sheet10
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet10] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet10
### Sheet11
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet11] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet11
### Sheet12
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet12] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet12
### Sheet20
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet20] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet20
### Sheet21
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet21] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet21
### Sheet22
execute as @a[predicate=mbb:system/ongame/compare_sheet/sheet22] at @s run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet22

## Detect bingo
### Row 0
execute as @a[predicate=mbb:system/ongame/detect_bingo/row0] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row0
### Row 1
execute as @a[predicate=mbb:system/ongame/detect_bingo/row1] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row1
### Row 2
execute as @a[predicate=mbb:system/ongame/detect_bingo/row2] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/row2
### Column 0
execute as @a[predicate=mbb:system/ongame/detect_bingo/col0] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col0
### Column 1
execute as @a[predicate=mbb:system/ongame/detect_bingo/col1] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col1
### Column 2
execute as @a[predicate=mbb:system/ongame/detect_bingo/col2] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/col2
### Diagonal
execute as @a[predicate=mbb:system/ongame/detect_bingo/diagonal] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/diagonal
### Anti-Diagonal
execute as @a[predicate=mbb:system/ongame/detect_bingo/anti_diagonal] at @s run function mbb:system/ongame/detect_bingo_sheet/detect_bingo/anti_diagonal