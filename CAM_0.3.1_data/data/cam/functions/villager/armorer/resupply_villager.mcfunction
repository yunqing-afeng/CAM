data modify storage cam:villager armorer.A set from entity @s Offers.Recipes
function cam:villager/armorer/resupply_villager_sub
data modify entity @s Offers.Recipes set from storage cam:villager armorer.B[]
data modify storage cam:villager armorer set value {A:[],B:[]}