execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/copper/furnace run function cam:machine/furnace/tick/recipes/copper/furnace
execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s unless predicate cam:furance/copper/furnace run scoreboard players set @s CAM_leather_tick 0


execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/copper/sword_empty if data block ~ ~ ~ {CookTime:199s} run function cam:machine/furnace/tick/recipes/copper/replace



execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/copper/sword run function cam:machine/furnace/tick/recipes/copper/lock
