execute as @a if predicate cam:misc/chinese_knot/place run tag @s add CAM_knot_put_enable

execute as @a[tag=CAM_knot_put_enable,scores={CAM_knot_put=1..}] at @s run function cam:cm/chinese_knot/place
execute as @e[type=item,predicate=cam:misc/chinese_knot/clear,tag=!CAM_knot_tri] at @s run function cam:cm/chinese_knot/clear
execute as @e[type=item_frame,tag=CAM_chinese_knot] unless data entity @s Item run kill @s
execute as @e[type=item,predicate=cam:misc/chinese_knot/chinese_knot] run data modify entity @s Item.tag.CustomModelData set value 9102072
scoreboard players reset @e CAM_knot_put

execute as @a unless predicate cam:misc/chinese_knot/place run tag @s remove CAM_knot_put_enable