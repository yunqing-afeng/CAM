execute as @e[type=allay] if score @s CAM_prism_timer matches 1.. run scoreboard players remove @s CAM_prism_timer 1
execute as @a if score @s CAM_prism_timer matches 0 at @s run function cam:magic/echo_prism/ready
execute as @a if score @s CAM_prism_timer matches 0.. run scoreboard players remove @s CAM_prism_timer 1

execute as @a if score @s CAM_dark_timer matches 1.. run scoreboard players remove @s CAM_dark_timer 1
execute as @e[type=warden] if score @s CAM_dark_timer matches 1.. run scoreboard players remove @s CAM_dark_timer 1

execute as @a[tag=CAM_dark_resistance] run effect clear @s minecraft:darkness
execute as @a[tag=CAM_dark_resistance] at @s run function cam:magic/echo_prism/particle

execute as @a if score @s CAM_dark_timer matches ..0 run tag @s remove CAM_dark_resistance
execute as @e[type=warden] if score @s CAM_dark_timer matches ..0 run tag @s remove CAM_prism_clear

execute as @a store result score @s CAM_shard_count run clear @s echo_shard 0

execute as @a[predicate=cam:misc/echo_prism/hand,scores={CAM_prism_use=1..,CAM_prism_timer=..0,CAM_shard_count=1..},gamemode=!creative] at @s run function cam:magic/echo_prism/shoot_player
execute as @a[predicate=cam:misc/echo_prism/hand,scores={CAM_prism_use=1..,CAM_prism_timer=..0},gamemode=creative] at @s run function cam:magic/echo_prism/shoot_player
execute as @e[type=allay,predicate=cam:misc/echo_prism/allay,scores={CAM_prism_timer=..0}] at @s run function cam:magic/echo_prism/shoot_allay

scoreboard players set @a CAM_prism_use 0

execute as @e[type=allay] unless score @s CAM_prism_timer matches -2147483648..2147483647 run scoreboard players set @s CAM_prism_timer 0