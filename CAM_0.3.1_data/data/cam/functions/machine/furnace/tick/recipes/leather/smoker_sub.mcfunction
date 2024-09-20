data modify entity @s ArmorItems[1] set value {}
data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[2] set from block ~ ~ ~ Items[{Slot:0b}]
data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:2b}]
execute store result score @s CAM_leather_time run data get block ~ ~ ~ CookTime
tag @s add CAM_fur_lea_temp
data modify block ~ ~ ~ Items[{Slot:0b}].id set value "minecraft:potato"
data remove block ~ ~ ~ Items[{Slot:2b}]
schedule function cam:machine/furnace/tick/recipes/leather/smoker_sch 2t
