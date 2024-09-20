execute as @a[predicate=cam:misc/woolball] run tag @s add CAM_p_woolball
execute as @a[predicate=!cam:misc/woolball] run tag @s remove CAM_p_woolball

execute as @a[tag=CAM_p_woolball] at @s if score @s CAM_woolball matches 1.. as @e[type=snowball,sort=nearest,limit=1] at @s run function cam:cm/woolball/function

execute as @e[tag=CAM_woolball] at @s run function cam:cm/woolball/function_3
kill @e[tag=CAM_woolball_r,nbt={OnGround:1b}]

scoreboard players set @a CAM_woolball 0





#execute as @a[tag=CAM_p_woolball] at @s if score @s CAM_woolball matches 1.. as @e[type=snowball,sort=nearest,limit=1] at @s run tag @s add CAM_woolball
#execute as @e[tag=CAM_woolball] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["CAM_woolball_temp"],Radius:0}
#execute as @e[tag=CAM_woolball] at @s run tp @e[type=area_effect_cloud,tag=CAM_woolball_temp,nbt={Duration:1},limit=1,sort=nearest] @s
#execute as @e[tag=CAM_woolball_temp,nbt={Duration:1}] at @s unless entity @e[type=snowball,tag=CAM_woolball,distance=..0.5] run function cam:cm/woolball/function_2