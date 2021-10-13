#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Add TeamC
team add MBB_TeamC

## Set team name
team modify MBB_TeamC displayName {"text":"TeamC","color":"yellow","bold":true}

## Set team color
team modify MBB_TeamC color yellow

## Set gamerule - friendlyFire
team modify MBB_TeamC friendlyFire true
#team modify MBB_TeamC friendlyFire false

## Set gamerule - collisionRule
team modify MBB_TeamC collisionRule always
#team modify MBB_TeamC collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
team modify MBB_TeamC nametagVisibility hideForOtherTeams
#team modify MBB_TeamC nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
team modify MBB_TeamC seeFriendlyInvisibles true
#team modify MBB_TeamC seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
team modify MBB_TeamC deathMessageVisibility hideForOtherTeams
#team modify MBB_TeamC deathMessageVisibility never