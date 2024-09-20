#基础
execute as @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s CAM_lantern_v
execute as @s run scoreboard players add @s CAM_lantern_time 1

execute as @s if score @s CAM_lantern_time matches 2000.. at @s run playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1
execute as @s if score @s CAM_lantern_time matches 2000.. run kill @s
execute as @s at @s positioned ~ ~0.5 ~ run particle minecraft:flame ~ ~ ~


#孔明灯的破坏
scoreboard players set #success CAM_lantern_code 0
tag @s add CAM_lan_temp2
execute as @e[type=slime,tag=CAM_lantern_sub,distance=..4,limit=1,sort=nearest] store result score #success CAM_lantern_code if score @s CAM_lantern_code = @e[limit=1,type=armor_stand,tag=CAM_lan_temp2,sort=nearest] CAM_lantern_code
execute unless score #success CAM_lantern_code matches 1.. run function cam:cm/palace_lantern/kongmin_lantern_func__
tag @s remove CAM_lan_temp2