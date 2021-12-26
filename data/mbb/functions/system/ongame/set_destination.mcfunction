#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Spread player
execute if predicate mbb:system/common/gamerule/individual_match run spreadplayers ~ ~ 100 1000 false @a[tag=MBB_Player]
execute if predicate mbb:system/common/gamerule/team_match run spreadplayers ~ ~ 100 10 true @a[tag=MBB_Player]