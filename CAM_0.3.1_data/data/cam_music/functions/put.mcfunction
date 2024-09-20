stopsound @a[distance=..65] record minecraft:music_disc.13
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,DisabledSlots:7967,Tags:["custom_music"],Marker:1b,Rotation:[0.0f,0.0f],Fire:32767s}
title @a[distance=..65] actionbar [{"text":"","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
kill @e[type=area_effect_cloud,distance=..0.01,tag=music_block_pos]
execute as @e[type=minecraft:armor_stand,tag=custom_music,distance=..0.1] at @s run function music:exhaustion