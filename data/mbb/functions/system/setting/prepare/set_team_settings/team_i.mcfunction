#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add TeamI
team add MBB_TeamI

## Set team name
team modify MBB_TeamI displayName {"text":"TeamI","color":"dark_green","bold":true}

## Set team color
team modify MBB_TeamI color dark_green

## Set gamerule - friendlyFire
team modify MBB_TeamI friendlyFire true
#team modify MBB_TeamI friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamI collisionRule always
#team modify MBB_TeamI collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamI nametagVisibility hideForOtherTeams
#team modify MBB_TeamI nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamI seeFriendlyInvisibles true
#team modify MBB_TeamI seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamI deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamI deathMessageVisibility never