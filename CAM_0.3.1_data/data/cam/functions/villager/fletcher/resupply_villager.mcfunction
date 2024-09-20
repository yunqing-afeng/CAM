data modify storage cam:villager fletcher.A set from entity @s Offers.Recipes
function cam:villager/fletcher/resupply_villager_sub
data modify entity @s Offers.Recipes set from storage cam:villager fletcher.B[]
data modify storage cam:villager fletcher set value {A:[],B:[]}