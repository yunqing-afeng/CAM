execute as @e[scores={CAM_damage4=..0}] run tag @s remove rattlesnake
execute as @e[scores={CAM_damage4=1..}] run tag @s add rattlesnake
scoreboard players remove @a CAM_rattlesnake 1
execute as @a[scores={CAM_rattlesnake=..-1}] run scoreboard players set @s CAM_rattlesnake 0