scoreboard objectives add CAM_lantern_type dummy
scoreboard objectives add CAM_lantern_v dummy
scoreboard objectives add CAM_lantern_time dummy
scoreboard objectives add CAM_lantern_code dummy
scoreboard players set #CAM_constant1 CAM_lantern_type 4

execute unless score # CAM_lantern_code matches -2147483648..2147483647 run scoreboard players set # CAM_lantern_code -2147483648