scoreboard players add @s CAM_customdamage 1
scoreboard players remove @s CAM_phytime 30
execute if score @s CAM_phytime matches 30.. run function cam:magic/new_enchants/phylactery/loop