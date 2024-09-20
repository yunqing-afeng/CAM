data modify entity @s ArmorItems[1] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[1].id set from block ~ ~ ~ Items[{Slot:14b}].id
data modify entity @s ArmorItems[1].tag set from block ~ ~ ~ Items[{Slot:14b}].tag
execute if predicate cam:sacrifice/sacrifice run loot replace block ~ ~ ~ container.1 loot cam:sacrificing_table/sacrifice
execute store result score @s CAM_sac_failure run data get block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{id:"cam:breakable"}].lvl
scoreboard players add @s CAM_sac_failure 1
scoreboard players set #random_min random 1
scoreboard players set #random_max random 65536
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random *= @s CAM_sac_failure
execute unless score @s random matches 0..65536 run data modify block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments append value {id:"cam:failure"}

data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{Slot:0b}]
data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{Slot:1b}]

execute if predicate cam:sacrifice/recast run function cam:machine/sacrificing_table/recast

setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0] set from block ~ ~ ~ Items[{Slot:4b}]
execute if predicate cam:sacrifice/sacrifice unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} unless data block ~ ~ ~ Items[{Slot:1b}].tag.CAM_spe run data modify block ~ 319 ~ Items[0].tag.CAM_Enchantments[{Slot:0b}] merge from block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments[0]
execute if predicate cam:sacrifice/sacrifice unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_spe:2b}}]} run data modify block ~ 319 ~ Items[0].tag.CAM_Enchantments[{Slot:2b}] merge from block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments[0]
execute if predicate cam:sacrifice/sacrifice unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_spe:1b}}]} run data modify block ~ 319 ~ Items[0].tag.CAM_Enchantments[{Slot:3b}] merge from block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments[0]
execute if predicate cam:sacrifice/sacrifice unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} unless data block ~ 319 ~ Items[0].tag.Enchantments run data modify block ~ 319 ~ Items[0].tag.Enchantments append value {}
execute if predicate cam:sacrifice/recasting unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} if data block ~ 319 ~ Items[0].tag.CAM_Enchantments run data modify block ~ 319 ~ Items[0].tag.Enchantments append value {}

execute if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} run function cam:machine/sacrificing_table/fail
execute if predicate cam:sacrifice/sapphire run function cam:machine/sacrificing_table/again

item replace block ~ ~ ~ container.4 with minecraft:firework_star{CustomModelData:9102068,display:{Name:"{\"translate\":\"item.cam.sacrificing_table\"}"},CAM_bg:1b}

execute unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} run function cam:machine/sacrificing_table/lore

execute if predicate cam:sacrifice/ender_pearl positioned ~ ~1 ~ as @e[type=item,tag=!cam_sac_item,distance=..0.5] run data modify entity @s PortalCooldown set value 1
loot spawn ~ ~1 ~ mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
execute if predicate cam:sacrifice/ender_pearl positioned ~ ~1 ~ run tag @e[type=item,tag=!cam_sac_item,nbt={PortalCooldown:0},nbt={Item:{Count:1b}},distance=..1] add CAM_sac_ender
execute as @e[tag=CAM_sac_ender,nbt=!{Item:{id:"minecraft:air"}}] at @s run function cam:machine/sacrificing_table/ender



execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result block ~ ~ ~ Items[{Slot:14b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:14b}].Count
setblock ~ 319 ~ air


data modify entity @s PortalCooldown set value 6000
data remove block ~ ~ ~ Lock