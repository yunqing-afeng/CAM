execute store result score @s CNC_SLout if data block ~ ~ ~ Items[{tag:{id:"cam:extincted_blaze_rod"}}]

execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=2,CNC_SLout=1}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 1
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=3,CNC_SLout=2}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=4,CNC_SLout=3}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 3
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=5,CNC_SLout=4}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 4
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=6,CNC_SLout=5}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 5
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=7,CNC_SLout=6}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 6
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=8,CNC_SLout=7}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 7
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blaze_powder"}]} if entity @s[scores={CNC_table_count=9,CNC_SLout=8}] run item replace block ~ ~ ~ container.16 with minecraft:blaze_rod{Output:1b} 8
