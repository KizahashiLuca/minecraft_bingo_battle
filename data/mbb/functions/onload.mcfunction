#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Change gamerules always
gamerule maxCommandChainLength 65536
gamerule doMobSpawning false
gamerule doFireTick false

## Send Title Message
function mbb:system/common/message_begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  Player Num : ","color":"white"},{"text":"1+","color":"green","bold":true}]
tellraw @a ["",{"text":"  Start by the following command.","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mbb:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"Click to start the game."},"clickEvent":{"action":"suggest_command","value":"/function #mbb:start"}}]
function mbb:system/common/message_end