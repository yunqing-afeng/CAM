execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:egg"}},tag=!cam_triggered] at @s store result score @s CAM_chicken if entity @e[type=minecraft:chicken,distance=..128]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:egg"}},tag=!cam_triggered] if score @s CAM_chicken <= $max CAM_chicken at @s run function cam:village/egg/trigger
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:egg"}},tag=cam_triggered] at @s run function cam:village/egg/execute
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:egg"}},tag=!cam_triggered] run tag @s add cam_triggered