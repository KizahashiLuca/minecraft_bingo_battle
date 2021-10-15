#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest07
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet01] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet01
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest07] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest07
item replace entity @s[scores={MBB_Sheet01=1}] enderchest.7 from entity @s enderchest.1 mbb:system/ongame/detect_ender_chest/set_enchant