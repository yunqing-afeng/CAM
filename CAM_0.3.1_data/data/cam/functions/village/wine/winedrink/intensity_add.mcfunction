scoreboard players operation $pre CAM_intensity = @s CAM_intense_temp
scoreboard players operation $pre CAM_intensity *= $wine_constant4 CAM_capacity
scoreboard players operation $pre CAM_alcohol_deg = @s CAM_alcodeg_temp
scoreboard players operation $pre CAM_alcohol_deg /= $pre CAM_intensity
data modify storage cam:village wine_temp[0].value append value {}
execute store result storage cam:village wine_temp[0].value[-1].time int 1 run scoreboard players get $pre CAM_intensity
execute store result storage cam:village wine_temp[0].value[-1].deg int 1 run scoreboard players get $pre CAM_alcohol_deg
scoreboard players set @s CAM_intense_do 1

data modify storage cam:village wine_pre append from storage cam:village wine_temp[0]
data remove storage cam:village wine_temp[0]
