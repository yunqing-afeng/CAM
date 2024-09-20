function cam:magic/weapon/chain_blade/forceset/return
setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag
execute store result score @s CAM_chain_model run data get block ~ 319 ~ Items[0].tag.CustomModelData
scoreboard players add @s CAM_chain_model 1
execute store result block ~ 319 ~ Items[0].tag.CustomModelData int 1 run scoreboard players get @s CAM_chain_model 
data modify block ~ 319 ~ Items[0].tag merge value {CAM_chainblade:1b}
loot replace entity @s weapon.mainhand 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}

execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{Slot:-106b}].id
execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag
execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0].Count set from entity @s Inventory[{Slot:-106b}].Count
execute if entity @s[predicate=cam:weapon/chain_blade/-106] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{}}]}] run data remove block ~ 319 ~ Items[0].tag
execute unless entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0] set value {id:"minecraft:air",Slot:1b,Count:1b}
execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify storage cam:chainblade Item set from block ~ 319 ~ Items[0]
execute unless entity @s[predicate=cam:weapon/chain_blade/-106] run data modify storage cam:chainblade Item set value {id:"cam:none",Count:1b,Slot:0b}
data modify block ~ 319 ~ Items[] set value {Slot:0b,Count:1b,id:"minecraft:fishing_rod",Count:1b,tag:{CAM_chainblade:2b,Unbreakable:1b,HideFlags:4}}
execute store result score @s CAM_chain_model run data get entity @s SelectedItem.tag.CustomModelData
scoreboard players add @s CAM_chain_model 2
execute store result block ~ 319 ~ Items[0].tag.CustomModelData int 1 run scoreboard players get @s CAM_chain_model
data modify block ~ 319 ~ Items[0].tag.display set from entity @s SelectedItem.tag.display
execute if data entity @s SelectedItem.tag.Enchantments run data modify block ~ 319 ~ Items[0].tag.Enchantments set from entity @s SelectedItem.tag.Enchantments
loot replace entity @s weapon.offhand 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}

data modify block ~ 319 ~ Items[0] set from storage cam:chainblade Item
loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}


setblock ~ 319 ~ air