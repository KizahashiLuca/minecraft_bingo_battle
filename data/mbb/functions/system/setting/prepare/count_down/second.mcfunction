#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Calculate time
scoreboard players remove #mbb MBB_Second 1
execute if score #mbb MBB_Second matches -1 run scoreboard players set #mbb MBB_Second 0

## Send title message
title @a title ["",{"score":{"name":"#mbb","objective":"MBB_Second"}}]
title @a times 3 14 3

## Set bossbar
bossbar set mbb:bossbar name ["",{"score":{"name":"#mbb","objective":"MBB_Second"},"bold":true,"color":"green"},{"text":" sec. until the start","color":"white"}]
execute store result bossbar mbb:bossbar value run scoreboard players get #mbb MBB_Second

## Process the sound system
execute if score #mbb MBB_Second matches 1..3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mbb MBB_Second matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1