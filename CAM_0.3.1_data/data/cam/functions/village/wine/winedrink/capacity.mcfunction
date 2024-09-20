execute if score @s CAM_cap_undrunk matches 2000.. run scoreboard players add @s CAM_capacity 1
execute if score @s CAM_cap_litdrunk matches 1500.. run scoreboard players add @s CAM_capacity 1
execute if score @s CAM_cap_drunk matches 5000.. run scoreboard players add @s CAM_capacity 1

execute if score @s CAM_cap_undrunk matches 2000.. run scoreboard players remove @s CAM_cap_undrunk 2000
execute if score @s CAM_cap_litdrunk matches 1500.. run scoreboard players remove @s CAM_cap_litdrunk 1500
execute if score @s CAM_cap_drunk matches 5000.. run scoreboard players remove @s CAM_cap_drunk 5000