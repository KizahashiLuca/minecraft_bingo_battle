#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add TeamG
team add MBB_TeamG

## Set team name
team modify MBB_TeamG displayName {"text":"TeamG","color":"dark_blue","bold":true}

## Set team color
team modify MBB_TeamG color dark_blue

## Set gamerule - friendlyFire
team modify MBB_TeamG friendlyFire true
#team modify MBB_TeamG friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamG collisionRule always
#team modify MBB_TeamG collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamG nametagVisibility hideForOtherTeams
#team modify MBB_TeamG nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamG seeFriendlyInvisibles true
#team modify MBB_TeamG seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamG deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamG deathMessageVisibility never