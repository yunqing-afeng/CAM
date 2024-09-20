execute if score @s CAM_storm matches 150..299 run particle minecraft:nautilus ~ ~1 ~ .5 .5 .5 1 1 normal
execute if score @s CAM_storm matches 300..399 run particle minecraft:nautilus ~ ~1 ~ .5 .5 .5 1 2 normal
execute if score @s CAM_storm matches 400.. run particle minecraft:nautilus ~ ~1 ~ 0 0 0 3 5 normal

execute if score @s CAM_storm matches 400.. run particle minecraft:rain ~ ~1 ~ 5 5 5 30 50 normal