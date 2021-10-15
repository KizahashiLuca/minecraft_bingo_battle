#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest26
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet22] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet22
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest26] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest26
item replace entity @s[scores={MBB_Sheet22=1}] enderchest.26 from entity @s enderchest.20 mbb:system/ongame/detect_ender_chest/set_enchant