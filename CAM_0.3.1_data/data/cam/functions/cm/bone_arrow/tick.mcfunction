execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:26,Duration:89},{Id:27,Duration:77}]}] at @s run function cam:cm/bone_arrow/trigger

execute as @e[type=arrow,nbt={inGround:1b},tag=CAM_bone_arrow] if score #particle CAM_module matches 1 at @s run function cam:cm/bone_arrow/tick_