#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest08
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet02] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet02
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest08] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest08
item replace entity @s[scores={MBB_Sheet02=1}] enderchest.8 from entity @s enderchest.2 mbb:system/ongame/detect_ender_chest/set_enchant