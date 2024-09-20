#功能
execute as @s[type=item,tag=cam_dis_item] at @s positioned ~ ~-1 ~ unless entity @e[tag=CAM_dis_ready,distance=..0.5] run kill @s
execute as @s[type=item,tag=cam_dis_item] at @s if entity @a[distance=..20] run function cam:machine/item_displayer/display

