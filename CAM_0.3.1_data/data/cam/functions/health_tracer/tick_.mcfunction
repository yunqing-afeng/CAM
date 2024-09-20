execute store result score @s CAM_htracer run data get entity @s Health
scoreboard players operation @s CAM_htracer_delta = @s CAM_htracer
scoreboard players operation @s CAM_htracer_delta -= @s CAM_htracer_lt
