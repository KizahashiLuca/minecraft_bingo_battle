#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Compare ender chest
### Enderchest10
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_DetectExchangeItems"]}},PickupDelay:10s}
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",Count:1b,tag:{Tags:["MBB_DetectExchangeItems"]}}},sort=nearest,limit=1] Item set from entity @s EnderItems[{Slot:10b}]
item replace entity @s enderchest.10 with minecraft:air