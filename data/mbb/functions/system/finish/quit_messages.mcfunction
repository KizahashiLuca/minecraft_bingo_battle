#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Send title
title @a times 20 80 20
title @a title ["",{"text":"Quit Game","color":"white","bold":true}]

## Send messages
function mbb:system/common/message/begin
tellraw @a ["",{"text":"  Quit the game.","color":"red","bold":true}]
function mbb:system/common/message/end