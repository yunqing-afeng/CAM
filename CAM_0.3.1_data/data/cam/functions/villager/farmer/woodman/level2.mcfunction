#设定
tag @s add CAM_level2
#交易
data modify entity @s Offers.Recipes[2] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:charcoal",Count:1b},uses:0,xp:6,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data remove entity @s Offers.Recipes[3]
#价格变动
scoreboard players set #random_min random 3
scoreboard players set #random_max random 5
function cam:random/random
scoreboard players operation @s random = #result random
execute store result storage cam_villager woodman_lv2 byte 1 run scoreboard players get @s random
data modify entity @s Offers.Recipes[2].sell.Count set from storage cam_villager woodman_lv2
say 1