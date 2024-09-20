advancement revoke @s only cam:countryside_and_magic/kongmin_lantern
execute as @a if data entity @s SelectedItem.tag.CAM_palace_lantern store result score @s CAM_lantern_type run data get entity @s SelectedItem.tag.CAM_lantern_type
execute as @a if data entity @s Inventory[{Slot:-106b}].tag.CAM_palace_lantern unless data entity @s SelectedItem.tag.CAM_palace_lantern store result score @s CAM_lantern_type run data get entity @s Inventory[{Slot:-106b}].tag.CAM_lantern_type
execute at @s positioned ~ ~1.62 ~ run function cam:cm/palace_lantern/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] positioned ~ ~1 ~ anchored eyes run function cam:cm/palace_lantern/ray_armor_stand
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] positioned ~ ~-1 ~ anchored eyes run function cam:cm/palace_lantern/ray_armor_stand
execute at @e[type=area_effect_cloud,distance=..7,tag=CAM_block_pos] run function cam:cm/palace_lantern/put_2
