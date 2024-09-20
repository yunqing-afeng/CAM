execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/fish_empty if data block ~ ~ ~ {CookTime:199s} run function cam:machine/furnace/tick/recipes/fish/fish_replace
execute as @s[type=minecraft:armor_stand,tag=cam_smoker] at @s if predicate cam:furance/fish_empty if data block ~ ~ ~ {CookTime:99s} run function cam:machine/furnace/tick/recipes/fish/fish_replace

execute as @s[type=minecraft:armor_stand,tag=cam_smoker] at @s if predicate cam:furance/fish run function cam:machine/furnace/tick/recipes/fish/fish_lock
execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/fish run function cam:machine/furnace/tick/recipes/fish/fish_lock
execute as @s[type=minecraft:armor_stand,tag=cam_smoker] at @s if predicate cam:furance/cod run function cam:machine/furnace/tick/recipes/fish/fish_lock
execute as @s[type=minecraft:armor_stand,tag=cam_furnace] at @s if predicate cam:furance/cod run function cam:machine/furnace/tick/recipes/fish/fish_lock

execute as @s[type=minecraft:armor_stand,tag=cam_campfire] at @s run function cam:machine/furnace/tick/recipes/fish/campfire
execute as @s[type=minecraft:armor_stand,tag=cam_soul_campfire] at @s run function cam:machine/furnace/tick/recipes/fish/campfire