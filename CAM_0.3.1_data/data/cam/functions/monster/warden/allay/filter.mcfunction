#过滤模块
data modify storage cam:warden filter set value [I;0,0,0,0]
scoreboard players set #temp CAM_wfilter 0
#储存
data modify storage cam:warden filter set from storage cam:warden protosuspect[0].uuid
#检测是否有悦灵
execute as @e[type=allay,distance=..24] run function cam:monster/warden/allay/detect
#如无，将该项储存至输出
execute unless score #temp CAM_wfilter matches 1.. run data modify storage cam:warden finalsuspect append from storage cam:warden protosuspect[0]
#清除原列表首项
data remove storage cam:warden protosuspect[0]
#递归
execute store result score #temp CAM_wardenlist if data storage cam:warden protosuspect[]
execute if score #temp CAM_wardenlist matches 1.. run function cam:monster/warden/allay/filter