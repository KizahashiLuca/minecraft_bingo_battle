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
### Enderchest
execute as @a[tag=MBB_Player] store result score @s MBB_UUID0 run data get entity @s UUID[0]
execute as @a[tag=MBB_Player] store result score @s MBB_UUID1 run data get entity @s UUID[1]
execute as @a[tag=MBB_Player] store result score @s MBB_UUID2 run data get entity @s UUID[2]
execute as @a[tag=MBB_Player] store result score @s MBB_UUID3 run data get entity @s UUID[3]
scoreboard players set @a[tag=MBB_Player] MBB_SpawnChest 0
### Sheet
scoreboard players set @a[tag=MBB_Player] MBB_Sheet00 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet01 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet02 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet10 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet11 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet12 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet20 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet21 0
scoreboard players set @a[tag=MBB_Player] MBB_Sheet22 0
### Bingo
scoreboard players set @a[tag=MBB_Player] MBB_NumBingo 0
scoreboard players set @a[tag=MBB_Player] MBB_ScoreWinner 0
scoreboard players set @a[tag=MBB_Player] MBB_BingoRow0 0
scoreboard players set @a[tag=MBB_Player] MBB_BingoRow1 0
scoreboard players set @a[tag=MBB_Player] MBB_BingoRow2 0
scoreboard players set @a[tag=MBB_Player] MBB_BingoCol0 0
scoreboard players set @a[tag=MBB_Player] MBB_BingoCol1 0
scoreboard players set @a[tag=MBB_Player] MBB_BingoCol2 0
scoreboard players set @a[tag=MBB_Player] MBB_Diagonal 0
scoreboard players set @a[tag=MBB_Player] MBB_AntiDiagonal 0