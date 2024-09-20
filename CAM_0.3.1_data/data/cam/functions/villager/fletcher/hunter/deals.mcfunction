scoreboard players set #random_min random 1
scoreboard players set #random_max random 12
function cam:random/random
scoreboard players operation @s random = #result random


execute as @s[scores={random=1..6,CAM_hunterlvl=1}] run function cam:villager/fletcher/hunter/buy
execute as @s[scores={random=7..12,CAM_hunterlvl=1}] run function cam:villager/fletcher/hunter/sell

execute as @s[scores={random=1..4,CAM_hunterlvl=2}] run function cam:villager/fletcher/hunter/buy
execute as @s[scores={random=5..12,CAM_hunterlvl=2}] run function cam:villager/fletcher/hunter/sell

execute as @s[scores={random=1..6,CAM_hunterlvl=3}] run function cam:villager/fletcher/hunter/buy
execute as @s[scores={random=7..12,CAM_hunterlvl=3}] run function cam:villager/fletcher/hunter/sell

execute as @s[scores={random=1..4,CAM_hunterlvl=4}] run function cam:villager/fletcher/hunter/buy
execute as @s[scores={random=5..12,CAM_hunterlvl=4}] run function cam:villager/fletcher/hunter/sell

execute as @s[scores={CAM_hunterlvl=5}] run function cam:villager/fletcher/hunter/sell

