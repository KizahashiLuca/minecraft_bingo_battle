#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set world spawn room
execute positioned ~ -64 ~ run function mbb:system/setting/prepare/set_room/room

## Set item frame
execute positioned ~ -61 ~12 run function mbb:system/setting/prepare/set_room/item_frame

## Set chest - Host
execute positioned ~ -62 ~13 run function mbb:system/setting/prepare/set_room/room_chest

## Set respawn beacon
execute positioned ~ -63 ~-9 run function mbb:system/setting/prepare/set_room/respawn_beacon