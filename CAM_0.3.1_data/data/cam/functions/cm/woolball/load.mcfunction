scoreboard objectives add CAM_woolball used:snowball
scoreboard objectives add CAM_woolball_num dummy
execute unless score # CAM_woolball_num matches -2147483648..2147483647 run scoreboard players set # CAM_woolball_num -2147483648

data modify storage cam:woolball Motion set value [0.0d,0.0d,0.0d]