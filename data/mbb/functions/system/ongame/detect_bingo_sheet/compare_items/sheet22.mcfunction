#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Reset scoreboards
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp1 1
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp2 1
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp3 0
scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp4 0

## Set item data
data modify entity @s Item.id set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:20b}].id
data modify entity @s Item.tag set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:20b}].tag
data modify entity @s PickupDelay set value 10s
data remove entity @s Item.tag.Tags
data remove entity @s Item.tag.HideFlags

## Compare item data
### id
execute store success score @p[tag=MBB_CompareSheet] MBB_SheetTmp1 run data modify entity @s Item.id set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].id
### tag
execute store success score @p[tag=MBB_CompareSheet] MBB_SheetTmp2 if data entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].tag run data modify entity @s Item.tag set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].tag
execute unless data entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].tag run scoreboard players set @p[tag=MBB_CompareSheet] MBB_SheetTmp2 0
execute unless data entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].tag run data remove entity @s Item.tag
### item count
execute store result score @p[tag=MBB_CompareSheet] MBB_SheetTmp3 run data get entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].Count
### Compare id & tag
execute as @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp1=0,MBB_SheetTmp2=0}] run function mbb:system/ongame/detect_bingo_sheet/compare_items/set_team
scoreboard players operation @p[tag=MBB_CompareSheet] MBB_Sheet22 = @p[tag=MBB_CompareSheet] MBB_SheetTmp4

## Copy item
execute if entity @p[tag=MBB_CompareSheet,scores={MBB_Sheet22=0}] run data modify entity @s Item.Count set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:26b}].Count
execute as @p[tag=MBB_CompareSheet,scores={MBB_Sheet22=0}] run item replace entity @p[tag=MBB_CompareSheet] enderchest.26 with minecraft:air

execute if entity @p[tag=MBB_CompareSheet,scores={MBB_Sheet22=1,MBB_SheetTmp3=1..}] store result entity @s Item.Count int 1.0 run scoreboard players get @p[tag=MBB_CompareSheet] MBB_SheetTmp3
execute as @p[tag=MBB_CompareSheet,scores={MBB_Sheet22=1}] run item replace entity @s enderchest.26 from entity @s enderchest.20 mbb:system/ongame/detect_ender_chest/set_enchant

## Kill item
execute if entity @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp3=0}] run kill @s