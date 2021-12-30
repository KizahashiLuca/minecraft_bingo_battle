#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Reset scoreboards
scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp1 1
scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp2 1
scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp3 0
scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp4 0

## Set item data
execute at @e[predicate=mbb:system/common/world_spawn] positioned ~-1 -62 ~13 run data modify entity @s Item.id set from block ~-1 ~ ~ Items[{Slot:2b}].id
execute at @e[predicate=mbb:system/common/world_spawn] positioned ~-1 -62 ~13 run data modify entity @s Item.tag set from block ~-1 ~ ~ Items[{Slot:2b}].tag
data modify entity @s PickupDelay set value 10s
data remove entity @s Item.tag.Tags
data remove entity @s Item.tag.HideFlags

## Compare item data
### id
execute as @s[predicate=mbb:system/ongame/compare_team_chest/compare_items/music_disc] if predicate mbb:system/ongame/compare_team_chest/music_disc/sheet30 run scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp1 0
execute as @s[predicate=!mbb:system/ongame/compare_team_chest/compare_items/music_disc] store success score @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp1 run data modify entity @s Item.id set from block ~-1 ~ ~ Items[{Slot:2b}].id
### tag
execute store success score @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp2 if data block ~-1 ~ ~ Items[{Slot:2b}].tag run data modify entity @s Item.tag set from block ~-1 ~ ~ Items[{Slot:2b}].tag
execute unless data block ~-1 ~ ~ Items[{Slot:2b}].tag run scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp2 0
execute unless data block ~-1 ~ ~ Items[{Slot:2b}].tag run data remove entity @s Item.tag
execute if predicate mbb:system/ongame/compare_team_chest/tagged_items/sheet30 unless data block ~-1 ~ ~ Items[{Slot:2b,tag:{Potion:"minecraft:water"}}] run scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp2 0
### item count
execute store result score @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp3 run data get block ~-1 ~ ~ Items[{Slot:2b}].Count
### Compare id & tag
execute as @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,scores={MBB_SheetTmp1=0,MBB_SheetTmp2=0}] run function mbb:system/ongame/compare_team_chest/set_sheet_true/main
scoreboard players set @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,scores={MBB_SheetTmp4=1..},limit=1] MBB_Sheet30 1
scoreboard players set @a[predicate=mbb:system/common/team_leader/main,scores={MBB_SheetTmp4=1..}] MBB_Sheet30 1

## Copy item
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/not_same] run data modify entity @s Item.Count set from block ~-1 ~ ~ Items[{Slot:2b}].Count
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/not_same] run item replace block ~-1 ~ ~ container.2 with minecraft:air

execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/same,scores={MBB_SheetTmp3=1..}] store result entity @s Item.Count int 1.0 run scoreboard players get @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,limit=1] MBB_SheetTmp3
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/same] if predicate mbb:system/ongame/compare_team_chest/music_disc/sheet30 run data modify block ~-1 ~ ~ Items[{Slot:2b}].id set from entity @s Item.id
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/same] run data modify block ~-1 ~ ~ Items[{Slot:2b}].Count set value 1
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/same] run data modify block ~-1 ~ ~ Items[{Slot:2b}].tag.Tags set value ["MBB_SheetItem"]
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/same] run data modify block ~-1 ~ ~ Items[{Slot:2b}].tag.HideFlags set value 63b
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/same] run item modify block ~-1 ~ ~ container.2 mbb:system/ongame/detect_ender_chest/set_enchant

## Kill item
execute if entity @e[predicate=mbb:system/ongame/compare_team_chest/compare_items/main,scores={MBB_SheetTmp3=0}] run kill @s