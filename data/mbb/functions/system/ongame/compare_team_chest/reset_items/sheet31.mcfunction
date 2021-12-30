#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Reset items
execute at @e[predicate=mbb:system/common/room_chest/chest_a] run data modify entity @s Item set from block ~-1 ~ ~ Items[{Slot:3b}]

data modify block ~-1 ~ ~ Items[{Slot:3b}].id set from entity @s Item.id
data modify block ~-1 ~ ~ Items[{Slot:3b}].tag set from entity @s Item.tag
data remove block ~-1 ~ ~ Items[{Slot:3b}].tag.Tags
data modify block ~-1 ~ ~ Items[{Slot:3b}].tag.Tags set value ["MBB_SheetItem"]
item modify block ~-1 ~ ~ container.3 mbb:system/ongame/detect_ender_chest/set_enchant

## Kill item
kill @s