scoreboard players set #random_min random 140
scoreboard players set #random_max random 300
function cam:random/random
scoreboard players operation @s CAM_wine_timer = #result random