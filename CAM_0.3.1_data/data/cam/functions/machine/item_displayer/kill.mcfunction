scoreboard players operation #2 CAM_dis_number = @s CAM_dis_number

#execute as @e[type=item,tag=cam_dis_item] if score @s CAM_dis_number = #2 CAM_dis_number run  angry_villager ~ ~2 ~ 0 0 0 1 1
execute as @e[type=item,tag=cam_dis_item] if score @s CAM_dis_number = #2 CAM_dis_number run kill @s


