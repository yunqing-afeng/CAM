scoreboard players operation #temp CAM_dis_set = @s CAM_dis_set
execute if score #temp CAM_dis_set matches 1 run scoreboard players set @s CAM_dis_set 0
execute if score #temp CAM_dis_set matches 0 run scoreboard players set @s CAM_dis_set 1
scoreboard players reset #temp CAM_dis_set
