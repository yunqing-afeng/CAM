tag @s add CAM_arrow_enchanted
tag @s add CAM_arrow_freeze_active
execute if score #CAM_arrlvl CAM_arrlvl_fr matches 1 run data modify entity @s CustomPotionEffects append value {Id:2,Amplifier:0,Duration:200}
execute if score #CAM_arrlvl CAM_arrlvl_fr matches 2 run data modify entity @s CustomPotionEffects append value {Id:2,Amplifier:0,Duration:300}
execute if score #CAM_arrlvl CAM_arrlvl_fr matches 3 run data modify entity @s CustomPotionEffects append value {Id:2,Amplifier:1,Duration:300}
execute if score #CAM_arrlvl CAM_arrlvl_fr matches 4 run data modify entity @s CustomPotionEffects append value {Id:2,Amplifier:1,Duration:400}
execute if score #CAM_arrlvl CAM_arrlvl_fr matches 5 run data modify entity @s CustomPotionEffects append value {Id:2,Amplifier:1,Duration:600}
data modify entity @s pickup set value 0
