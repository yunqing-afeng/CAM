execute as @e[scores={CAM_rattlesnake=..0,CAM_damage4=1..},predicate=cam:enchant/rattlesnake] at @s run function cam:magic/new_enchants/rattlesnake/random
execute as @e[scores={CAM_damage4=1..}] run scoreboard players set @s CAM_rattlesnake 100
scoreboard players reset @e CAM_damage4