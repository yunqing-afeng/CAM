scoreboard players operation #3 CAM_dis_number = @s CAM_dis_number
execute as @e[type=item,tag=cam_dis_item] if score @s CAM_dis_number = #3 CAM_dis_number run scoreboard players set #4 CAM_dis_number 1
execute unless score #4 CAM_dis_number matches 1 run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:stone"},CustomNameVisible:0b,PickupDelay:32767,Age:-32768,Tags:["cam_dis_item","cam_dis_temp"]}
execute as @e[type=item,tag=cam_dis_temp] run scoreboard players operation @s CAM_dis_number = #3 CAM_dis_number
execute as @e[type=item,tag=cam_dis_temp] run tag @s remove cam_dis_temp

