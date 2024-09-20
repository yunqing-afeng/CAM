scoreboard players reset @s CNC_tag_out
scoreboard players reset @s CNC_craftag

scoreboard players set @s CNC_tag_id 2
data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[2].id set from block ~ ~ ~ Items[{Slot:2b}].id
execute if entity @s[predicate=cam:crafting_table/planks] run scoreboard players add @s CNC_craftag 1
data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[2].id set from block ~ ~ ~ Items[{Slot:10b}].id
execute if entity @s[predicate=cam:crafting_table/planks] run scoreboard players add @s CNC_craftag 1

data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[2].id set from block ~ ~ ~ Items[{Slot:12b}].id
execute if entity @s[predicate=cam:crafting_table/planks] run scoreboard players add @s CNC_craftag 1

execute if score @s CNC_craftag matches 3 run scoreboard players set @s CNC_tag_out 1

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:stick"},{Slot:2b},{Slot:10b},{Slot:12b}]} if entity @s[scores={CNC_table_count=5,CNC_tag_out=1}] run item replace block ~ ~ ~ container.16 with wooden_sword{id:"cam:wooden_harpoon",water:1b,display:{Name:"[{\"translate\":\"item.cam.wooden_harpoon\",\"italic\":\"false\"}]"},CustomModelData:9102042,Output:1b}