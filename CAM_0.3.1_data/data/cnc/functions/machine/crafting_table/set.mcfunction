advancement revoke @s only cnc:cnc/crafting_table
execute at @s positioned ~ ~1.62 ~ run function cnc:machine/crafting_table/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CNC_block_pos] positioned ~ ~1 ~ anchored eyes run function cnc:machine/crafting_table/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CNC_block_pos] positioned ~ ~-1 ~ anchored eyes run function cnc:machine/crafting_table/ray_armor_stand
execute at @e[type=area_effect_cloud,distance=..7,tag=CNC_block_pos] run function cnc:machine/crafting_table/put
