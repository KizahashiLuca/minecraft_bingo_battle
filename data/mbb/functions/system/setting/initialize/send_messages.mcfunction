#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Send initialize messages
function mbb:system/common/message_begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" ","color":"white"},{"selector":"@p[tag=MBB_Host]","color":"green","bold":true},{"text":",","color":"white"}]
tellraw @a ["",{"text":" set the game settings by GUI of","color":"white"}]
tellraw @a ["",{"text":" the inventory.","color":"white"}]
function mbb:system/common/message_end

## Change Gamephase
function mbb:system/setting/gui/change_to