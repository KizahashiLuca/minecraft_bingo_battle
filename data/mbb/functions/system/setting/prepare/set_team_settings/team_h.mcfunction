#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add TeamH
team add MBB_TeamH

## Set team name
team modify MBB_TeamH displayName {"text":"TeamH","color":"gold","bold":true}

## Set team color
team modify MBB_TeamH color gold

## Set gamerule - friendlyFire
team modify MBB_TeamH friendlyFire true
#team modify MBB_TeamH friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamH collisionRule always
#team modify MBB_TeamH collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamH nametagVisibility hideForOtherTeams
#team modify MBB_TeamH nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamH seeFriendlyInvisibles true
#team modify MBB_TeamH seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamH deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamH deathMessageVisibility never