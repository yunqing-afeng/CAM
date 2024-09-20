execute store result score $uses CAM_weaponsmith run data get storage cam:villager weaponsmith.A[0].uses
execute if data storage cam:villager weaponsmith.A[0].sell{id:"minecraft:diamond_sword"} if score $uses CAM_weaponsmith matches 1.. run function cam:villager/weaponsmith/weaponsmith/villagerdeal
execute if data storage cam:villager weaponsmith.A[0].sell{id:"minecraft:iron_sword"} if score $uses CAM_weaponsmith matches 1.. run function cam:villager/weaponsmith/weaponsmith/villagerdeal
execute if data storage cam:villager weaponsmith.A[0].sell{id:"minecraft:golden_sword"} if score $uses CAM_weaponsmith matches 1.. run function cam:villager/weaponsmith/weaponsmith/villagerdeal
execute if data storage cam:villager weaponsmith.A[0].sell{id:"minecraft:stone_sword"} if score $uses CAM_weaponsmith matches 1.. run function cam:villager/weaponsmith/weaponsmith/villagerdeal
execute if data storage cam:villager weaponsmith.A[0].sell{id:"minecraft:diamond_axe"} if score $uses CAM_weaponsmith matches 1.. run function cam:villager/weaponsmith/weaponsmith/villagerdeal
execute if data storage cam:villager weaponsmith.A[0].sell{id:"minecraft:iron_axe"} if score $uses CAM_weaponsmith matches 1.. run function cam:villager/weaponsmith/weaponsmith/villagerdeal
data modify storage cam:villager weaponsmith.B[] append from storage cam:villager weaponsmith.A[0]
data remove storage cam:villager weaponsmith.A[0]
execute if data storage cam:villager weaponsmith.A[{}] run function cam:villager/weaponsmith/weaponsmith/resupply_villager_sub