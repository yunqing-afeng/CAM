execute at @s anchored eyes positioned ^ ^ ^2.5 as @e[distance=..2.5,sort=nearest,limit= 1,nbt={HurtTime:10s}] at @s run function cam:magic/new_enchants/bloodrage/function
damage @s 4 magic by @s
execute if score #particle CAM_module matches 1 run particle minecraft:dust 0.706 0 0 0.6 ~ ~1 ~ .5 .5 .5 1 30 normal
execute if score #particle CAM_module matches 1 run particle minecraft:dust 1 0 0 0.4 ~ ~1 ~ .5 .5 .5 1.3 15 normal