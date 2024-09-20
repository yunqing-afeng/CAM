particle sonic_boom ~ ~ ~ 0 0 0 0 0 normal
execute as @e[type=#uin:tech/mobs,distance=..3,tag=!CAM_shootown_temp] run tag @s add CAM_sonic_boom
execute if entity @s[distance=..25] unless entity @e[type=minecraft:area_effect_cloud,distance=..6,tag=CAM_prism_effect] positioned ^ ^ ^1 anchored feet run function cam:magic/weapon/echo_emitter/ray
