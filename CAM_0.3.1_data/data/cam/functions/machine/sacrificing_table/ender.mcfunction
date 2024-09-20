execute if score #particle CAM_module matches 1 run particle portal ~ ~ ~ 0.1 0.125 0.1 1 50
playsound entity.enderman.teleport block @a ~ ~ ~ 1 1
spreadplayers ~ ~ 0 8 false @s
execute if score #particle CAM_module matches 1 at @s run particle portal ~ ~ ~ 0.1 0.125 0.1 1 50
tag @s remove CAM_sac_ender