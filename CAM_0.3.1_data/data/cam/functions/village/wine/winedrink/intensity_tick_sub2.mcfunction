execute store result score $temp CAM_alcodeg_temp run data get storage cam:village wine_tick_temp1.value[0].deg
execute store result storage cam:village wine_tick_temp1.value[0].time int 0.99 run data get storage cam:village wine_tick_temp1.value[0].time

execute as @a if score @s AE_player_id = $temp CAM_alcohol_deg run scoreboard players operation @s CAM_alcohol_deg += $temp CAM_alcodeg_temp
data modify storage cam:village wine_tick_temp2.value append from storage cam:village wine_tick_temp1.value[0]
data remove storage cam:village wine_tick_temp1.value[0]
execute if data storage cam:village wine_tick_temp1.value[0] run function cam:village/wine/winedrink/intensity_tick_sub2