data modify storage cam:villager toolsmith.A set from entity @s Offers.Recipes
function cam:villager/toolsmith/resupply_villager_sub
data modify entity @s Offers.Recipes set from storage cam:villager toolsmith.B[]
data modify storage cam:villager toolsmith set value {A:[],B:[]}