data modify storage cam:villager craftsman.A set from entity @s Offers.Recipes
function cam:villager/fisherman/craftsman/resupply/resupply_villager_sub
data modify entity @s Offers.Recipes set from storage cam:villager craftsman.B[]
data modify storage cam:villager craftsman set value {A:[],B:[]}