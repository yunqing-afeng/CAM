execute store result score @s CAM_floatcount if data entity @s ActiveEffects[{Id:28}]
execute if score @s CAM_floatcount matches 1 if data entity @s ActiveEffects[{Id:28,Amplifier:-1b}] run effect clear @s slow_falling
tag @s remove CAM_float