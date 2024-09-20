tag @s add CAM_crafts_temp
summon area_effect_cloud ~ ~ ~ {Tags:["CAM_craftstemp"]}
execute as @e[type=area_effect_cloud,tag=CAM_craftstemp] store result entity @s Pos[0] double 1 run data get entity @e[type=villager,tag=CAM_crafts_temp,sort=nearest,limit=1] Brain.memories."minecraft:job_site".value.pos[0]
execute as @e[type=area_effect_cloud,tag=CAM_craftstemp] store result entity @s Pos[1] double 1 run data get entity @e[type=villager,tag=CAM_crafts_temp,sort=nearest,limit=1] Brain.memories."minecraft:job_site".value.pos[1]
execute as @e[type=area_effect_cloud,tag=CAM_craftstemp] store result entity @s Pos[2] double 1 run data get entity @e[type=villager,tag=CAM_crafts_temp,sort=nearest,limit=1] Brain.memories."minecraft:job_site".value.pos[2]
execute as @e[type=area_effect_cloud,tag=CAM_craftstemp] at @s if entity @e[type=armor_stand,tag=CNC_craft_enable,distance=..1] as @e[type=villager,tag=CAM_crafts_temp] at @s run function cam:villager/fisherman/craftsman/level1
tag @s remove CAM_crafts_temp
tag @s add CAM_craftsmantriggered
