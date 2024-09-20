#设定
tag @s add CAM_craftlevel2
#交易
data remove entity @s Offers.Recipes[3]
data remove entity @s Offers.Recipes[2]

scoreboard players set #random_min random 1
scoreboard players set #random_max random 2
function cam:random/two_selected

execute if score #result1 random matches 1 run function cam:villager/fisherman/craftsman/weapon
execute if score #result1 random matches 2 run function cam:villager/fisherman/craftsman/sulfur



execute if score #result2 random matches 1 run function cam:villager/fisherman/craftsman/weapon
execute if score #result2 random matches 2 run function cam:villager/fisherman/craftsman/sulfur

