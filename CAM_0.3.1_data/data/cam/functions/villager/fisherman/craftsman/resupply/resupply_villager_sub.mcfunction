execute store result score $uses CAM_craftsman run data get storage cam:villager craftsman.A[0].uses


execute if data storage cam:villager craftsman.A[0].sell{id:"minecraft:wooden_sword"} if score $uses CAM_craftsman matches 1 run function cam:villager/fisherman/craftsman/resupply/villagerdeal_weapon
execute if data storage cam:villager craftsman.A[0].sell{id:"minecraft:stone_sword"} if score $uses CAM_craftsman matches 1 run function cam:villager/fisherman/craftsman/resupply/villagerdeal_weapon
execute if data storage cam:villager craftsman.A[0].sell{id:"minecraft:diamond_sword"} if score $uses CAM_craftsman matches 1 run function cam:villager/fisherman/craftsman/resupply/villagerdeal_weapon
execute if data storage cam:villager craftsman.A[0].sell{id:"minecraft:iron_sword"} unless data storage cam:villager craftsman.A[0].sell{id:"minecraft:iron_sword",tag:{id:"cam:glaive"}} if score $uses CAM_craftsman matches 1 run function cam:villager/fisherman/craftsman/resupply/villagerdeal_weapon
execute if data storage cam:villager craftsman.A[0].sell{id:"minecraft:lantern"} if score $uses CAM_craftsman matches 1 run function cam:villager/fisherman/craftsman/resupply/villagerdeal_lantern
execute if data storage cam:villager craftsman.A[0].sell{id:"minecraft:item_frame"} if score $uses CAM_craftsman matches 6 run function cam:villager/fisherman/craftsman/resupply/villagerdeal_catcher
execute if data storage cam:villager craftsman.A[0].buy{tag:{id:"cam:red_string"}} run function cam:villager/fisherman/craftsman/resupply/villagerdeal_catcher


data modify storage cam:villager craftsman.B[] append from storage cam:villager craftsman.A[0]
data remove storage cam:villager craftsman.A[0]
execute if data storage cam:villager craftsman.A[{}] run function cam:villager/fisherman/craftsman/resupply/resupply_villager_sub