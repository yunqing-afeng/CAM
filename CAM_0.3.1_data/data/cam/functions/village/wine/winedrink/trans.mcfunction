advancement revoke @s only cam:countryside_and_magic/drink
#烈度储存
execute unless score @s CAM_intense_temp matches 0 run function cam:village/wine/winedrink/intensity
execute if score @s CAM_intense_temp matches 0 run scoreboard players operation @s CAM_alcohol_deg += @s CAM_alcodeg_temp

scoreboard players operation $wine_1 CAM_capacity = @s CAM_capacity
scoreboard players operation $wine_1 CAM_capacity /= $wine_constant1 CAM_capacity
execute if score @s CAM_alcodeg_temp >= $wine_1 CAM_capacity if score @s CAM_intense_temp matches 1 run effect give @s minecraft:nausea 7 1
execute if score @s CAM_alcodeg_temp >= $wine_1 CAM_capacity if score @s CAM_intense_temp matches 2 run effect give @s minecraft:nausea 5 1

#酒量增加
scoreboard players operation $wine_1 CAM_capacity = @s CAM_capacity
scoreboard players operation $wine_1 CAM_capacity *= $wine_constant2 CAM_capacity
scoreboard players operation $wine_1 CAM_capacity /= $wine_constant3 CAM_capacity

execute if score @s CAM_alcohol_deg <= @s CAM_capacity run scoreboard players operation @s CAM_cap_undrunk += @s CAM_alcodeg_temp
execute if score @s CAM_alcohol_deg > @s CAM_capacity if score @s CAM_alcohol_deg <= $wine_1 CAM_capacity run scoreboard players operation @s CAM_cap_litdrunk += @s CAM_alcodeg_temp
execute if score @s CAM_alcohol_deg > $wine_1 CAM_capacity run scoreboard players operation @s CAM_cap_drunk += @s CAM_alcodeg_temp
execute if score @s CAM_alcohol_deg > $wine_1 CAM_capacity run scoreboard players operation @s CAM_badrink += @s CAM_alcodeg_temp
#力量效果
scoreboard players operation $wine1 CAM_capacity = @s CAM_capacity
scoreboard players operation $wine1 CAM_capacity *= $wine_constant5 CAM_capacity
scoreboard players operation $wine1 CAM_capacity /= $wine_constant1 CAM_capacity
scoreboard players operation $wine2 CAM_capacity = @s CAM_capacity
scoreboard players operation $wine2 CAM_capacity *= $wine_constant3 CAM_capacity
execute if score @s CAM_alcohol_deg >= $wine1 CAM_capacity if score @s CAM_alcohol_deg <= $wine2 CAM_capacity run function cam:village/wine/winedrink/strength