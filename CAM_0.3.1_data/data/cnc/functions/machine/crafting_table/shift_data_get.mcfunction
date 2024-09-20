execute as @a[tag=CNC_shiftcheck,limit=1,sort=nearest] run scoreboard players set @s CAM_item_trigger 0
execute as @a[tag=CNC_shiftcheck,limit=1,sort=nearest] store result score @s CNC_item_trigger run clear @s #uin:tech/x_1{Output:1b} 0
execute if score @a[tag=CNC_shiftcheck,limit=1,sort=nearest] CNC_item_trigger matches 1.. run scoreboard players set @s CNC_item_trigger 1
execute as @a[tag=CNC_shiftcheck,limit=1] store result score @s CNC_item_trigger run clear @s #uin:tech/x_16{Output:1b} 0
execute if score @a[tag=CNC_shiftcheck,limit=1,sort=nearest] CNC_item_trigger matches 1.. run scoreboard players set @s CNC_item_trigger 16
execute if score @a[tag=CNC_shiftcheck,limit=1,sort=nearest] CNC_item_trigger matches ..0 run scoreboard players set @s CNC_item_trigger 64

