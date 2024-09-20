scoreboard objectives add CAM_diserror dummy
scoreboard objectives add CAM_diserror2 dummy
scoreboard objectives add CAM_dis_set dummy
scoreboard objectives add CAM_dis_glass dummy
scoreboard objectives add CAM_dis_status dummy


scoreboard objectives add CAM_dis_number dummy
execute unless score # CAM_dis_number matches -2147483648..2147483647 run scoreboard players set # CAM_dis_number -2147483648
