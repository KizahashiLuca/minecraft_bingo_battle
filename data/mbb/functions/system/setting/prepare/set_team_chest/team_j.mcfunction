#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set world spawn chest - team j
fill ~-1 ~ ~ ~ ~ ~ minecraft:chest[type=right]{Lock:"TeamJ Key"}
fill ~-1 ~ ~1 ~ ~ ~1 minecraft:quartz_block
fill ~-1 ~1 ~1 ~ ~1 ~1 minecraft:white_banner[rotation=8]{Patterns:[{Pattern:ls,Color:15},{Pattern:hh,Color:0},{Pattern:bs,Color:15},{Pattern:rs,Color:15},{Pattern:bo,Color:0}]}

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MBB_TeamChest","MBB_TeamJ"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}