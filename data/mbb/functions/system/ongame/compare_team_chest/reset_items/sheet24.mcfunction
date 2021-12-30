#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Reset items
execute at @e[predicate=mbb:system/common/room_chest/chest_a] run data modify entity @s Item set from block ~ ~ ~ Items[{Slot:24b}]

data modify block ~ ~ ~ Items[{Slot:24b}].id set from entity @s Item.id
data modify block ~ ~ ~ Items[{Slot:24b}].tag set from entity @s Item.tag
data remove block ~ ~ ~ Items[{Slot:24b}].tag.Tags
data modify block ~ ~ ~ Items[{Slot:24b}].tag.Tags set value ["MBB_SheetItem"]
item modify block ~ ~ ~ container.24 mbb:system/ongame/detect_ender_chest/set_enchant

## Kill item
kill @s