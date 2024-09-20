scoreboard players operation $wine1 CAM_alcohol_deg = @s CAM_alcohol_deg
scoreboard players operation $wine1 CAM_capacity = @s CAM_capacity
scoreboard players operation $wine1 CAM_alcohol_deg *= $wine_constant4 CAM_capacity
scoreboard players operation $wine1 CAM_alcohol_deg /= $wine1 CAM_capacity
scoreboard players operation $wine2 CAM_alcohol_deg = @s CAM_alcodeg_temp
scoreboard players operation $wine2 CAM_alcohol_deg *= $wine1 CAM_alcohol_deg
scoreboard players operation $wine2 CAM_alcohol_deg /= $wine_constant4 CAM_capacity
scoreboard players operation $wine2 CAM_alcohol_deg /= $wine_constant1 CAM_capacity

execute if score @s CAM_dstrength matches -1 if score @s CAM_dstrength_gt matches ..0 run scoreboard players set @s CAM_dstrength 200
scoreboard players operation @s CAM_dstrength_gt += $wine2 CAM_alcohol_deg
