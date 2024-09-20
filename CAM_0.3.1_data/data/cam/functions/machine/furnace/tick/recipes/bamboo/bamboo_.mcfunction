execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/bamboo/sapling_empty if data block ~ ~ ~ {CookTime:199s} run function cam:machine/furnace/tick/recipes/bamboo/sapling_replace

execute as @s[type=minecraft:armor_stand,tag=cam_smoker] at @s if predicate cam:furance/bamboo/smoker run function cam:machine/furnace/tick/recipes/bamboo/smoker
execute as @s[type=minecraft:armor_stand,tag=cam_smoker] at @s unless predicate cam:furance/bamboo/smoker run scoreboard players set @s CAM_bamboo_tick 0

execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/bamboo/bamboo run function cam:machine/furnace/tick/recipes/bamboo/bamboo_lock
execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/bamboo/sapling run function cam:machine/furnace/tick/recipes/bamboo/bamboo_lock