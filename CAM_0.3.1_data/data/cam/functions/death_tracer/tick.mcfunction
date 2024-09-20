kill @e[type=marker,tag=CAM_dtracer,tag=CAM_dt_confirm]
execute as @e[tag=!CAM_dt,type=#uin:tech/mobs,type=!player] at @s run function cam:death_tracer/trace

execute as @e[type=marker,tag=CAM_dtracer] run function cam:death_tracer/tick_



#execute as @e[type=marker,tag=CAM_dtracer,tag=CAM_dt_confirm] run say 1