execute store result score @s CAM_copper_count run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players add @s CAM_copper_count 1
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s CAM_copper_count
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:0b}].Count
data modify block ~ ~ ~ CookTime set value 0s
