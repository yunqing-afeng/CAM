scoreboard players operation @s CNC_shiftdealt /= @s CNC_shift_muti
item replace block ~ ~ ~ container.16 with minecraft:air
function cnc:machine/crafting_table/recipe
scoreboard players operation @s CNC_shiftdealt *= @s CNC_shift_muti
execute if data block ~ ~ ~ {Items:[{Slot:16b}]} if score @s CNC_shiftdealt >= @s CNC_player_count run tag @a[tag=CNC_shiftcheck] add CNC_comp
execute if data block ~ ~ ~ {Items:[{Slot:16b}]} if score @s CNC_shiftdealt < @s CNC_player_count run function cnc:machine/crafting_table/shifttest