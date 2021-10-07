#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Set ender chest - Host
execute as @p[tag=MBB_Host] run function mbb:system/ongame/set_ender_chest/host

## Set ender chest - everyone
execute as @p[tag=MBB_Host] run function mbb:system/ongame/set_ender_chest/player

## Set world spawn chest
execute as @p[tag=MBB_Host] at @e[predicate=mbb:system/common/world_spawn] run function mbb:system/ongame/set_ender_chest/chest