scoreboard players set #random_min random 1
scoreboard players set #random_max random 60
function cam:random/random
scoreboard players operation @s random = #result random

execute if score @s random matches 6..10 positioned ~ ~1 ~ if score #particle CAM_module matches 1 run particle minecraft:end_rod ~ ~ ~ .25 .5 .25 0 2
