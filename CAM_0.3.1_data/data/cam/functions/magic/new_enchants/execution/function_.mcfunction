tag @s add CAM_executer
execute as @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1,tag=!CAM_executer] at @s run function cam:magic/new_enchants/execution/execute
tag @s remove CAM_executer