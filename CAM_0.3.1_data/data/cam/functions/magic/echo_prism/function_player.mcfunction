scoreboard players set @s CAM_dark_timer 600
tag @s add CAM_dark_resistance
execute if score #particle CAM_module matches 1 run particle minecraft:end_rod ~ ~ ~ 0.25 0.75 0.25 0.05 35
playsound minecraft:block.amethyst_cluster.step player @a ~ ~ ~ 2 2