data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:12,uses:0,xp:1,specialPrice:0,priceMultiplier:0.05f,demand:0,buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
function cam:villager/fletcher/hunter/elements
data modify storage cam:villager hunter.A.sell merge from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager hunter.A.buy merge from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
execute store result storage cam:villager hunter.A.xp int 1 run scoreboard players get @s CAM_hunter_exp


data modify entity @s Offers.Recipes[-1] merge from storage cam:villager hunter.A
data modify storage cam:villager hunter.A set value {}