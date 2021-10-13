#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set position
function mbb:system/common/position/calculate

## Draw position - actionbar
title @s[scores={MBB_Angle=0}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 南"}]
title @s[scores={MBB_Angle=1}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 南西"}]
title @s[scores={MBB_Angle=2}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 西"}]
title @s[scores={MBB_Angle=3}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 北西"}]
title @s[scores={MBB_Angle=4}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 北"}]
title @s[scores={MBB_Angle=5}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 北東"}]
title @s[scores={MBB_Angle=6}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 東"}]
title @s[scores={MBB_Angle=7}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "MBB_PosX"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosY"}},{"text":", "},{"score": {"name":"@s","objective": "MBB_PosZ"}},{"text":")    方角 : 南東"}]