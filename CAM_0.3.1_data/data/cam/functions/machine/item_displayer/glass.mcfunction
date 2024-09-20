scoreboard players operation #temp CAM_dis_glass = @s CAM_dis_glass
execute if score #temp CAM_dis_glass matches 1 run scoreboard players set @s CAM_dis_glass 0
execute if score #temp CAM_dis_glass matches 0 run scoreboard players set @s CAM_dis_glass 1
scoreboard players reset #temp CAM_dis_glass
