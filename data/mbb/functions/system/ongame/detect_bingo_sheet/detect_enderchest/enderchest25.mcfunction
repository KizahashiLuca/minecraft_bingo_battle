#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest25
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet21] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet21
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest25] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest25
item replace entity @s[scores={MBB_Sheet21=1}] enderchest.25 from entity @s enderchest.19 mbb:system/ongame/detect_ender_chest/set_enchant