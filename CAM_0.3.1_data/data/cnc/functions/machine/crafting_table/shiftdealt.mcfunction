setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{tag:{Output:1b}}].id
data modify block ~ 319 ~ Items[0].Count set from entity @s Inventory[{tag:{Output:1b}}].Count
data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{tag:{Output:1b}}].tag
execute as @s store result score @s CNC_shiftcount run data get block ~ 319 ~ Items[0].Count
scoreboard players operation @s CNC_shiftcount *= @s CNC_shiftdealt
function cnc:machine/crafting_table/sub_shiftdealt
setblock ~ 319 ~ air