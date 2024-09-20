tag @s add CAM_shoot_temp

summon armor_stand ~ ~-1 ~ {Silent:1b,Invisible:1b,Marker:1b,Tags:["CAM_echo_shooter","CAM_echo_shooter_temp"],PortalCooldown:20}
execute as @e[tag=CAM_echo_shooter_temp] run data modify entity @s Rotation set from entity @a[tag=CAM_echo_shoot,limit=1,sort=nearest] Rotation
execute as @e[tag=CAM_echo_shooter_temp] run scoreboard players operation @s AE_player_id = @a[tag=CAM_echo_shoot,limit=1] AE_player_id
execute as @e[tag=CAM_echo_shooter_temp] run tag @s remove CAM_echo_shooter_temp

tag @s remove CAM_shoot_temp
kill @s