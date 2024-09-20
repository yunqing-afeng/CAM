playsound minecraft:block.glass.break player @a ~ ~ ~ 2 2

execute at @s anchored eyes positioned ^ ^ ^2.5 as @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] at @s if score #particle CAM_module matches 1 run particle minecraft:item minecraft:glass ~ ~ ~ .5 1 .5 0 30