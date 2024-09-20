execute store result score $uses CAM_librarian run data get storage cam:villager librarian.A[0].uses
execute if data storage cam:villager librarian.A[0].sell{id:"minecraft:enchanted_book"} if score $uses CAM_librarian matches 1.. run function cam:villager/librarian/villagerdeal
execute if data storage cam:villager librarian.A[0].sell{id:"minecraft:written_book"} if score $uses CAM_librarian matches 1.. run function cam:villager/librarian/villagerdeal
data modify storage cam:villager librarian.B[] append from storage cam:villager librarian.A[0]
data remove storage cam:villager librarian.A[0]
execute if data storage cam:villager librarian.A[{}] run function cam:villager/librarian/resupply_villager_sub