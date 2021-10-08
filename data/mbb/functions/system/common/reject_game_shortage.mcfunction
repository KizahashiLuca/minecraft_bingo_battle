#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Send reject messages
function mbb:system/common/message/begin
tellraw @a ["",{"text":"  Shortage of players","color":"yellow","bold":true}]
tellraw @a ["",{"text":"  Restart by the following command.","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mbb:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"Click to start the game."},"clickEvent":{"action":"suggest_command","value":"/function #mbb:start"}}]
function mbb:system/common/message/end

## Reset game
function mbb:system/common/reset_game/reset_gamerules
function mbb:system/common/reset_game/reset_entities
function mbb:system/common/reset_game/reset_worlds
function mbb:system/common/reset_game/reset_tags
function mbb:system/common/reset_game/reset_teams

## Reset scoreboards
function mbb:system/common/reset_game/reset_scoreboards