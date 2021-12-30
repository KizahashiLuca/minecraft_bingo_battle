#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set chest - Host
function mbb:system/setting/prepare/set_room_chest/host
data modify block ~2 ~ ~ Items set from block ~-1 ~ ~ Items
data modify block ~3 ~ ~ Items set from block ~ ~ ~ Items

## Set item frame
function mbb:system/setting/prepare/set_room_chest/item_frame

## Kill item
kill @e[type=minecraft:item]