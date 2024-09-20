#设定
tag @s add CAM_hlevel2
#交易
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
function cam:villager/fletcher/hunter/exhaustion_type
execute store result score @s CAM_hunterlvl run data get entity @s VillagerData.level
function cam:villager/fletcher/hunter/deals
function cam:villager/fletcher/hunter/deals
data modify storage cam:villager hunter.reputation set value {}