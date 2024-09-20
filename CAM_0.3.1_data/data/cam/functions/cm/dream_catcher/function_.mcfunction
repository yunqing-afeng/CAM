scoreboard players set #random_min random 0
scoreboard players set #random_max random 15
function cam:random/random
scoreboard players operation @s CAM_catcher_functype = #result random

execute if score @s CAM_catcher_functype matches 11 run function cam:cm/dream_catcher/function_