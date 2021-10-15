#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest15
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet10] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet10
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest15] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest15
item replace entity @s[scores={MBB_Sheet10=1}] enderchest.15 from entity @s enderchest.9 mbb:system/ongame/detect_ender_chest/set_enchant