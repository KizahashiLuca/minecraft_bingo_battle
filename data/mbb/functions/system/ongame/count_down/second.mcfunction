#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Calculate time every minute
execute if score #mbb MBB_Second matches 0 run function mbb:system/ongame/count_down/minute

## Calculate time every second
scoreboard players remove #mbb MBB_Second 1
execute if score #mbb MBB_Second matches ..-1 run scoreboard players set #mbb MBB_Second 59

## Set scoreboards
scoreboard players operation #mbb MBB_TotalSecond = #mbb MBB_Minute
scoreboard players operation #mbb MBB_TotalSecond *= #mbb MBB_60
scoreboard players operation #mbb MBB_TotalSecond += #mbb MBB_Second
execute if score #mbb MBB_Second matches 0..9 run scoreboard players set #mbb MBB_DummySecond 0

## Store time for bossbar
execute unless score #mbb MBB_Minute matches 0..4 run bossbar set mbb:bossbar name ["",{"text":"","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_Minute"},"color":"white","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_DummySecond"},"color":"white","bold":true},{"score":{"name":"#mbb","objective":"MBB_Second"},"color":"white","bold":true},{"text":"","color":"white","bold":false}]
execute if score #mbb MBB_Minute matches 2..4 run bossbar set mbb:bossbar name ["",{"text":"","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_Minute"},"color":"yellow","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_DummySecond"},"color":"yellow","bold":true},{"score":{"name":"#mbb","objective":"MBB_Second"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false}]
execute if score #mbb MBB_Minute matches 0..1 run bossbar set mbb:bossbar name ["",{"text":"","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_Minute"},"color":"red","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"#mbb","objective":"MBB_DummySecond"},"color":"red","bold":true},{"score":{"name":"#mbb","objective":"MBB_Second"},"color":"red","bold":true},{"text":"","color":"white","bold":false}]
execute store result bossbar mbb:bossbar value run scoreboard players get #mbb MBB_TotalSecond

## Reset scoreboards
scoreboard players reset #mbb MBB_DummySecond

## Process the sound system
execute if score #mbb MBB_Minute matches 0 if score #mbb MBB_Second matches 3..9 as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #mbb MBB_Minute matches 0 if score #mbb MBB_Second matches 0..2 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1