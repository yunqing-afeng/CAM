execute if data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:honey_bottle"}]} unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:honey_bottle",Count:1b}]} run give @a[scores={CNC_bottlecount=1..},limit=1,sort=nearest] glass_bottle 1 
execute if data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:honey_bottle",Count:1b}]} run item replace block ~ ~ ~ container.20 with minecraft:glass_bottle 2
execute as @s unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:potion"}]} unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:honey_bottle",Count:1b}]} store result block ~ ~ ~ Items[{Slot:20b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:20b}].Count
