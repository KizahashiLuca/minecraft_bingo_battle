#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest21
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest21] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest21
execute at @e[predicate=mbb:system/common/world_spawn] run item replace entity @s enderchest.21 from block ~ 0 ~ container.21