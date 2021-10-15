#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest19
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest19] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest19
execute at @e[predicate=mbb:system/common/world_spawn] run item replace entity @s enderchest.19 from block ~ 0 ~ container.19