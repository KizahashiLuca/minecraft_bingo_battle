#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### Enderchest04
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_DetectExchangeItems"]}},PickupDelay:10s}
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_DetectExchangeItems"]}}},sort=nearest,limit=1] Item set from entity @s EnderItems[{Slot:4b}]
item replace entity @s enderchest.4 with minecraft:air