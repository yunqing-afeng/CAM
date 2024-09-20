summon marker ~ ~ ~ {Tags:["CAM_dtracer","CAM_dtracer_temp"]}
execute as @e[type=marker,tag=CAM_dtracer_temp] at @s run ride @s mount @e[type=!marker,sort=nearest,limit=1]
execute as @e[type=marker,tag=CAM_dtracer_temp] run tag @s remove CAM_dtracer_temp
tag @s add CAM_dt