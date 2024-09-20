scoreboard players set #random_min random 4
scoreboard players set #random_max random 16
function cam:random/random

data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:iron_axe",Count:1b,tag:{display:{Name:"{\"translate\":\"item.cam.butcher_knife\",\"italic\":\"false\"}"},CustomModelData:9102143,id:"cam:butcher_knife",CAM_butcher:1b}},uses:0,xp:15,priceMutiplier:0.2f,rewardExp:1b,demand:0}
execute store result entity @s Offers.Recipes[-1].buy.Count byte 1 run scoreboard players get #result random

tag @s add knife_triggered
