data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{Slot:8b}].id
data modify block ~ 319 ~ Items[0].Count set from entity @s Inventory[{Slot:8b}].Count
data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:8b}].tag
data remove block ~ 319 ~ Items[0].tag.Output
execute store result score @s CNC_tag_num run data get block ~ 319 ~ Items[0].tag
execute if score @s CNC_tag_num matches 0 run data remove block ~ 319 ~ Items[0].tag
loot replace entity @s hotbar.8 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}