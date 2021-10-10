#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add a tag
tag @s add MBB_ExchangeItems

## Spawn an exchanged items 
# execute unless data entity @s EnderItems[{Slot:0b}].tag.Tags run tellraw @a ["",{"text":"unless"}]

## Set world spawn chest
item replace entity @s enderchest.0 from block ~ 0 ~ container.0
item replace entity @s enderchest.1 from block ~ 0 ~ container.1
item replace entity @s enderchest.2 from block ~ 0 ~ container.2
item replace entity @s enderchest.3 from block ~ 0 ~ container.3
item replace entity @s enderchest.4 from block ~ 0 ~ container.4
item replace entity @s enderchest.5 from block ~ 0 ~ container.5
item replace entity @s[scores={MBB_Sheet00=1}] enderchest.6 from entity @s enderchest.0 mbb:system/ongame/detect_ender_chest/set_enchant
item replace entity @s[scores={MBB_Sheet01=1}] enderchest.7 from entity @s enderchest.1 mbb:system/ongame/detect_ender_chest/set_enchant
item replace entity @s[scores={MBB_Sheet02=1}] enderchest.8 from entity @s enderchest.2 mbb:system/ongame/detect_ender_chest/set_enchant

item replace entity @s enderchest.9 from block ~ 0 ~ container.9
item replace entity @s enderchest.10 from block ~ 0 ~ container.10
item replace entity @s enderchest.11 from block ~ 0 ~ container.11
item replace entity @s enderchest.12 from block ~ 0 ~ container.12
item replace entity @s enderchest.13 from block ~ 0 ~ container.13
item replace entity @s enderchest.14 from block ~ 0 ~ container.14
item replace entity @s[scores={MBB_Sheet10=1}] enderchest.15 from entity @s enderchest.9 mbb:system/ongame/detect_ender_chest/set_enchant
item replace entity @s[scores={MBB_Sheet11=1}] enderchest.16 from entity @s enderchest.10 mbb:system/ongame/detect_ender_chest/set_enchant
item replace entity @s[scores={MBB_Sheet12=1}] enderchest.17 from entity @s enderchest.11 mbb:system/ongame/detect_ender_chest/set_enchant

item replace entity @s enderchest.18 from block ~ 0 ~ container.18
item replace entity @s enderchest.19 from block ~ 0 ~ container.19
item replace entity @s enderchest.20 from block ~ 0 ~ container.20
item replace entity @s enderchest.21 from block ~ 0 ~ container.21
item replace entity @s enderchest.22 from block ~ 0 ~ container.22
item replace entity @s enderchest.23 from block ~ 0 ~ container.23
item replace entity @s[scores={MBB_Sheet20=1}] enderchest.24 from entity @s enderchest.18 mbb:system/ongame/detect_ender_chest/set_enchant
item replace entity @s[scores={MBB_Sheet21=1}] enderchest.25 from entity @s enderchest.19 mbb:system/ongame/detect_ender_chest/set_enchant
item replace entity @s[scores={MBB_Sheet22=1}] enderchest.26 from entity @s enderchest.20 mbb:system/ongame/detect_ender_chest/set_enchant

## Remove a tag
tag @s remove MBB_ExchangeItems