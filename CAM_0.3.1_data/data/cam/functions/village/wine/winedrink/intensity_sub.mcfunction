execute store result score $pre CAM_wine_compare run data get storage cam:village wine_temp[0].uid 1
execute if score $pre CAM_wine_compare matches 0 run function cam:village/wine/winedrink/intensity_new
execute unless score $pre CAM_wine_compare matches 0 if score $pre CAM_wine_compare = @s AE_player_id run function cam:village/wine/winedrink/intensity_add
execute unless score $pre CAM_wine_compare matches 0 unless score $pre CAM_wine_compare = @s AE_player_id run function cam:village/wine/winedrink/intensity_continue
execute store result score $count CAM_intensity if data storage cam:village wine_temp[]
execute if score $count CAM_intensity matches 0 unless score @s CAM_intense_do matches 1 run function cam:village/wine/winedrink/intensity_new
execute unless score $count CAM_intensity matches 0 run function cam:village/wine/winedrink/intensity_sub