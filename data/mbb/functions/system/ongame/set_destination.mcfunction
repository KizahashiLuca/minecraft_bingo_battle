#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Spread player
execute if score #mbb MBB_GameArea matches 0 run spreadplayers ~ ~ 100 1000 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameArea matches 500 run spreadplayers ~ ~ 100 250 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameArea matches 1000 run spreadplayers ~ ~ 100 500 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameArea matches 1500 run spreadplayers ~ ~ 100 750 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameArea matches 2000 run spreadplayers ~ ~ 100 1000 true @a[tag=MBB_Player]