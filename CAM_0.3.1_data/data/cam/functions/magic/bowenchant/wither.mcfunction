tag @s add CAM_arrow_enchanted
tag @s add CAM_arrow_wither_active
execute if score #CAM_arrlvl CAM_arrlvl_wi matches 1 run data modify entity @s CustomPotionEffects append value {Id:20,Amplifier:1,Duration:60}
execute if score #CAM_arrlvl CAM_arrlvl_wi matches 2 run data modify entity @s CustomPotionEffects append value {Id:20,Amplifier:1,Duration:140}
execute if score #CAM_arrlvl CAM_arrlvl_wi matches 3 run data modify entity @s CustomPotionEffects append value {Id:20,Amplifier:1,Duration:240}
data modify entity @s pickup set value 0