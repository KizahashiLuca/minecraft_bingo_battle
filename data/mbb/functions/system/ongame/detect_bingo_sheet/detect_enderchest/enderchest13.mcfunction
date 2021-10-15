#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest13
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest13] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest13
execute at @e[predicate=mbb:system/common/world_spawn] run item replace entity @s enderchest.13 from block ~ 0 ~ container.13