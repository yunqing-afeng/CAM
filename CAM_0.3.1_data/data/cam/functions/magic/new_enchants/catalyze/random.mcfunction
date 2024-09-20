scoreboard players set #random_min random 1
scoreboard players set #random_max random 3
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 1 run function cam:magic/new_enchants/catalyze/health
execute if score @s random matches 2 run function cam:magic/new_enchants/catalyze/strength
execute if score @s random matches 3 run function cam:magic/new_enchants/catalyze/defence