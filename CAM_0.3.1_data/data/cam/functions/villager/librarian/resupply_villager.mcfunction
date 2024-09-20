data modify storage cam:villager librarian.A set from entity @s Offers.Recipes
function cam:villager/librarian/resupply_villager_sub
data modify entity @s Offers.Recipes set from storage cam:villager librarian.B[]
data modify storage cam:villager librarian set value {A:[],B:[]}