#开头基础处理：物品处理 初始化变量
kill @e[predicate=cam:misc/bg]
execute store result score @a CAM_diserror run clear @a minecraft:firework_star{CAM_dis_bg:1b} 0
execute store result score @a CAM_diserror2 run clear @a #uin:tech/all{CAM_input:1b} 0
execute as @a run scoreboard players operation @s CAM_diserror += @s CAM_diserror2
execute store result score @a CAM_dis_set run clear @a #uin:tech/all{cam_display:1b} 0
execute store result score @a CAM_dis_glass run clear @a #uin:tech/all{cam_glass:1b} 0


#放置与破坏处理
execute as @e[type=minecraft:armor_stand,tag=cam_item_displayer] at @s run function cam:machine/item_displayer/tick_1

#功能
execute as @e[type=minecraft:armor_stand,tag=cam_item_displayer,tag=CAM_display_enable] at @s if entity @a[distance=..20] run function cam:machine/item_displayer/function
execute as @e[type=item,tag=cam_dis_item] at @s run function cam:machine/item_displayer/tick_2

#结尾基础处理：物品处理 初始化变量
clear @a firework_star{CAM_dis_bg:1b}
scoreboard players reset @a CAM_dis_set
scoreboard players reset #2 CAM_dis_number
scoreboard players reset #3 CAM_dis_number
scoreboard players reset #4 CAM_dis_number
scoreboard players reset #5 CAM_dis_number
scoreboard players reset #6 CAM_dis_number
