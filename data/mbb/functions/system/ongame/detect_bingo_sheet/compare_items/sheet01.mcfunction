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

## Set item data
data modify entity @s Item.id set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:1b}].id
data modify entity @s Item.tag set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:1b}].tag
data modify entity @s PickupDelay set value 10s
data remove entity @s Item.tag.Tags
data remove entity @s Item.tag.HideFlags

## Compare item data
execute store success score @p[tag=MBB_CompareSheet] MBB_SheetTmp1 run data modify entity @s Item.id set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:7b}].id
execute store success score @p[tag=MBB_CompareSheet] MBB_SheetTmp2 run data modify entity @s Item.tag set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:7b}].tag
execute store result score @p[tag=MBB_CompareSheet] MBB_SheetTmp3 run data get entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:7b}].Count
scoreboard players remove @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp1=0,MBB_SheetTmp2=0}] MBB_SheetTmp3 1
scoreboard players set @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp1=0,MBB_SheetTmp2=0}] MBB_Sheet01 1

## Copy item
execute if entity @p[tag=MBB_CompareSheet,scores={MBB_Sheet01=0}] run data modify entity @s Item.Count set from entity @p[tag=MBB_CompareSheet] EnderItems[{Slot:7b}].Count
execute as @p[tag=MBB_CompareSheet,scores={MBB_Sheet01=0}] run item replace entity @p[tag=MBB_CompareSheet] enderchest.7 with minecraft:air

execute if entity @p[tag=MBB_CompareSheet,scores={MBB_Sheet01=1,MBB_SheetTmp3=1..}] store result entity @s Item.Count int 1.0 run scoreboard players get @p[tag=MBB_CompareSheet] MBB_SheetTmp3
execute as @p[tag=MBB_CompareSheet,scores={MBB_Sheet01=1}] run item replace entity @s enderchest.7 from entity @s enderchest.1 mbb:system/ongame/detect_ender_chest/set_enchant

## Kill item
execute if entity @p[tag=MBB_CompareSheet,scores={MBB_SheetTmp3=0}] run kill @s