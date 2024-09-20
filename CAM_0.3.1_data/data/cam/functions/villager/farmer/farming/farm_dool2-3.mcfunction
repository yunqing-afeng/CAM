execute store result score @s CAM_farmpos3 run clone ~-2 ~-1 ~-2 ~ ~-1 ~ ~-2 255 ~-2 filtered farmland force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3
execute store result score @s CAM_farmpos3 run clone ~2 ~-1 ~2 ~ ~-1 ~ ~ 319 ~ filtered farmland force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3
execute store result score @s CAM_farmpos3 run clone ~-2 ~-1 ~2 ~ ~-1 ~ ~-2 255 ~ filtered farmland force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3
execute store result score @s CAM_farmpos3 run clone ~2 ~-1 ~-2 ~ ~-1 ~ ~ 319 ~-2 filtered farmland force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3

execute store result score @s CAM_farmpos3 run clone ~-2 ~-1 ~-2 ~ ~-1 ~ ~-2 255 ~-2 filtered farmland[moisture=7] force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3
execute store result score @s CAM_farmpos3 run clone ~2 ~-1 ~2 ~ ~-1 ~ ~ 319 ~ filtered farmland[moisture=7] force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3
execute store result score @s CAM_farmpos3 run clone ~-2 ~-1 ~2 ~ ~-1 ~ ~-2 255 ~ filtered farmland[moisture=7] force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3
execute store result score @s CAM_farmpos3 run clone ~2 ~-1 ~-2 ~ ~-1 ~ ~ 319 ~-2 filtered farmland[moisture=7] force
execute if score @s CAM_farmpos3 matches 2.. run scoreboard players add @s CAM_farmpossible 1
execute if score @s CAM_farmpos3 matches 5.. run scoreboard players add @s CAM_farmpossible 3

execute store result score @s CAM_farmpos3 run clone ~-4 ~-1 ~-4 ~4 ~-1 ~4 ~-4 255 ~-4 filtered water force
execute if score @s CAM_farmpos3 matches 28.. run scoreboard players add @s CAM_farmpossible 6
execute if score @s CAM_farmpos3 matches 52.. run scoreboard players add @s CAM_farmpossible 12