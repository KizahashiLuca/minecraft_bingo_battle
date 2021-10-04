#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add TeamD
team add MBB_TeamD

## Set team name
team modify MBB_TeamD displayName {"text":"TeamD","color":"green","bold":true}

## Set team color
team modify MBB_TeamD color green

## Set gamerule - friendlyFire
team modify MBB_TeamD friendlyFire true
#team modify MBB_TeamD friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamD collisionRule always
#team modify MBB_TeamD collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamD nametagVisibility hideForOtherTeams
#team modify MBB_TeamD nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamD seeFriendlyInvisibles true
#team modify MBB_TeamD seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamD deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamD deathMessageVisibility never