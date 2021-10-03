#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Reset game
function mbb:system/common/reset_gamerules
function mbb:system/common/reset_tags
function mbb:system/common/reset_worlds

## Initialize game
function mbb:system/setting/initialize/set_gamerules
function mbb:system/setting/initialize/set_tags
function mbb:system/setting/initialize/set_entities
function mbb:system/setting/initialize/set_worlds

## Add scoreboards
function mbb:system/setting/initialize/add_scoreboards

## Count players
function mbb:system/common/count_players

## Detect number of players
execute if score #mbb MBB_NumPlayer matches 1.. run function mbb:system/setting/initialize/send_messages
execute if score #mbb MBB_NumPlayer matches ..0 run function mbb:system/common/reject_game_shortage