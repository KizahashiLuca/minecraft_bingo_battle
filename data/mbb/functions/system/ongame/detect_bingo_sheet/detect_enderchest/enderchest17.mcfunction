#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### enderchest17
execute as @s[predicate=mbb:system/ongame/compare_sheet/sheet12] run function mbb:system/ongame/detect_bingo_sheet/compare_sheet/sheet12
execute as @s[predicate=mbb:system/ongame/detect_not_have_tag/enderchest17] run function mbb:system/ongame/detect_bingo_sheet/detect_exchange_sheet/enderchest17
item replace entity @s[scores={MBB_Sheet12=1}] enderchest.17 from entity @s enderchest.11 mbb:system/ongame/detect_ender_chest/set_enchant