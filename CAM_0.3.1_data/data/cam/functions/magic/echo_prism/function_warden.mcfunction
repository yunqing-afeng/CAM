data modify entity @s Anger set value []
scoreboard players set @s CAM_dark_timer 100
tag @s add CAM_prism_clear
execute if score #particle CAM_module matches 1 run particle minecraft:end_rod ~ ~ ~ 0.4 1 0.4 0.05 60
playsound minecraft:block.amethyst_cluster.step player @a ~ ~ ~ 2 2