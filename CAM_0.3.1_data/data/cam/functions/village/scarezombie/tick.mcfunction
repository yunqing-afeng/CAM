execute as @e[type=minecraft:armor_stand,tag=CAM_scarezombie] at @s unless block ~ ~-1 ~ minecraft:hay_block run kill @s
execute as @e[type=minecraft:armor_stand,tag=CAM_scarezombie] at @s align xyz if block ~ ~-1 ~ minecraft:hay_block run function cam:village/scarezombie/summon 
execute as @e[type=minecraft:armor_stand,tag=scare_zombie] at @s run function cam:village/scarezombie/function
execute as @e[type=minecraft:armor_stand,tag=scare_zombie] at @s if entity @e[type=zombie,distance=..1] run function cam:village/scarezombie/kill
function cam:village/scarezombie/clear