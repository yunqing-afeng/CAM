data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{Slot:30b}].id
data modify block ~ 319 ~ Items[0].Count set from entity @s Inventory[{Slot:30b}].Count
data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:30b}].tag
data remove block ~ 319 ~ Items[0].tag.CAM_input
loot replace entity @s inventory.21 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}