summon minecraft:armor_stand ~ ~ ~ {Invulnerable:0b,NoGravity:0b,Invisible:1b,Small:1b,DisabledSlots:7967,Tags:["cam_kongmin_lantern","cam_lantern_temp"],ArmorItems:[{},{},{},{id:"minecraft:lantern",Count:1b,tag:{CustomModelData:2224001,CAM_palace_lantern:2b,CAM_lantern_type:1}}]}
summon minecraft:slime ~ 319 ~ {NoAI:1b,Silent:1b,DeathLootTable:"entities/empty",ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b}],Health:1,Size:0,Tags:["CAM_lantern_sub","CAM_lantern_sub_"]}
execute as @e[type=slime,tag=CAM_lantern_sub_,sort=nearest,limit=1] run tp ~ ~ ~
execute as @e[type=armor_stand,tag=cam_kongmin_lantern,limit=1,sort=nearest] run scoreboard players operation @s CAM_lantern_code = # CAM_lantern_code
execute as @e[type=slime,tag=CAM_lantern_sub_,sort=nearest,limit=1] run scoreboard players operation @s CAM_lantern_code = # CAM_lantern_code


scoreboard players operation @e[tag=cam_lantern_temp] CAM_lantern_type = @s CAM_lantern_type
execute as @e[type=minecraft:armor_stand,tag=cam_lantern_temp] if score @s CAM_lantern_type matches -1 run function cam:cm/palace_lantern/random
execute as @e[type=minecraft:armor_stand,tag=cam_lantern_temp] at @s run function cam:cm/palace_lantern/type_2
kill @e[type=area_effect_cloud,distance=..0.01,tag=CAM_block_pos]
tag @e[tag=cam_lantern_temp] remove cam_lantern_temp
execute if block ~ ~ ~ minecraft:lantern[waterlogged= false] run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:lantern[waterlogged= true] run setblock ~ ~ ~ minecraft:water

execute as @e[type=slime,tag=CAM_lantern_sub_] run tag @s remove CAM_lantern_sub_
scoreboard players add # CAM_lantern_code 1