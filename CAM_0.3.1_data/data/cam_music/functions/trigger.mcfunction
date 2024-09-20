execute at @s positioned ~ ~1.62 ~ run function music:ray
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=music_block_pos] positioned ~ ~ ~ anchored eyes run function music:ray
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=music_block_pos] positioned ~ ~-1 ~ anchored eyes run function music:ray
execute at @e[type=area_effect_cloud,distance=..7,tag=music_block_pos] run function music:put

