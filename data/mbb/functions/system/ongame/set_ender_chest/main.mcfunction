#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set ender chest - Host
loot replace entity @p[tag=MBB_Host] enderchest.0 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.1 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.2 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.3 loot mbb:system/ongame/blank
loot replace entity @p[tag=MBB_Host] enderchest.4 loot mbb:system/ongame/blank
loot replace entity @p[tag=MBB_Host] enderchest.5 loot mbb:system/ongame/blank
item replace entity @p[tag=MBB_Host] enderchest.6 with minecraft:air
item replace entity @p[tag=MBB_Host] enderchest.7 with minecraft:air
item replace entity @p[tag=MBB_Host] enderchest.8 with minecraft:air

loot replace entity @p[tag=MBB_Host] enderchest.9 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.10 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.11 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.12 loot mbb:system/ongame/blank
loot replace entity @p[tag=MBB_Host] enderchest.13 loot mbb:system/ongame/right_arrow
loot replace entity @p[tag=MBB_Host] enderchest.14 loot mbb:system/ongame/blank
item replace entity @p[tag=MBB_Host] enderchest.15 with minecraft:air
item replace entity @p[tag=MBB_Host] enderchest.16 with minecraft:air
item replace entity @p[tag=MBB_Host] enderchest.17 with minecraft:air

loot replace entity @p[tag=MBB_Host] enderchest.18 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.19 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.20 loot mbb:system/ongame/items
loot replace entity @p[tag=MBB_Host] enderchest.21 loot mbb:system/ongame/blank
loot replace entity @p[tag=MBB_Host] enderchest.22 loot mbb:system/ongame/blank
loot replace entity @p[tag=MBB_Host] enderchest.23 loot mbb:system/ongame/blank
item replace entity @p[tag=MBB_Host] enderchest.24 with minecraft:air
item replace entity @p[tag=MBB_Host] enderchest.25 with minecraft:air
item replace entity @p[tag=MBB_Host] enderchest.26 with minecraft:air

## Set ender chest - everyone
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.0 from entity @p[tag=MBB_Host] enderchest.0
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.1 from entity @p[tag=MBB_Host] enderchest.1
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.2 from entity @p[tag=MBB_Host] enderchest.2
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.3 from entity @p[tag=MBB_Host] enderchest.3
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.4 from entity @p[tag=MBB_Host] enderchest.4
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.5 from entity @p[tag=MBB_Host] enderchest.5
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.6 from entity @p[tag=MBB_Host] enderchest.6
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.7 from entity @p[tag=MBB_Host] enderchest.7
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.8 from entity @p[tag=MBB_Host] enderchest.8

item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.9 from entity @p[tag=MBB_Host] enderchest.9
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.10 from entity @p[tag=MBB_Host] enderchest.10
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.11 from entity @p[tag=MBB_Host] enderchest.11
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.12 from entity @p[tag=MBB_Host] enderchest.12
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.13 from entity @p[tag=MBB_Host] enderchest.13
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.14 from entity @p[tag=MBB_Host] enderchest.14
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.15 from entity @p[tag=MBB_Host] enderchest.15
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.16 from entity @p[tag=MBB_Host] enderchest.16
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.17 from entity @p[tag=MBB_Host] enderchest.17

item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.18 from entity @p[tag=MBB_Host] enderchest.18
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.19 from entity @p[tag=MBB_Host] enderchest.19
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.20 from entity @p[tag=MBB_Host] enderchest.20
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.21 from entity @p[tag=MBB_Host] enderchest.21
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.22 from entity @p[tag=MBB_Host] enderchest.22
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.23 from entity @p[tag=MBB_Host] enderchest.23
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.24 from entity @p[tag=MBB_Host] enderchest.24
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.25 from entity @p[tag=MBB_Host] enderchest.25
item replace entity @a[tag=MBB_Player,tag=!MBB_Host] enderchest.26 from entity @p[tag=MBB_Host] enderchest.26

## Set world spawn chest
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.0 from entity @p[tag=MBB_Host] enderchest.0
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.1 from entity @p[tag=MBB_Host] enderchest.1
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.2 from entity @p[tag=MBB_Host] enderchest.2
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.3 from entity @p[tag=MBB_Host] enderchest.3
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.4 from entity @p[tag=MBB_Host] enderchest.4
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.5 from entity @p[tag=MBB_Host] enderchest.5
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.6 from entity @p[tag=MBB_Host] enderchest.6
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.7 from entity @p[tag=MBB_Host] enderchest.7
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.8 from entity @p[tag=MBB_Host] enderchest.8

execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.9 from entity @p[tag=MBB_Host] enderchest.9
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.10 from entity @p[tag=MBB_Host] enderchest.10
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.11 from entity @p[tag=MBB_Host] enderchest.11
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.12 from entity @p[tag=MBB_Host] enderchest.12
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.13 from entity @p[tag=MBB_Host] enderchest.13
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.14 from entity @p[tag=MBB_Host] enderchest.14
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.15 from entity @p[tag=MBB_Host] enderchest.15
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.16 from entity @p[tag=MBB_Host] enderchest.16
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.17 from entity @p[tag=MBB_Host] enderchest.17

execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.18 from entity @p[tag=MBB_Host] enderchest.18
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.19 from entity @p[tag=MBB_Host] enderchest.19
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.20 from entity @p[tag=MBB_Host] enderchest.20
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.21 from entity @p[tag=MBB_Host] enderchest.21
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.22 from entity @p[tag=MBB_Host] enderchest.22
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.23 from entity @p[tag=MBB_Host] enderchest.23
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.24 from entity @p[tag=MBB_Host] enderchest.24
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.25 from entity @p[tag=MBB_Host] enderchest.25
execute at @e[predicate=mbb:system/common/world_spawn] run item replace block ~ 0 ~ container.26 from entity @p[tag=MBB_Host] enderchest.26