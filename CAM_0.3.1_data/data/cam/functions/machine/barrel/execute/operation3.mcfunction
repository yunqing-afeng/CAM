scoreboard players set #random_min random 1
scoreboard players set #random_max random 4
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 2 run scoreboard players operation @s CAM_barreldeg += #temp CAM_barreldeg