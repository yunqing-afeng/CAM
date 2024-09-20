execute if entity @s[nbt={inGround:1b}] run kill @s[type=minecraft:arrow]
playsound minecraft:block.glass.break block @a ~ ~ ~

execute if block ~ ~ ~ minecraft:white_stained_glass_pane run particle minecraft:block minecraft:white_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:orange_stained_glass_pane run particle minecraft:block minecraft:orange_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:magenta_stained_glass_pane run particle minecraft:block minecraft:magenta_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run particle minecraft:block minecraft:light_blue_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:yellow_stained_glass_pane run particle minecraft:block minecraft:yellow_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:lime_stained_glass_pane run particle minecraft:block minecraft:lime_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:pink_stained_glass_pane run particle minecraft:block minecraft:pink_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run particle minecraft:block minecraft:gray_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:light_gray_stained_glass_pane run particle minecraft:block minecraft:light_gray_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:cyan_stained_glass_pane run particle minecraft:block minecraft:cyan_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:purple_stained_glass_pane run particle minecraft:block minecraft:purple_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:blue_stained_glass_pane run particle minecraft:block minecraft:blue_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:brown_stained_glass_pane run particle minecraft:block minecraft:brown_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:green_stained_glass_pane run particle minecraft:block minecraft:green_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:red_stained_glass_pane run particle minecraft:block minecraft:red_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:black_stained_glass_pane run particle minecraft:block minecraft:black_stained_glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal
execute if block ~ ~ ~ minecraft:glass_pane run particle minecraft:block minecraft:glass_pane ~ ~ ~ 0.2 0.2 0.2 1 20 normal




execute if block ~ ~ ~ #uin:general/glass_panes[waterlogged=false] run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ #uin:general/glass_panes[waterlogged=true] run setblock ~ ~ ~ minecraft:water

