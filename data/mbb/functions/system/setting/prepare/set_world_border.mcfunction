#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set world border & cloud
worldborder center ~ ~
execute if score #mbb MBB_GameArea matches 0 run worldborder set 59999968
execute if score #mbb MBB_GameArea matches 500 run worldborder set 501
execute if score #mbb MBB_GameArea matches 1000 run worldborder set 1001
execute if score #mbb MBB_GameArea matches 1500 run worldborder set 1501
execute if score #mbb MBB_GameArea matches 2000 run worldborder set 2001