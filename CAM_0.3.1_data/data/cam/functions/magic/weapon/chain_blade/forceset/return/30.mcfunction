data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{Slot:30b}].id
data modify block ~ 319 ~ Items[0].Count set from entity @s Inventory[{Slot:30b}].Count
data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:30b}].tag
data modify block ~ 319 ~ Items[0].tag merge value {CAM_chainblade:0b,display:{Name:"[{\"translate\":\"item.cam.chain_blade\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}}
execute store result block ~ 319 ~ Items[0].tag.CustomModelData int 0.99999999 run data get block ~ 319 ~ Items[0].tag.CustomModelData
loot replace entity @s inventory.21 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}