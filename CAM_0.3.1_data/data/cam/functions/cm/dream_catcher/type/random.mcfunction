scoreboard players set #random_min random 0
scoreboard players set #random_max random 15
function cam:random/random
scoreboard players operation @s CAM_catcher_type = #result random