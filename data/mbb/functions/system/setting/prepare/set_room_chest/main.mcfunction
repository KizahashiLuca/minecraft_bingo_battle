#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set world spawn room
execute positioned ~ -64 ~ run function mbb:system/setting/prepare/set_room_chest/room

## Set item frame
execute positioned ~ -61 ~12 run function mbb:system/setting/prepare/set_room_chest/item_frame

## Set chest - Host
execute positioned ~ -62 ~13 run function mbb:system/setting/prepare/set_room_chest/room_chest

## Set respawn beacon
execute positioned ~ -63 ~-9 run function mbb:system/setting/prepare/set_room_chest/respawn_beacon