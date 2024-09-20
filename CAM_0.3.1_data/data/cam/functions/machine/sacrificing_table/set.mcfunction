advancement revoke @s only cam:countryside_and_magic/sacrificing_table
execute at @s positioned ~ ~1.62 ~ run function cam:machine/sacrificing_table/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] positioned ~ ~1.62 ~ positioned ~ ~1 ~ anchored eyes run function cam:machine/sacrificing_table/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] positioned ~ ~1.62 ~ positioned ~ ~-1 ~ anchored eyes run function cam:machine/sacrificing_table/ray_armor_stand
execute store result score #temp CAM_sac_cooldown run data get entity @s SelectedItem.tag.CAM_cooldown
execute at @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] run function cam:machine/sacrificing_table/put