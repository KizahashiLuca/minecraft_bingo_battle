#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect wheather game does
execute if entity @p[tag=MBB_Host] run function mbb:system/common/reject_game_already
execute unless entity @p[tag=MBB_Host] run function mbb:system/setting/initialize/main