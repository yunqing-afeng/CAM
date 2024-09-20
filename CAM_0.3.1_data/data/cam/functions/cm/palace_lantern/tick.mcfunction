#宫灯
execute as @e[type=minecraft:armor_stand,tag=cam_palace_lantern] at @s run function cam:cm/palace_lantern/palace_lantern_func

#孔明灯
execute as @e[type=minecraft:armor_stand,tag=cam_kongmin_lantern] at @s run function cam:cm/palace_lantern/kongmin_lantern_func
execute as @e[type=slime,tag=CAM_lantern_sub] at @s run function cam:cm/palace_lantern/kongmin_lantern_func_