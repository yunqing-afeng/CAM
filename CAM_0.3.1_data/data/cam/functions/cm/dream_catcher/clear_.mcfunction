execute store result score @s CAM_catcher_put run data get entity @s Item.tag.CustomModelData
scoreboard players remove @s CAM_catcher_put 1
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s CAM_catcher_put