advancement revoke @s only cam:countryside_and_magic/item_displayer
execute at @s positioned ~ ~1.62 ~ run function cam:machine/item_displayer/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] positioned ~ ~1.62 ~ positioned ~ ~1 ~ anchored eyes run function cam:machine/item_displayer/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] positioned ~ ~1.62 ~ positioned ~ ~-1 ~ anchored eyes run function cam:machine/item_displayer/ray_armor_stand
execute at @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] run function cam:machine/item_displayer/put