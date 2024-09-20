execute store result score $uses CAM_fletcher run data get storage cam:villager fletcher.A[0].uses

execute if data storage cam:villager fletcher.A[0].sell{id:"minecraft:bow"} if score $uses CAM_fletcher matches 1.. run function cam:villager/fletcher/villagerdeal
execute if data storage cam:villager fletcher.A[0].sell{id:"minecraft:crossbow"} if score $uses CAM_fletcher matches 1.. run function cam:villager/fletcher/villagerdeal
execute if data storage cam:villager fletcher.A[0].sell{id:"minecraft:tipped_arrow"} if score $uses CAM_fletcher matches 12.. run function cam:villager/fletcher/villagerdeal2



data modify storage cam:villager fletcher.B[] append from storage cam:villager fletcher.A[0]
data remove storage cam:villager fletcher.A[0]
execute if data storage cam:villager fletcher.A[{}] run function cam:villager/fletcher/resupply_villager_sub