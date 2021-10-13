#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Play sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Send title
title @a times 20 80 20
title @a title ["",{"text":"Game Set!","color":"red","bold":true}]

## Set scoreboards
scoreboard players reset #mbb MBB_DummySecond
scoreboard players reset #mbb MBB_DummyTick
scoreboard players operation #mbb MBB_Tick *= #mbb MBB_5
execute if score #mbb MBB_Second matches 0..9 run scoreboard players set #mbb MBB_DummySecond 0
execute if score #mbb MBB_Tick matches 0..9 run scoreboard players set #mbb MBB_DummyTick 0

## Send messages
function mbb:system/common/message/begin
tellraw @a ["",{"text":"  ","color":"white","bold":false},{"text":"Time Attack","color":"aqua","bold":false},{"text":" Winner","color":"white","bold":false}]
execute as @a[predicate=mbb:system/ongame/detect_winner/time_attack] run function mbb:system/finish/time_attack/send_message_winner
tellraw @a ["",{"text":"  Time","color":"white","bold":false}]
tellraw @a ["",{"text":"    ","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_Minute"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"#mbb","objective":"MBB_DummySecond"},"color":"white","bold":true},{"score":{"name":"#mbb","objective":"MBB_Second"},"color":"white","bold":true},{"text":".","color":"white","bold":true},{"score":{"name":"#mbb","objective":"MBB_DummyTick"},"color":"white","bold":true},{"score":{"name":"#mbb","objective":"MBB_Tick"},"color":"white","bold":true}]
function mbb:system/common/message/end

## Reset game
function mbb:system/common/reset_game/main