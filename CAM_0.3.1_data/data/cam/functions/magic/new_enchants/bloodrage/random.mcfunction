scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
tag @s add CAM_brtemp
execute if score @s CAM_brgate matches 10.. if score @s random matches 0..4 at @s run function cam:magic/new_enchants/bloodrage/particle
tag @s remove CAM_brtemp