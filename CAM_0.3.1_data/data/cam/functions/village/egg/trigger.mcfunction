
scoreboard players set #random_min random 3600
scoreboard players set #random_max random 6000
function cam:random/random
scoreboard players operation @s CAM_eggtimemax = #result random
