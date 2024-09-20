summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,DisabledSlots:7967,Tags:["cam_palace_lantern","cam_lantern_temp"],ArmorItems:[{},{},{},{id:"minecraft:lantern",Count:1b,tag:{id:"cam:palace_lantern",CustomModelData:2224001,CAM_palace_lantern:1b,CAM_lantern_type:1}}]}
scoreboard players operation @e[tag=cam_lantern_temp] CAM_lantern_type = @s CAM_lantern_type
execute as @e[type=minecraft:armor_stand,tag=cam_lantern_temp] if score @s CAM_lantern_type matches -1 run function cam:cm/palace_lantern/random
execute as @e[type=minecraft:armor_stand,tag=cam_lantern_temp] at @s run function cam:cm/palace_lantern/type
kill @e[type=area_effect_cloud,distance=..0.01,tag=CAM_block_pos]
tag @e[tag=cam_lantern_temp] remove cam_lantern_temp
execute as @e[type=minecraft:armor_stand,tag=cam_palace_lantern] unless data entity @s ArmorItems[3].tag.display run function cam:cm/palace_lantern/name