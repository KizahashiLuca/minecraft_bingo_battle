#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Detect structure
execute as @s at @s if block ~ ~ ~1 minecraft:cobblestone if block ~ ~ ~-1 minecraft:cobblestone if block ~1 ~ ~ minecraft:cobblestone if block ~-1 ~ ~ minecraft:cobblestone run function mbb:small_end_portal_frame/set_structure