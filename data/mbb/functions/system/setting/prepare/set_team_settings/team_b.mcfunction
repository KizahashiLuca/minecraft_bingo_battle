#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add TeamB
team add MBB_TeamB

## Set team name
team modify MBB_TeamB displayName {"text":"TeamB","color":"blue","bold":true}

## Set team color
team modify MBB_TeamB color blue

## Set gamerule - friendlyFire
team modify MBB_TeamB friendlyFire true
#team modify MBB_TeamB friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamB collisionRule always
#team modify MBB_TeamB collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamB nametagVisibility hideForOtherTeams
#team modify MBB_TeamB nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamB seeFriendlyInvisibles true
#team modify MBB_TeamB seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamB deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamB deathMessageVisibility never