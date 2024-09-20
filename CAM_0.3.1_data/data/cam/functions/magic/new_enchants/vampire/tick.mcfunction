execute as @a[scores={CAM_damage2=40..},predicate=cam:enchant/vampire] at @s run function cam:magic/new_enchants/vampire/random
execute as @e[type=minecraft:area_effect_cloud,tag=vampire] at @s run tp @s @a[limit=1,sort=nearest,scores={CAM_vampire_lock=1}]
execute as @a[scores={CAM_vampire_lock=1}] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=vampire,distance=..0.1] run scoreboard players reset @s CAM_vampire_lock
scoreboard players reset @a CAM_damage2