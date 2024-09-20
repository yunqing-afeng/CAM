scoreboard players set @s CAM_dt_confirm 1
execute on vehicle on passengers if entity @s[type=marker] run scoreboard players set @s CAM_dt_confirm 0

execute if score @s CAM_dt_confirm matches 1 run tag @s add CAM_dt_confirm

tag @s add CAM_dtdt_temp
execute on vehicle store result score @e[tag=CAM_dtdt_temp] CAM_dt_deathtime run data get entity @s DeathTime
tag @s remove CAM_dtdt_temp