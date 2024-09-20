#设定
tag @s add CAM_level4
#交易
scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
data modify entity @s[scores={random=1}] Offers.Recipes[5] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:petrified_oak_slab",Count:1b},uses:0,xp:12,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=2..20}] Offers.Recipes[5] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:barrel",Count:1b},uses:0,xp:12,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s Offers.Recipes[6] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_sign",Count:3b},uses:0,xp:15,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#特定生物群系
data modify entity @s[scores={random=1},nbt={VillagerData:{type:"minecraft:taiga"}}] Offers.Recipes[6] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:spruce_sign",Count:3b},uses:0,xp:15,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=1},nbt={VillagerData:{type:"minecraft:savanna"}}] Offers.Recipes[6] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:acacia_sign",Count:3b},uses:0,xp:15,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=1},nbt={VillagerData:{type:"minecraft:jungle"}}] Offers.Recipes[6] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:jungle_sign",Count:3b},uses:0,xp:15,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#价格变动
scoreboard players set #random_min random 1
scoreboard players set #random_max random 3
function cam:random/random
scoreboard players operation @s random = #result random
execute store result storage cam_villager woodman_lv4 byte 1 run scoreboard players get @s random
data modify entity @s[scores={random=2..20}] Offers.Recipes[5].buy.Count set from storage cam_villager woodman_lv4