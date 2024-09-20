data modify storage cam:villager hunter.A set value {rewardExp:1b,maxUses:12,uses:0,xp:1,specialPrice:0,priceMultiplier:0.05f,demand:0,buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
execute if score @s CAM_trade_item matches 2..5 run data modify storage cam:villager hunter.A merge value {maxUses:3}

