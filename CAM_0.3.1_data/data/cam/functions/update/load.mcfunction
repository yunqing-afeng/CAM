#需要修改：tick，load，update（主要用于模块菜单），lay/welcome
scoreboard objectives add CAM_version dummy
execute if score $version CAM_univar matches 47.. run function cam:update/warning