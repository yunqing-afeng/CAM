scoreboard players set #random_min random 1
scoreboard players set #random_max random 23
function cam:random/random
scoreboard players operation @s CAM_lantern_type = #result random