#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Calculate number of bingo
scoreboard players set @s MBB_NumBingo 0
scoreboard players operation @s MBB_NumBingo += @s MBB_BingoRow0
scoreboard players operation @s MBB_NumBingo += @s MBB_BingoRow1
scoreboard players operation @s MBB_NumBingo += @s MBB_BingoRow2
scoreboard players operation @s MBB_NumBingo += @s MBB_BingoCol0
scoreboard players operation @s MBB_NumBingo += @s MBB_BingoCol1
scoreboard players operation @s MBB_NumBingo += @s MBB_BingoCol2
scoreboard players operation @s MBB_NumBingo += @s MBB_Diagonal
scoreboard players operation @s MBB_NumBingo += @s MBB_AntiDiagonal