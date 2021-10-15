#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest24
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet20] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet20
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest24] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest24
item replace entity @s[scores={MBB_Sheet20=1}] enderchest.24 from entity @s enderchest.18 mbb:system/ongame/detect_ender_chest/set_enchant