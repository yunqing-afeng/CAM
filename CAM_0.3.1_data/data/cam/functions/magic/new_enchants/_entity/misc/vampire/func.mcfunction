scoreboard players operation @s CAM_vampire_amt = @s CAM_htracer
scoreboard players operation #temp CAM_vampire_amt = @a[tag=CAM_vavic,sort=nearest,limit=1] CAM_htracer_delta
scoreboard players operation #temp CAM_vampire_amt /= #constant_2 CAM_vampire_amt
scoreboard players operation @s CAM_vampire_amt -= #temp CAM_vampire_amt
execute store result entity @s Health float 1 run scoreboard players get @s CAM_vampire_amt

execute if score #particle CAM_module matches 1 run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal