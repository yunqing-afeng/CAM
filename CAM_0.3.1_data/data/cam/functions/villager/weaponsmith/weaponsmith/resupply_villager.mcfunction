data modify storage cam:villager weaponsmith.A set from entity @s Offers.Recipes
function cam:villager/weaponsmith/weaponsmith/resupply_villager_sub
data modify entity @s Offers.Recipes set from storage cam:villager weaponsmith.B[]
data modify storage cam:villager weaponsmith set value {A:[],B:[]}