damage @s 1 cam:backbite
scoreboard players remove @s CAM_back_amount 2
execute if score @s CAM_back_amount matches 2.. run function cam:magic/new_enchants/backbite/function