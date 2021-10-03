#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Send reject messages
function mbb:system/common/message_begin
tellraw @a ["",{"text":"  Game has already run.","color":"yellow","bold":true}]
tellraw @a ["",{"text":"  Stop by the following command.","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mbb:stop","color":"light_purple","hoverEvent":{"action":"show_text","value":"Click to stop the game."},"clickEvent":{"action":"suggest_command","value":"/function #mbb:stop"}}]
function mbb:system/common/message_end