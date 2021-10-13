#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Reset scoreboard
scoreboard players set #mbb MBB_NumPlayer 0
execute as @a[tag=MBB_Player] run scoreboard players add #mbb MBB_NumPlayer 1