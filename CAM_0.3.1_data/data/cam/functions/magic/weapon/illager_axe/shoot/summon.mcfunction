execute at @s run summon marker ~ ~ ~ {Tags:["CAM_shfacing"]}
execute at @s run tp @e[type=marker,tag=CAM_shfacing] ^ ^ ^ ~ ~
execute store result entity @e[tag=CAM_shfacing,limit=1] Rotation[1] float 0.3 run data get entity @e[tag=CAM_shfacing,limit=1] Rotation[1]
execute at @s anchored eyes run summon minecraft:arrow ~ 319 ~ {Tags:["CAM_extend","CAM_init"],damage:2.0d,PierceLevel:0b,shake:0b,crit:0b,LeftOwner:0b,pickup:0b,PortalCooldown:10}
execute at @s anchored eyes run tp @e[type=arrow,tag=CAM_init,limit=1,sort=nearest] ~ ~1.1 ~
execute if entity @s[gamemode=creative] run data modify entity @e[tag=CAM_init,limit=1] pickup set value 2b
execute if entity @s[gamemode=!creative] run data modify entity @e[tag=CAM_init,limit=1] pickup set value 1b
data modify entity @e[tag=CAM_init,limit=1] Owner set from entity @s
summon minecraft:marker 0.0 0.0 0.0 {Tags:["CAM_shoottemp"]}
execute as @e[tag=CAM_shoottemp] at @s rotated as @e[tag=CAM_shfacing,limit=1] run teleport @s ^ ^ ^3.0
data modify entity @e[type=arrow,tag=CAM_init,limit=1] Motion set from entity @e[tag=CAM_shoottemp,limit=1] Pos
tag @e[type=arrow,tag=CAM_init] remove CAM_init
kill @e[tag=CAM_shoottemp]
kill @e[tag=CAM_shfacing]