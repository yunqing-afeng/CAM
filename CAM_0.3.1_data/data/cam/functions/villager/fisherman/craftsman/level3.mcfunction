#设定
tag @s add CAM_craftlevel3
#交易
data remove entity @s Offers.Recipes[5]
data remove entity @s Offers.Recipes[4]

scoreboard players set #random_min random 1
scoreboard players set #random_max random 3
function cam:random/two_selected

execute if score #result1 random matches 1 run function cam:villager/fisherman/craftsman/weapon
execute if score #result1 random matches 2 run function cam:villager/fisherman/craftsman/erosion_arrow
execute if score #result1 random matches 3 run function cam:villager/fisherman/craftsman/chinese_knot


execute if score #result2 random matches 1 run function cam:villager/fisherman/craftsman/weapon
execute if score #result2 random matches 2 run function cam:villager/fisherman/craftsman/erosion_arrow
execute if score #result2 random matches 3 run function cam:villager/fisherman/craftsman/chinese_knot