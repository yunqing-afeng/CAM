execute store result score $uses CAM_toolsmith run data get storage cam:villager toolsmith.A[0].uses

execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:stone_axe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:stone_shovel"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:stone_pickaxe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:stone_hoe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:iron_axe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:iron_shovel"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:iron_pickaxe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:iron_hoe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:diamond_axe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:diamond_shovel"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:diamond_pickaxe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:diamond_hoe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:golden_axe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:golden_shovel"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:golden_pickaxe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal
execute if data storage cam:villager toolsmith.A[0].sell{id:"minecraft:golden_hoe"} if score $uses CAM_toolsmith matches 1.. run function cam:villager/toolsmith/villagerdeal


data modify storage cam:villager toolsmith.B[] append from storage cam:villager toolsmith.A[0]
data remove storage cam:villager toolsmith.A[0]
execute if data storage cam:villager toolsmith.A[{}] run function cam:villager/toolsmith/resupply_villager_sub