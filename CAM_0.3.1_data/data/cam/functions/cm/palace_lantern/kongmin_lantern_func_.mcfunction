scoreboard players set #success CAM_lantern_code 0
tag @s add CAM_lan_temp
execute store success score #success CAM_lantern_code as @e[type=armor_stand,tag=cam_kongmin_lantern,distance=..4] if score @s CAM_lantern_code = @e[limit=1,type=slime,tag=CAM_lan_temp,sort=nearest] CAM_lantern_code run tp @e[limit=1,type=slime,tag=CAM_lan_temp,sort=nearest] @s
execute unless score #success CAM_lantern_code matches 1.. run kill @s
tag @s remove CAM_lan_temp