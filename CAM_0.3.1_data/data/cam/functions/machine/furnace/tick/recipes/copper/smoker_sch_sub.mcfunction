data modify block ~ ~ ~ Items[{Slot:0b}] merge from entity @s ArmorItems[2]
data modify block ~ ~ ~ Items[{Slot:2b}] merge from entity @s ArmorItems[1]
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s CAM_copper_time
tag @s remove CAM_fur_copper_temp