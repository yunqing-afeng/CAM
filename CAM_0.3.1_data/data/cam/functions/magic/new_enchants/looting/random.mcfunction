scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 0..5 run schedule function cam:magic/new_enchants/looting/kill 2t