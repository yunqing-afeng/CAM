loot spawn ~ ~ ~ loot cam:villager/hunter/sell
execute as @e[type=minecraft:item,distance=..1,limit=1] run function cam:villager/fletcher/hunter/itemdeal
execute store result score @s CAM_hunter_rep run data modify storage cam:villager hunter.reputation set from entity @e[limit=1,tag=CAM_temp1] Item.id

scoreboard players operation @s CAM_hunter_exp = @e[limit=1,tag=CAM_temp1] CAM_hunter_exp
execute if score @s CAM_hunter_rep matches 1 run function cam:villager/fletcher/hunter/sell_sub

kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]
execute if score @s CAM_hunter_rep matches 0 run function cam:villager/fletcher/hunter/deals