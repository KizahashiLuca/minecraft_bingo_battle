#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Replace item
data modify entity @s Item set from block ~-1 ~ ~ Items[{Slot:15b}]
data modify entity @s PickupDelay set value 10s
execute unless data entity @s Items[{Slot:15b}].tag run data remove entity @s Item.tag
execute unless data block ~-1 ~ ~ Items[{Slot:15b}] run kill @s