execute if block ~ ~ ~ #uin:general/lanterns run playsound minecraft:block.lantern.break block @a ~ ~ ~
execute if block ~ ~ ~ #uin:general/torches run playsound minecraft:block.wood.break block @a ~ ~ ~
execute if block ~ ~ ~ minecraft:lantern run particle minecraft:block minecraft:lantern ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:soul_lantern run particle minecraft:block minecraft:soul_lantern ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:torch run particle minecraft:block minecraft:torch ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:soul_torch run particle minecraft:block minecraft:soul_torch ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:wall_torch run particle minecraft:block minecraft:torch ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:soul_wall_torch run particle minecraft:block minecraft:soul_torch ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ #cam:light_breakable[waterlogged=false] run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ #cam:light_breakable[waterlogged=true] run setblock ~ ~ ~ minecraft:water
execute if block ~ ~ ~ #cam:light_breakable run setblock ~ ~ ~ minecraft:air
kill @s[type=minecraft:arrow]
