#设定
tag @s add CAM_level5
#交易
data modify entity @s Offers.Recipes[7] set value {maxUses:1,buy:{id:"minecraft:emerald",Count:25b},sell:{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:"[{\"translate\":\"item.cam.woodmansaxe\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"},Enchantments:[{id:"minecraft:efficiency",lvl:2}],summon_guard:1b,id:"cam:woodman_axe",CustomModelData:9102095}},uses:0,xp:15,priceMutiplier:0.2f,rewardExp:1b,demand:0}
data remove entity @s Offers.Recipes[8]