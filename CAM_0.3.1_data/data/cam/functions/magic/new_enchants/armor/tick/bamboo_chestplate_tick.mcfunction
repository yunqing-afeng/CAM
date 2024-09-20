execute as @e[nbt={Inventory:[{Slot:102b,tag:{float:1b}}]}] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:slow_falling 1 1 true
execute as @e[nbt={Inventory:[{Slot:102b,tag:{float:1b}}]}] at @s unless block ~ ~ ~ minecraft:water run effect clear @s minecraft:slow_falling
