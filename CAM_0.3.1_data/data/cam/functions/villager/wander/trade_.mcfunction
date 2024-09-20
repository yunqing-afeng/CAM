#初始化

data modify storage cam:villager wander_test set value []
#生成物品
loot spawn ~ ~ ~ loot cam:villager/wander/normal
tag @e[limit=1,sort=nearest,nbt={Item:{tag:{CAM_wander:1b}}}] add CAM_wan_item
data modify entity @e[limit=1,sort=nearest,tag=CAM_wan_item] PickupDelay set value 32767
data modify entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Age set value -32768
#检测重复
data modify storage cam:villager wander_test set from storage cam:villager wander_recent
execute store result score @s CAM_wan_count if data storage cam:villager wander_recent[]
execute store result score @s CAM_wan_test run data modify storage cam:villager wander_test[] merge from entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item
execute if score @s CAM_wan_count = @s CAM_wan_test run function cam:villager/wander/trade___
execute unless score @s CAM_wan_count = @s CAM_wan_test if score @s CAM_wan_count matches 0 run function cam:villager/wander/trade___
kill @e[tag=CAM_wan_item]


execute if score @s CAM_wan_tcount matches 1.. run function cam:villager/wander/trade_