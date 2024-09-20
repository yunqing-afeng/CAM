execute if score @s CAM_chime matches 1.. run playsound block.amethyst_cluster.break player @a ~ ~ ~ 1

scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
execute if score #result random matches 26 run playsound block.amethyst_block.chime player @s ~ ~ ~ 1