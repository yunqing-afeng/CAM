scoreboard players set @s CAM_dark_timer 600
tag @s add CAM_dark_resistance
execute anchored eyes positioned ^ ^ ^4 run function cam:magic/echo_prism/ray_player
execute as @e[type=area_effect_cloud,distance=..32,tag=CAM_prism_effect] at @s run function cam:magic/echo_prism/function


execute unless entity @s[gamemode=creative] run clear @s echo_shard 1
scoreboard players set @s CAM_prism_timer 400
execute if score #particle CAM_module matches 1 run particle minecraft:end_rod ~ ~ ~ 0.25 0.75 0.25 0.05 35
playsound minecraft:block.amethyst_cluster.step player @a ~ ~ ~ 1 2