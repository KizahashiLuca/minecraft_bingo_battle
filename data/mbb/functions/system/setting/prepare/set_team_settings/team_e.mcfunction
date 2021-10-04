#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add TeamE
team add MBB_TeamE

## Set team name
team modify MBB_TeamE displayName {"text":"TeamE","color":"light_purple","bold":true}

## Set team color
team modify MBB_TeamE color light_purple

## Set gamerule - friendlyFire
team modify MBB_TeamE friendlyFire true
#team modify MBB_TeamE friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamE collisionRule always
#team modify MBB_TeamE collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamE nametagVisibility hideForOtherTeams
#team modify MBB_TeamE nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamE seeFriendlyInvisibles true
#team modify MBB_TeamE seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamE deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamE deathMessageVisibility never