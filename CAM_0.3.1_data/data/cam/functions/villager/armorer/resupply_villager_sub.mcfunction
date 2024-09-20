execute store result score $uses CAM_armorer run data get storage cam:villager armorer.A[0].uses

execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:iron_leggings"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:iron_boots"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:iron_chestplate"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:iron_helmet"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:chainmail_leggings"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:chainmail_boots"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:chainmail_chestplate"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:chainmail_helmet"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:diamond_leggings"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:diamond_boots"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:diamond_chestplate"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:diamond_helmet"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:golden_leggings"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:golden_helmet"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:golden_chestplate"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:golden_boots"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal
execute if data storage cam:villager armorer.A[0].sell{id:"minecraft:shield"} if score $uses CAM_armorer matches 1.. run function cam:villager/armorer/villagerdeal

data modify storage cam:villager armorer.B[] append from storage cam:villager armorer.A[0]
data remove storage cam:villager armorer.A[0]
execute if data storage cam:villager armorer.A[{}] run function cam:villager/armorer/resupply_villager_sub