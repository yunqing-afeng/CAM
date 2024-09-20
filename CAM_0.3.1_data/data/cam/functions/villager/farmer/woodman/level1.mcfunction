#初始判定woodman
data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"772ae8c4-4df0-4837-b12f-255e5bb33bfc",Id:[I;22778,376,287,92],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDRiNTNhMjFkZWE2OGQwMDVjNDI4NjY5MTJlYTFiMjgzZjJiZGZmMTgyNDhhY2FiY2VjODZmMmY2Nzg0ODM1MiJ9fX0="}]}}}}
data modify entity @s CustomName set value "[{\"translate\":\"entity.cam.woodman\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"
data modify entity @s CustomNameVisible set value 0b
data modify entity @s ArmorDropChances set value [0.0f,0.0f,0.0f,-1f]
tag @s add CAM_triggered1
tag @s add winterday_triggered
tag @s add CAM_level1
#交易
data modify entity @s Offers.Recipes[0] set value {maxUses:12,buy:{id:"minecraft:oak_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s Offers.Recipes[1] set value {maxUses:12,buy:{id:"minecraft:stripped_oak_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#几率白桦木
scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @s random = #result random
data modify entity @s[scores={random=30..50}] Offers.Recipes[0] set value {maxUses:12,buy:{id:"minecraft:birch_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[scores={random=40..60}] Offers.Recipes[1] set value {maxUses:12,buy:{id:"minecraft:stripped_birch_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#特定生物群系
data modify entity @s[nbt={VillagerData:{type:"minecraft:taiga"}}] Offers.Recipes[0] set value {maxUses:12,buy:{id:"minecraft:spruce_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:taiga"}}] Offers.Recipes[1] set value {maxUses:12,buy:{id:"minecraft:stripped_spruce_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:savanna"}}] Offers.Recipes[0] set value {maxUses:12,buy:{id:"minecraft:acacia_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:savanna"}}] Offers.Recipes[1] set value {maxUses:12,buy:{id:"minecraft:stripped_acacia_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:jungle"}}] Offers.Recipes[0] set value {maxUses:12,buy:{id:"minecraft:jungle_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data modify entity @s[nbt={VillagerData:{type:"minecraft:jungle"}}] Offers.Recipes[1] set value {maxUses:12,buy:{id:"minecraft:stripped_jungle_log",Count:1b},sell:{id:"minecraft:emerald",Count:1b},uses:0,xp:2,priceMutiplier:0.2f,rewardExp:1b,demand:0}
#价格变动
scoreboard players set #random_min random 16
scoreboard players set #random_max random 24
function cam:random/random
scoreboard players operation @s random = #result random
execute store result storage cam_villager woodman_lv1 byte 1 run scoreboard players get @s random
data modify entity @s Offers.Recipes[0].buy.Count set from storage cam_villager woodman_lv1
scoreboard players set #random_min random 16
scoreboard players set #random_max random 24
function cam:random/random
scoreboard players operation @s random = #result random
execute store result storage cam_villager woodman_lv1 byte 1 run scoreboard players get @s random
data modify entity @s Offers.Recipes[1].buy.Count set from storage cam_villager woodman_lv1