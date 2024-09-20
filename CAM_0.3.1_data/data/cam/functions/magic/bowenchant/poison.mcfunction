tag @s add CAM_arrow_enchanted
tag @s add CAM_arrow_poison_active
execute if score #CAM_arrlvl CAM_arrlvl_po matches 1 run data modify entity @s CustomPotionEffects append value {Id:19,Amplifier:1,Duration:60}
execute if score #CAM_arrlvl CAM_arrlvl_po matches 2 run data modify entity @s CustomPotionEffects append value {Id:19,Amplifier:1,Duration:140}
execute if score #CAM_arrlvl CAM_arrlvl_po matches 3 run data modify entity @s CustomPotionEffects append value {Id:19,Amplifier:1,Duration:240}
data modify entity @s pickup set value 0
