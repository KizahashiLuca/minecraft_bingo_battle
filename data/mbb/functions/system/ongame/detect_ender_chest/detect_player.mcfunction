#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add a tag
tag @s add MBB_DetectChest

## Detect owner
execute as @a[tag=MBB_ChestOwner] if score @s MBB_UUID0 = @e[tag=MBB_DetectChest,limit=1] MBB_OwnerUUID0 if score @s MBB_UUID1 = @e[tag=MBB_DetectChest,limit=1] MBB_OwnerUUID1 if score @s MBB_UUID2 = @e[tag=MBB_DetectChest,limit=1] MBB_OwnerUUID2 if score @s MBB_UUID3 = @e[tag=MBB_DetectChest,limit=1] MBB_OwnerUUID3 run tag @s add MBB_DetectChestOwner

execute at @s if entity @p[tag=MBB_DetectChestOwner,distance=2..] run function mbb:system/ongame/detect_ender_chest/remove_enderchest

## Remove tags
tag @a[tag=MBB_DetectChestOwner] remove MBB_DetectChestOwner
tag @s remove MBB_DetectChest