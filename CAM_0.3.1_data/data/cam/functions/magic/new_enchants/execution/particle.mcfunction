scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 3..5 if score #particle CAM_module matches 1 run particle instant_effect ~ ~.5 ~ .2 .2 .2 0 2 
