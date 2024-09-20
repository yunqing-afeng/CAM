#初始化
data modify storage cam:warden protosuspect set value []
data modify storage cam:warden finalsuspect set value []
scoreboard players set #temp CAM_wardenlist 0


#储存愤怒列表
data modify storage cam:warden protosuspect set from entity @s anger.suspects
#过滤器模块
execute store result score #temp CAM_wardenlist if data storage cam:warden protosuspect[]
execute if score #temp CAM_wardenlist matches 1.. run function cam:monster/warden/allay/filter
#返回
data modify entity @s anger.suspects set from storage cam:warden finalsuspect
