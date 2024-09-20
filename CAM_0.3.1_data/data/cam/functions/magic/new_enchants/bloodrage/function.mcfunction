damage @s 12 cam:bloodrage by @a[tag=CAM_brtemp,limit=1,sort=nearest]
execute if score #particle CAM_module matches 1 run particle minecraft:instant_effect ~ ~1.5 ~ 0.25 0.25 0.25 1 10 normal
execute if score #particle CAM_module matches 1 run particle dust 0.639 0 0 255 ~ ~1 ~ .2 .2 .2 2 10 