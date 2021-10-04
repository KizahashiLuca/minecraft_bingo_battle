#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Add TeamA
team add MBB_TeamA

## Set team name
team modify MBB_TeamA displayName {"text":"TeamA","color":"red","bold":true}

## Set team color
team modify MBB_TeamA color red

## Set gamerule - friendlyFire
team modify MBB_TeamA friendlyFire true
#team modify MBB_TeamA friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamA collisionRule always
#team modify MBB_TeamA collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamA nametagVisibility hideForOtherTeams
#team modify MBB_TeamA nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamA seeFriendlyInvisibles true
#team modify MBB_TeamA seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamA deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamA deathMessageVisibility never