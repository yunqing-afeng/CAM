#开头基础处理：物品处理 初始化变量
kill @e[predicate=cam:misc/bg]
execute store result score @a CAM_sacerror run clear @a minecraft:firework_star{CAM_bg:1b} 0
execute store result score @a CAM_sacerror2 run clear @a #uin:tech/all{CAM_input:1b} 0
execute as @a run scoreboard players operation @s CAM_sacerror += @s CAM_sacerror2
execute store result score @a CAM_sac_ok run clear @a #uin:tech/all{CAM_sac_ok:1b} 0
execute store result score @a CAM_sac_no run clear @a #uin:tech/all{CAM_sac_no:1b} 0

#放置与破坏处理
execute as @e[type=minecraft:armor_stand,tag=cam_sacrificing] at @s run function cam:machine/sacrificing_table/tick_1

#功能
execute as @e[type=minecraft:armor_stand,tag=cam_sacrificing,tag=CAM_sacrifice_enable] at @s if entity @a[distance=..20] run function cam:machine/sacrificing_table/function
execute as @e[type=item,tag=cam_sac_item] at @s run function cam:machine/sacrificing_table/tick_2

#结尾基础处理：物品处理 初始化变量
execute as @e[type=item,predicate=cam:sacrifice/item] run data remove entity @s Item.tag.CAM_input
clear @a firework_star{CAM_bg:1b}
scoreboard players reset @a CAM_sac_ok
scoreboard players reset @a CAM_sac_no
scoreboard players reset @e CAM_sac_lore_re
scoreboard players reset #2 CAM_sac_number
scoreboard players reset #3 CAM_sac_number
scoreboard players reset #4 CAM_sac_number
scoreboard players reset #5 CAM_sac_number
scoreboard players reset #6 CAM_sac_number
scoreboard players set @e CAM_sac_failure 0