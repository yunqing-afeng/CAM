execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/leather/furnace run function cam:machine/furnace/tick/recipes/leather/furnace
execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s unless predicate cam:furance/leather/furnace run scoreboard players set @s CAM_leather_tick 0
