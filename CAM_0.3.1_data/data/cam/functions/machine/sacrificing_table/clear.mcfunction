execute positioned ~ ~1 ~ as @e[type=item,tag=!cam_sac_item,distance=..0.5] run data modify entity @s PortalCooldown set value 1
execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2] run loot spawn ~ ~ ~ loot cam:cam/sacrificing_table
execute positioned ~ ~1 ~ run tag @e[type=item,tag=!cam_sac_item,nbt={PortalCooldown:0},nbt={Item:{Count:1b}},distance=..1] add CAM_sac_table
execute at @s run data modify entity @e[type=item,tag=CAM_sac_table,sort=nearest,limit=1] Item.tag.CAM_cooldown set from entity @s PortalCooldown
tag @e remove CAM_sac_table
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,sort=nearest,limit=1]
kill @s