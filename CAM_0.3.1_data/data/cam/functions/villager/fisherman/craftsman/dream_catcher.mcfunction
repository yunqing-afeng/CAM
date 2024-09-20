data modify entity @s Offers.Recipes append value {maxUses:6,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},xp:2,uses:0,priceMultipler:0.05f,sepcialPrice:0,rewardExp:1b}
loot spawn ~ ~ ~ loot cam:villager/craftsman/dream_catcher
execute as @e[type=item,limit=1,distance=..1,sort=nearest] at @s run tag @s add CAM_temp1
data modify entity @s Offers.Recipes[-1].sell set from entity @e[type=item,limit=1,tag=CAM_temp1,sort=nearest] Item
kill @e[tag=CAM_temp1,type=item]