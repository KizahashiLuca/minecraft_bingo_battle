#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest06
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet00] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet00
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest06] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest06
item replace entity @s[scores={MBB_Sheet00=1}] enderchest.6 from entity @s enderchest.0 mbb:system/ongame/detect_ender_chest/set_enchant