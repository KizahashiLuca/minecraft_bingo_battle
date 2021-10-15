#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest16
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet11] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet11
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest16] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest16
item replace entity @s[scores={MBB_Sheet11=1}] enderchest.16 from entity @s enderchest.10 mbb:system/ongame/detect_ender_chest/set_enchant