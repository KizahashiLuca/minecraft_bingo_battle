#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Spread player
execute if score #mbb MBB_GameGroup matches 1 if score #mbb MBB_GameArea matches 0 run spreadplayers ~ ~ 100 1000 false @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 1 if score #mbb MBB_GameArea matches 500 run spreadplayers ~ ~ 100 250 false @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 1 if score #mbb MBB_GameArea matches 1000 run spreadplayers ~ ~ 100 500 false @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 1 if score #mbb MBB_GameArea matches 1500 run spreadplayers ~ ~ 100 750 false @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 1 if score #mbb MBB_GameArea matches 2000 run spreadplayers ~ ~ 100 1000 false @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 2 if score #mbb MBB_GameArea matches 0 run spreadplayers ~ ~ 100 1000 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 2 if score #mbb MBB_GameArea matches 500 run spreadplayers ~ ~ 100 250 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 2 if score #mbb MBB_GameArea matches 1000 run spreadplayers ~ ~ 100 500 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 2 if score #mbb MBB_GameArea matches 1500 run spreadplayers ~ ~ 100 750 true @a[tag=MBB_Player]
execute if score #mbb MBB_GameGroup matches 2 if score #mbb MBB_GameArea matches 2000 run spreadplayers ~ ~ 100 1000 true @a[tag=MBB_Player]