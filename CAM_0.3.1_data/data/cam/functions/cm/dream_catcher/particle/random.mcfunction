scoreboard players set #random_min random 0
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s CAM_catcher_random = #result random

tag @s add CAM_catcher_lock