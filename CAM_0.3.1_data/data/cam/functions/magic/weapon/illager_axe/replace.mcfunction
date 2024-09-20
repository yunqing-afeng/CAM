setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{Slot:-106b}].id
execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag
execute if entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0].Count set from entity @s Inventory[{Slot:-106b}].Count
execute if entity @s[predicate=cam:weapon/chain_blade/-106] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{}}]}] run data remove block ~ 319 ~ Items[0].tag
execute unless entity @s[predicate=cam:weapon/chain_blade/-106] run data modify block ~ 319 ~ Items[0] set value {id:"minecraft:air",Slot:1b,Count:1b}

item replace entity @s weapon.offhand with air
loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}


setblock ~ 319 ~ air