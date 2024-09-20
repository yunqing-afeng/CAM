#设定
tag @s add CAM_level3
#交易
scoreboard players set #random_min random 1
scoreboard players set #random_max random 2
function cam:random/random
scoreboard players operation @s random = #result random
data modify entity @s[scores={random=1}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_stairs",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=2}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_slab",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s Offers.Recipes[4] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_sapling",Count:1b},uses:0,xp:7,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#特定生物群系
data modify entity @s[scores={random=1},nbt={VillagerData:{type:"minecraft:taiga"}}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:spruce_stairs",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=2},nbt={VillagerData:{type:"minecraft:taiga"}}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:spruce_slab",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:taiga"}}] Offers.Recipes[4] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_sapling",Count:1b},uses:0,xp:7,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=1},nbt={VillagerData:{type:"minecraft:savanna"}}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:acacia_stairs",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=2},nbt={VillagerData:{type:"minecraft:savanna"}}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:acacia_slab",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:savanna"}}] Offers.Recipes[4] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_sapling",Count:1b},uses:0,xp:7,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=1},nbt={VillagerData:{type:"minecraft:jungle"}}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:jungle_stairs",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=2},nbt={VillagerData:{type:"minecraft:jungle"}}] Offers.Recipes[3] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:jungle_slab",Count:1b},uses:0,xp:10,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:jungle"}}] Offers.Recipes[4] set value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:oak_sapling",Count:1b},uses:0,xp:7,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#价格变动
scoreboard players set #random_min random 1
scoreboard players set #random_max random 3
function cam:random/random
scoreboard players operation @s random = #result random
execute store result storage cam_villager woodman_lv3 byte 1 run scoreboard players get @s random
data modify entity @s Offers.Recipes[3].sell.Count set from storage cam_villager woodman_lv3