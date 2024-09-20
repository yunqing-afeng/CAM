tag @s add CAM_sc_active
execute as @e[type=#cam:zombies,distance=..20,limit=1,tag=!CAM_scared] at @s anchored eyes positioned ^ ^ ^ run function cam:village/scarezombie/scare
tag @s remove CAM_sc_active