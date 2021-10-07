#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 03 Oct 2021
## Version   : α-1.0
#####################################

## Calculate time every minute
execute if score #mbb MBB_Second matches 60 run function mbb:system/ongame/count_up/minute

## Calculate time every second
scoreboard players set #mbb MBB_Tick 0
scoreboard players add #mbb MBB_Second 1

## Set scoreboards
execute if score #mbb MBB_Second matches 0..9 run scoreboard players set #mbb MBB_DummySecond 0

## Store time for bossbar
bossbar set mbb:bossbar name ["",{"text":"","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_Minute"},"color":"white","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_DummySecond"},"color":"white","bold":true},{"score":{"name":"#mbb","objective":"MBB_Second"},"color":"white","bold":true},{"text":"","color":"white","bold":false}]

## Reset scoreboards
scoreboard players reset #mbb MBB_DummySecond