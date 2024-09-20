
scoreboard players operation @s CAM_cat_dxp -= @s CAM_cat_xp
scoreboard players operation @s CAM_cat_dxp *= #c_-1 CAM_cat_dxp
execute if score #tick CAM_cat_dxp matches 1 run scoreboard players operation @s CAM_cat_dxp1 = @s CAM_cat_dxp
execute if score #tick CAM_cat_dxp matches 2 run scoreboard players operation @s CAM_cat_dxp2 = @s CAM_cat_dxp
execute if score #tick CAM_cat_dxp matches 3 run scoreboard players operation @s CAM_cat_dxp3 = @s CAM_cat_dxp
execute if score #tick CAM_cat_dxp matches 4 run scoreboard players operation @s CAM_cat_dxp4 = @s CAM_cat_dxp
execute if score #tick CAM_cat_dxp matches 5 run scoreboard players operation @s CAM_cat_dxp5 = @s CAM_cat_dxp

scoreboard players set @s CAM_cat_dxpt 0
scoreboard players operation @s CAM_cat_dxpt += @s CAM_cat_dxp1
scoreboard players operation @s CAM_cat_dxpt += @s CAM_cat_dxp2
scoreboard players operation @s CAM_cat_dxpt += @s CAM_cat_dxp3
scoreboard players operation @s CAM_cat_dxpt += @s CAM_cat_dxp4
scoreboard players operation @s CAM_cat_dxpt += @s CAM_cat_dxp5

execute if score @s CAM_cat_dxpt matches 5.. if score @s CAM_cat_cool matches ..0 at @s run function cam:magic/new_enchants/catalyze/function

scoreboard players operation @s CAM_cat_dxp = @s CAM_cat_xp