execute if entity @s[distance=..7] positioned ^ ^ ^ if block ~ ~ ~ minecraft:wheat align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=foo_block] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["CAM_block_pos"]}
execute if entity @s[distance=..7] unless entity @e[type=minecraft:area_effect_cloud,distance=..6,tag=CAM_block_pos] positioned ^ ^ ^0.005 anchored feet run function cam:cm/rice/ray_armor_stand