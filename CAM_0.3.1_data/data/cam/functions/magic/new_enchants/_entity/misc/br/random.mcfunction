scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random

execute if score @s CAM_htracer matches 10.. if score @s random matches 0..4 run function cam:magic/new_enchants/_entity/misc/br/particle

 
