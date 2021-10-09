#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Play sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Send title
title @a times 20 80 20
title @a title ["",{"text":"Game Set!","color":"red","bold":true}]

## Set scoreboards
scoreboard players set #mbb MBB_ScoreWinner 0
execute as @a[tag=MBB_Player] run function mbb:system/finish/score_attack/calculate_bingo

## Send messages
function mbb:system/common/message/begin
tellraw @a ["",{"text":"  ","color":"white","bold":false},{"text":"Score Attack","color":"light_purple","bold":false},{"text":" Winner","color":"white","bold":false}]
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=8}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=7}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=6}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=5}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=4}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=3}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=2}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=1}] run function mbb:system/finish/score_attack/send_message_winner
execute if score #mbb MBB_ScoreWinner matches 0 as @a[tag=MBB_Player,scores={MBB_NumBingo=0}] run function mbb:system/finish/score_attack/send_message_winner
function mbb:system/common/message/end

## Reset game
function mbb:system/common/reset_game/main