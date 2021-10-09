#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set scoreboard
scoreboard players remove @s MBB_SheetTmp3 1

## Set team 
scoreboard players set @s MBB_SheetTmp4 1
execute as @s[team=MBB_TeamA] run scoreboard players set @a[team=MBB_TeamA] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamB] run scoreboard players set @a[team=MBB_TeamB] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamC] run scoreboard players set @a[team=MBB_TeamC] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamD] run scoreboard players set @a[team=MBB_TeamD] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamE] run scoreboard players set @a[team=MBB_TeamE] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamF] run scoreboard players set @a[team=MBB_TeamF] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamG] run scoreboard players set @a[team=MBB_TeamG] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamH] run scoreboard players set @a[team=MBB_TeamH] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamI] run scoreboard players set @a[team=MBB_TeamI] MBB_SheetTmp4 1
execute as @s[team=MBB_TeamJ] run scoreboard players set @a[team=MBB_TeamJ] MBB_SheetTmp4 1