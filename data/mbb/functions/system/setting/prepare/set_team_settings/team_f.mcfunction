#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add TeamF
team add MBB_TeamF

## Set team name
team modify MBB_TeamF displayName {"text":"TeamF","color":"dark_red","bold":true}

## Set team color
team modify MBB_TeamF color dark_red

## Set gamerule - friendlyFire
team modify MBB_TeamF friendlyFire true
#team modify MBB_TeamF friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamF collisionRule always
#team modify MBB_TeamF collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamF nametagVisibility hideForOtherTeams
#team modify MBB_TeamF nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamF seeFriendlyInvisibles true
#team modify MBB_TeamF seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamF deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamF deathMessageVisibility never