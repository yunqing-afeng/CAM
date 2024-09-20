tag @s add CAM_arrow_enchanted
tag @s add CAM_arrow_decay_active
execute if score #CAM_arrlvl CAM_arrlvl_po matches 1 run data modify entity @s CustomPotionEffects append value {Id:17,Amplifier:1,Duration:240}
execute if score #CAM_arrlvl CAM_arrlvl_po matches 2 run data modify entity @s CustomPotionEffects append value {Id:17,Amplifier:1,Duration:560}
execute if score #CAM_arrlvl CAM_arrlvl_po matches 3 run data modify entity @s CustomPotionEffects append value {Id:17,Amplifier:1,Duration:800}
data modify entity @s pickup set value 0

execute if score #CAM_arrlvl CAM_arrlvl_po matches 1 run data modify entity @s CustomPotionEffects append value {Id:18,Amplifier:1,Duration:240}
execute if score #CAM_arrlvl CAM_arrlvl_po matches 2 run data modify entity @s CustomPotionEffects append value {Id:18,Amplifier:1,Duration:560}
execute if score #CAM_arrlvl CAM_arrlvl_po matches 3 run data modify entity @s CustomPotionEffects append value {Id:18,Amplifier:1,Duration:800}
data modify entity @s pickup set value 0