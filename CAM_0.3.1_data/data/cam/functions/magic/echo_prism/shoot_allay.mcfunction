execute if entity @e[type=warden,distance=..32,tag=!CAM_prism_clear] facing entity @e[type=warden,distance=..30,sort=random,limit=1,tag=!CAM_prism_clear] feet anchored feet positioned ^ ^ ^2 run function cam:magic/echo_prism/ray_allay
execute unless entity @e[type=warden,distance=..32,tag=!CAM_prism_clear] facing entity @e[type=player,distance=..30,sort=nearest,limit=1] feet anchored feet positioned ^ ^ ^2 run function cam:magic/echo_prism/ray_allay


execute as @e[type=area_effect_cloud,distance=..32,tag=CAM_prism_effect] at @s run function cam:magic/echo_prism/function
playsound minecraft:block.amethyst_cluster.step neutral @a ~ ~ ~ 1 2
scoreboard players set @s CAM_prism_timer 800