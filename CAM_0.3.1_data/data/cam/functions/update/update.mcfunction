#需要修改：tick，load，update（主要用于模块菜单），lay/welcome
execute unless score $version CAM_univar matches -2147483648..2147483647 run function cam:update/versions/0.2.2
execute unless score $version CAM_univar matches 19.. run function cam:update/versions/0.2.2
execute unless score $version CAM_univar matches 20.. run function cam:update/versions/memory3.0
execute unless score $version CAM_univar matches 30.. run function cam:update/versions/milestone3.0
execute unless score $version CAM_univar matches 31.. run function cam:update/versions/m3.0_fix1
execute unless score $version CAM_univar matches 32.. run scoreboard players set $version CAM_univar 32
execute unless score $version CAM_univar matches 34.. run function cam:update/versions/0.2.3
execute unless score $version CAM_univar matches 35.. run function cam:update/versions/0.2.4
execute unless score $version CAM_univar matches 42.. run scoreboard players set $version CAM_univar 42
execute unless score $version CAM_univar matches 43.. run function cam:update/versions/0.3.0
execute unless score $version CAM_univar matches 45.. run function cam:update/versions/0.3.1
execute unless score $version CAM_univar matches 46.. run function cam:update/versions/0.3.1_fix1