damage @s 1 cam:backbite
scoreboard players remove @s CAM_backbiteD 20
execute if score @s CAM_backbiteD matches 20.. run function cam:magic/new_enchants/backbite/function