#功能
execute as @s[type=item,tag=cam_sac_item] at @s positioned ~ ~-1 ~ unless entity @e[tag=CAM_sac_ready,distance=..0.5] run kill @s
execute as @s[type=item,tag=cam_sac_item] at @s if entity @a[distance=..20] run function cam:machine/sacrificing_table/display

#过程
execute as @s[type=item,tag=cam_sac_item,tag=CAM_sac_start] store result score @s CAM_sac_process run data get entity @s PortalCooldown
execute as @s[type=item,tag=cam_sac_item,tag=CAM_sac_start] unless score @s CAM_sac_process matches ..31 if score #particle CAM_module matches 1 at @s run particle enchant ~ ~1 ~ 0 0 0 10 100 normal
#结果
execute as @s[type=item,tag=cam_sac_item,tag=CAM_sac_start] if entity @s[nbt={PortalCooldown:0}] at @s run function cam:machine/sacrificing_table/finish
