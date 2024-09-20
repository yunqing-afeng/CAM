#设定
tag @s add CAM_craftlevel4
#交易
data remove entity @s Offers.Recipes[6]

scoreboard players set #random_min random 1
scoreboard players set #random_max random 2
function cam:random/two_selected

execute if score #result1 random matches 1 run function cam:villager/fisherman/craftsman/weapon
execute if score #result1 random matches 2 run function cam:villager/fisherman/craftsman/bow_with_blade

execute if score #result2 random matches 1 run function cam:villager/fisherman/craftsman/weapon
execute if score #result2 random matches 2 run function cam:villager/fisherman/craftsman/bow_with_blade
