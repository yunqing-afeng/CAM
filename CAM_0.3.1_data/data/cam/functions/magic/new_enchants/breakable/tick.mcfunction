execute as @a run scoreboard players operation @s CAM_breakmine1 = @s loymine_add
execute as @a unless score @s CAM_breakmine1 = @s CAM_breakmine2 run scoreboard players add @s CAM_breakable 1
execute as @a run scoreboard players operation @s CAM_breakmine2 = @s loymine_add
execute as @e[scores={CAM_breakable=1..},predicate=cam:enchant/breakable] at @s run function cam:magic/new_enchants/breakable/random
scoreboard players reset @a CAM_breaklvl
scoreboard players reset @a CAM_breakable