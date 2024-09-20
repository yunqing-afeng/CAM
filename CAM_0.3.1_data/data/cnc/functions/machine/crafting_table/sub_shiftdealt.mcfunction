execute if score @s CNC_shiftcount matches 64.. run data modify block ~ 319 ~ Items[0].Count set value 64
execute as @s if score @s CNC_shiftcount matches 1..64 store result block ~ 319 ~ Items[0].Count byte 1 run scoreboard players get @s CNC_shiftcount
execute as @s if score @s CNC_shiftcount matches 1.. run loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
scoreboard players remove @s CNC_shiftcount 64
execute if score @s CNC_shiftcount matches 1.. run function cnc:machine/crafting_table/sub_shiftdealt
execute if score @s CNC_shiftcount matches ..0 run data remove block ~ 319 ~ Items[0]