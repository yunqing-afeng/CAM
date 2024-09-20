#清除手里的物品
clear @a[sort=nearest,limit=1,scores={CNC_rclick=1..},distance=..5] #uin:tech/all{Output:1b}
#重载配方
item replace block ~ ~ ~ container.16 with air
function #cnc:recipes
#物品给予
setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify block ~ 319 ~ Items[0] set from block ~ ~ ~ Items[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:16b}] run data modify block ~ 319 ~ Items[0] set value {Slot:0b,id:"minecraft:air",Count:1b}
execute as @e[sort=nearest,limit=1,scores={CNC_rclick=1..},distance=..5] store result score $temp CNC_rclick_suc run loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 319 ~ air
#清除合成区物品
execute if score $temp CNC_rclick_suc matches 1.. run function cnc:machine/crafting_table/recipes/clear
