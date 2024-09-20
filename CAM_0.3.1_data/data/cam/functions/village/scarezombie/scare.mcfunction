tag @s add CAM_scared
summon snowball ~ ~1 ~ {Tags:["CAM_scare_ball"],Motion:[0.0d,-0.1d,0.0d],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:9102110}}}
execute as @e[tag=CAM_scare_ball] run data modify entity @s Owner set from entity @e[tag=CAM_sc_active,limit=1,sort=nearest] UUID
tag @e[tag=CAM_scare_ball] remove CAM_scare_ball