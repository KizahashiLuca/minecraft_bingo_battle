#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add TeamJ
team add MBB_TeamJ

## Set team name
team modify MBB_TeamJ displayName {"text":"TeamJ","color":"dark_purple","bold":true}

## Set team color
team modify MBB_TeamJ color dark_purple

## Set gamerule - friendlyFire
team modify MBB_TeamJ friendlyFire true
#team modify MBB_TeamJ friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamJ collisionRule always
#team modify MBB_TeamJ collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamJ nametagVisibility hideForOtherTeams
#team modify MBB_TeamJ nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamJ seeFriendlyInvisibles true
#team modify MBB_TeamJ seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamJ deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamJ deathMessageVisibility never