data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:stone",Count:1b},sell:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},xp:15,uses:0,priceMultipler:0.05f,sepcialPrice:0,rewardExp:1b}
loot spawn ~ ~ ~ loot cam:villager/craftsman/weapon
execute as @e[type=item,limit=1,distance=..1,sort=nearest] at @s run function cam:villager/fisherman/craftsman/itemdeal/itemdeal_weapon
data modify entity @s Offers.Recipes[-1].sell set from entity @e[type=item,limit=1,tag=CAM_temp1,sort=nearest] Item
data modify entity @s Offers.Recipes[-1].buy set from entity @e[type=item,limit=1,tag=CAM_temp2,sort=nearest] Item
kill @e[tag=CAM_temp1,type=item]
kill @e[tag=CAM_temp2,type=item]

