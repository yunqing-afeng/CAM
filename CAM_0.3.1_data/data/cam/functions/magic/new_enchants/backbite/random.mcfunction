scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 1..5 run function cam:magic/new_enchants/backbite/particle