#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Reset scoreboards
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp1 1
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp2 1
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp3 0

## Set item data
data modify entity @s Item.id set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:11b}].id
data modify entity @s Item.tag set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:11b}].tag
data modify entity @s PickupDelay set value 10s
data remove entity @s Item.tag.Tags
data remove entity @s Item.tag.HideFlags

## Compare item data
### id
execute store success score @p[tag=MBB_CompareSheet] MBB_SheetTmp1 run data modify entity @s Item.id set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].id
### tag
execute store success score @p[tag=MBB_CompareSheet] MBB_SheetTmp2 if data entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].tag run data modify entity @s Item.tag set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].tag
execute unless data entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].tag run scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp2 0
execute unless data entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].tag run data remove entity @s Item.tag
scoreboard players set @p[predicate=mbb:system/ongame/compare_items/sheet12] MBB_SheetTmp2 0
### item count
execute store result score @p[tag=MBB_CompareSheet] MBB_SheetTmp3 run data get entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].Count
### Compare id & tag
execute as @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp1=0,MBB_SheetTmp2=0}] run scoreboard players remove @s MBB_SheetTmp3 1
execute if score #mbb MBB_GameGroup matches 1 run scoreboard players set @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp1=0,MBB_SheetTmp2=0}] MBB_Sheet12 1
execute if score #mbb MBB_GameGroup matches 2 run function mbb:system/ongame/detect_bingo_sheet/set_sheet/sheet12

## Copy item
execute if entity @p[tag=MBB_CompareSheet,scores={MBB_Sheet12=0}] run data modify entity @s Item.Count set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:17b}].Count
execute as @p[tag=MBB_CompareSheet,scores={MBB_Sheet12=0}] run item replace entity @p[tag=MBB_CompareSheet] enderchest.17 with minecraft:air

execute if entity @p[tag=MBB_CompareSheet,scores={MBB_Sheet12=1,MBB_SheetTmp3=1..}] store result entity @s Item.Count int 1.0 run scoreboard players get @p[tag=MBB_CompareSheet] MBB_SheetTmp3
execute as @p[tag=MBB_CompareSheet,scores={MBB_Sheet12=1}] run item replace entity @s enderchest.17 from entity @s enderchest.11 mbb:system/ongame/detect_ender_chest/set_enchant

## Kill item
execute if entity @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp3=0}] run kill @s