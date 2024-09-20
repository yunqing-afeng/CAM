damage @a[tag=CAM_brvic,sort=nearest,limit=1] 12 cam:bloodrage by @s
execute as @a[tag=CAM_brvic,sort=nearest,limit=1] at @s run function cam:magic/new_enchants/bloodrage/function
damage @s 4 cam:bloodrage by @s
execute if score #particle CAM_module matches 1 run particle minecraft:dust 0.706 0 0 0.6 ~ ~1 ~ .5 .5 .5 1 30 normal
execute if score #particle CAM_module matches 1 run particle minecraft:dust 1 0 0 0.4 ~ ~1 ~ .5 .5 .5 1.3 15 normal