execute if score @s CAM_farmpos2 matches 0 run scoreboard players set @s CAM_farmposmulti 0
execute if score @s CAM_farmpos2 matches 1 run scoreboard players set @s CAM_farmposmulti 10
execute if score @s CAM_farmpos2 matches 2..3 run scoreboard players set @s CAM_farmposmulti 50
execute if score @s CAM_farmpos2 matches 4 run scoreboard players set @s CAM_farmposmulti 100
scoreboard players reset @s CAM_farmpos2