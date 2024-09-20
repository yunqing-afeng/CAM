execute if score #particle CAM_module matches 1 run particle minecraft:dust 0 0 0 1 ~ ~ ~ .2 .2 .2 0 20 normal
scoreboard players operation @s CAM_back_amount = @a[tag=CAM_bbvic,sort=nearest,limit=1] CAM_htracer_delta
function cam:magic/new_enchants/_entity/misc/backbite/function